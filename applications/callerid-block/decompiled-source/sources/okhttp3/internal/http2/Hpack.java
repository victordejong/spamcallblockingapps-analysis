package okhttp3.internal.http2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Hpack.class */
public final class Hpack {
    static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX = nameToFirstIndex();
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    static final Header[] STATIC_HEADER_TABLE;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Hpack$Reader.class */
    static final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final BufferedSource source;

        Reader(int i, int i2, Source source) {
            this.headerList = new ArrayList();
            Header[] headerArr = new Header[8];
            this.dynamicTable = headerArr;
            this.nextHeaderIndex = headerArr.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i2;
            this.source = Okio.buffer(source);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Reader(int i, Source source) {
            this(i, i, source);
        }

        private void adjustDynamicTableByteCount() {
            int i = this.maxDynamicTableByteCount;
            int i2 = this.dynamicTableByteCount;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                clearDynamicTable();
            } else {
                evictToRecoverBytes(i2 - i);
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int dynamicTableIndex(int i) {
            return this.nextHeaderIndex + 1 + i;
        }

        private int evictToRecoverBytes(int i) {
            int i2;
            int i3 = 0;
            int i4 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length - 1;
                int i5 = i;
                while (true) {
                    i2 = this.nextHeaderIndex;
                    if (length < i2 || i5 <= 0) {
                        break;
                    }
                    Header[] headerArr = this.dynamicTable;
                    i5 -= headerArr[length].hpackSize;
                    this.dynamicTableByteCount -= headerArr[length].hpackSize;
                    this.headerCount--;
                    i4++;
                    length--;
                }
                Header[] headerArr2 = this.dynamicTable;
                System.arraycopy(headerArr2, i2 + 1, headerArr2, i2 + 1 + i4, this.headerCount);
                this.nextHeaderIndex += i4;
                i3 = i4;
            }
            return i3;
        }

        private ByteString getName(int i) {
            Header header;
            if (isStaticHeader(i)) {
                header = Hpack.STATIC_HEADER_TABLE[i];
            } else {
                int dynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
                if (dynamicTableIndex >= 0) {
                    Header[] headerArr = this.dynamicTable;
                    if (dynamicTableIndex < headerArr.length) {
                        header = headerArr[dynamicTableIndex];
                    }
                }
                throw new IOException("Header index too large " + (i + 1));
            }
            return header.name;
        }

        private void insertIntoDynamicTable(int i, Header header) {
            this.headerList.add(header);
            int i2 = header.hpackSize;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.dynamicTable[dynamicTableIndex(i)].hpackSize;
            }
            int i4 = this.maxDynamicTableByteCount;
            if (i3 > i4) {
                clearDynamicTable();
                return;
            }
            int evictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i3) - i4);
            if (i == -1) {
                int i5 = this.headerCount;
                Header[] headerArr = this.dynamicTable;
                if (i5 + 1 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i6 = this.nextHeaderIndex;
                this.nextHeaderIndex = i6 - 1;
                this.dynamicTable[i6] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[i + dynamicTableIndex(i) + evictToRecoverBytes] = header;
            }
            this.dynamicTableByteCount += i3;
        }

        private boolean isStaticHeader(int i) {
            boolean z = true;
            if (i < 0 || i > Hpack.STATIC_HEADER_TABLE.length - 1) {
                z = false;
            }
            return z;
        }

        private int readByte() {
            return this.source.readByte() & 255;
        }

        private void readIndexedHeader(int i) {
            if (isStaticHeader(i)) {
                this.headerList.add(Hpack.STATIC_HEADER_TABLE[i]);
                return;
            }
            int dynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
            if (dynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (dynamicTableIndex < headerArr.length) {
                    this.headerList.add(headerArr[dynamicTableIndex]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) {
            insertIntoDynamicTable(-1, new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() {
            insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) {
            this.headerList.add(new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() {
            this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        public List<Header> getAndResetHeaderList() {
            ArrayList arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        ByteString readByteString() {
            int readByte = readByte();
            boolean z = (readByte & 128) == 128;
            int readInt = readInt(readByte, Hpack.PREFIX_7_BITS);
            return z ? ByteString.of(Huffman.get().decode(this.source.readByteArray(readInt))) : this.source.readByteString(readInt);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void readHeaders() {
            while (!this.source.exhausted()) {
                int readByte = this.source.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    readIndexedHeader(readInt(readByte, Hpack.PREFIX_7_BITS) - 1);
                } else if (readByte == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((readByte & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int readInt = readInt(readByte, 31);
                    this.maxDynamicTableByteCount = readInt;
                    if (readInt < 0 || readInt > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (readByte == 16 || readByte == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(readByte, 15) - 1);
                }
            }
        }

        int readInt(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = readByte();
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & Hpack.PREFIX_7_BITS) << i4;
                i4 += 7;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Hpack$Writer.class */
    static final class Writer {
        private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
        private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
        Header[] dynamicTable;
        int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        int headerCount;
        int headerTableSizeSetting;
        int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final Buffer out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        Writer(int i, boolean z, Buffer buffer) {
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            Header[] headerArr = new Header[8];
            this.dynamicTable = headerArr;
            this.nextHeaderIndex = headerArr.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i;
            this.useCompression = z;
            this.out = buffer;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Writer(Buffer buffer) {
            this(SETTINGS_HEADER_TABLE_SIZE, true, buffer);
        }

        private void adjustDynamicTableByteCount() {
            int i = this.maxDynamicTableByteCount;
            int i2 = this.dynamicTableByteCount;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                clearDynamicTable();
            } else {
                evictToRecoverBytes(i2 - i);
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2;
            int i3 = 0;
            int i4 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length - 1;
                int i5 = i;
                while (true) {
                    i2 = this.nextHeaderIndex;
                    if (length < i2 || i5 <= 0) {
                        break;
                    }
                    Header[] headerArr = this.dynamicTable;
                    i5 -= headerArr[length].hpackSize;
                    this.dynamicTableByteCount -= headerArr[length].hpackSize;
                    this.headerCount--;
                    i4++;
                    length--;
                }
                Header[] headerArr2 = this.dynamicTable;
                System.arraycopy(headerArr2, i2 + 1, headerArr2, i2 + 1 + i4, this.headerCount);
                Header[] headerArr3 = this.dynamicTable;
                int i6 = this.nextHeaderIndex;
                Arrays.fill(headerArr3, i6 + 1, i6 + 1 + i4, (Object) null);
                this.nextHeaderIndex += i4;
                i3 = i4;
            }
            return i3;
        }

        private void insertIntoDynamicTable(Header header) {
            int i = header.hpackSize;
            int i2 = this.maxDynamicTableByteCount;
            if (i > i2) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i) - i2);
            int i3 = this.headerCount;
            Header[] headerArr = this.dynamicTable;
            if (i3 + 1 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i4 = this.nextHeaderIndex;
            this.nextHeaderIndex = i4 - 1;
            this.dynamicTable[i4] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setHeaderTableSizeSetting(int i) {
            this.headerTableSizeSetting = i;
            int min = Math.min(i, (int) SETTINGS_HEADER_TABLE_SIZE_LIMIT);
            int i2 = this.maxDynamicTableByteCount;
            if (i2 != min) {
                if (min < i2) {
                    this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, min);
                }
                this.emitDynamicTableSizeUpdate = true;
                this.maxDynamicTableByteCount = min;
                adjustDynamicTableByteCount();
            }
        }

        void writeByteString(ByteString byteString) {
            int i;
            int i2;
            if (!this.useCompression || Huffman.get().encodedLength(byteString) >= byteString.size()) {
                i2 = byteString.size();
                i = 0;
            } else {
                BufferedSink buffer = new Buffer();
                Huffman.get().encode(byteString, buffer);
                byteString = buffer.readByteString();
                i2 = byteString.size();
                i = 128;
            }
            writeInt(i2, Hpack.PREFIX_7_BITS, i);
            this.out.write(byteString);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void writeHeaders(List<Header> list) {
            int i;
            int i2;
            if (this.emitDynamicTableSizeUpdate) {
                int i3 = this.smallestHeaderTableSizeSetting;
                if (i3 < this.maxDynamicTableByteCount) {
                    writeInt(i3, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                Header header = list.get(i4);
                ByteString asciiLowercase = header.name.toAsciiLowercase();
                ByteString byteString = header.value;
                Integer num = Hpack.NAME_TO_FIRST_INDEX.get(asciiLowercase);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        Header[] headerArr = Hpack.STATIC_HEADER_TABLE;
                        if (Util.equal(headerArr[i - 1].value, byteString)) {
                            i2 = i;
                        } else if (Util.equal(headerArr[i].value, byteString)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                int i5 = i;
                int i6 = i2;
                if (i == -1) {
                    int i7 = this.nextHeaderIndex + 1;
                    int length = this.dynamicTable.length;
                    while (true) {
                        i5 = i;
                        i6 = i2;
                        if (i7 >= length) {
                            break;
                        }
                        i2 = i2;
                        if (Util.equal(this.dynamicTable[i7].name, asciiLowercase)) {
                            if (Util.equal(this.dynamicTable[i7].value, byteString)) {
                                i5 = Hpack.STATIC_HEADER_TABLE.length + (i7 - this.nextHeaderIndex);
                                i6 = i2;
                                break;
                            }
                            i2 = i2;
                            if (i2 == -1) {
                                i2 = (i7 - this.nextHeaderIndex) + Hpack.STATIC_HEADER_TABLE.length;
                            }
                        }
                        i7++;
                    }
                }
                if (i5 != -1) {
                    writeInt(i5, Hpack.PREFIX_7_BITS, 128);
                } else {
                    if (i6 == -1) {
                        this.out.writeByte(64);
                        writeByteString(asciiLowercase);
                    } else if (!asciiLowercase.startsWith(Header.PSEUDO_PREFIX) || Header.TARGET_AUTHORITY.equals(asciiLowercase)) {
                        writeInt(i6, 63, 64);
                    } else {
                        writeInt(i6, 15, 0);
                        writeByteString(byteString);
                    }
                    writeByteString(byteString);
                    insertIntoDynamicTable(header);
                }
            }
        }

        void writeInt(int i, int i2, int i3) {
            int i4;
            Buffer buffer;
            if (i < i2) {
                buffer = this.out;
                i4 = i | i3;
            } else {
                this.out.writeByte(i3 | i2);
                i4 = i - i2;
                while (i4 >= 128) {
                    this.out.writeByte(128 | (i4 & Hpack.PREFIX_7_BITS));
                    i4 >>>= 7;
                }
                buffer = this.out;
            }
            buffer.writeByte(i4);
        }
    }

    static {
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        ByteString byteString = Header.TARGET_METHOD;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, "POST");
        ByteString byteString2 = Header.TARGET_PATH;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.TARGET_SCHEME;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
    }

    private Hpack() {
    }

    static ByteString checkLowercase(ByteString byteString) {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map<ByteString, Integer> nameToFirstIndex() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        int i = 0;
        while (true) {
            Header[] headerArr = STATIC_HEADER_TABLE;
            if (i >= headerArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(headerArr[i].name)) {
                linkedHashMap.put(headerArr[i].name, Integer.valueOf(i));
            }
            i++;
        }
    }
}
