package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.List;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
import org.apache.avro.generic.GenericData;
import org.apache.avro.io.DatumReader;
import org.apache.avro.io.DatumWriter;
import org.apache.avro.io.Encoder;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.message.BinaryMessageDecoder;
import org.apache.avro.message.BinaryMessageEncoder;
import org.apache.avro.specific.SpecificData;
import org.apache.avro.specific.SpecificRecord;
import org.apache.avro.specific.SpecificRecordBase;
import org.apache.avro.specific.SpecificRecordBuilderBase;
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.i4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/i4.class */
public class C17589i4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49523d;

    /* renamed from: e */
    public static SpecificData f49524e;

    /* renamed from: f */
    public static final DatumWriter<C17589i4> f49525f;

    /* renamed from: g */
    public static final DatumReader<C17589i4> f49526g;
    @Deprecated

    /* renamed from: a */
    public List<CharSequence> f49527a;
    @Deprecated

    /* renamed from: b */
    public List<CharSequence> f49528b;
    @Deprecated

    /* renamed from: c */
    public List<CharSequence> f49529c;

    /* renamed from: e.a.l5.a.i4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/i4$b.class */
    public static class C17591b extends SpecificRecordBuilderBase<C17589i4> implements RecordBuilder<C17589i4> {

        /* renamed from: a */
        public List<CharSequence> f49530a;

        /* renamed from: b */
        public List<CharSequence> f49531b;

        /* renamed from: c */
        public List<CharSequence> f49532c;

        public C17591b(C17590a c17590a) {
            super(C17589i4.f49523d);
        }

        /* renamed from: a */
        public C17589i4 build() {
            try {
                C17589i4 c17589i4 = new C17589i4();
                c17589i4.f49527a = fieldSetFlags()[0] ? this.f49530a : (List) defaultValue(fields()[0]);
                c17589i4.f49528b = fieldSetFlags()[1] ? this.f49531b : (List) defaultValue(fields()[1]);
                c17589i4.f49529c = fieldSetFlags()[2] ? this.f49532c : (List) defaultValue(fields()[2]);
                return c17589i4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17591b m15936b(List<CharSequence> list) {
            validate(fields()[1], list);
            this.f49531b = list;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: c */
        public C17591b m15935c(List<CharSequence> list) {
            validate(fields()[0], list);
            this.f49530a = list;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: d */
        public C17591b m15934d(List<CharSequence> list) {
            validate(fields()[2], list);
            this.f49532c = list;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"TagsServed\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}");
        f49523d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49524e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49524e, m8613i0);
        f49525f = f49524e.createDatumWriter(m8613i0);
        f49526g = f49524e.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17591b m15938a() {
        return new C17591b(null);
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v142, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v199, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v220, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        int i = 1;
        Utf8 utf8 = null;
        Utf8 utf82 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() == 1) {
                char readArrayStart = resolvingDecoder.readArrayStart();
                List<CharSequence> list = this.f49527a;
                if (list == null) {
                    list = new GenericData.Array<>(readArrayStart, (Schema) C22128a.m8706H1(f49523d, "serverTagsReceived", 1));
                    this.f49527a = list;
                } else {
                    list.clear();
                }
                GenericData.Array array = list instanceof GenericData.Array ? list : null;
                while (true) {
                    i = 1;
                    utf82 = utf8;
                    if (0 >= readArrayStart) {
                        break;
                    }
                    Utf8 utf83 = utf8;
                    while (readArrayStart != 0) {
                        Utf8 utf84 = array != null ? (CharSequence) array.peek() : utf83;
                        readArrayStart = C22128a.m8594n(resolvingDecoder, utf84 instanceof Utf8 ? utf84 : utf83, list, readArrayStart, 1L);
                    }
                    readArrayStart = resolvingDecoder.arrayNext();
                    utf8 = utf83;
                }
            } else {
                resolvingDecoder.readNull();
                this.f49527a = null;
            }
            if (resolvingDecoder.readIndex() != i) {
                resolvingDecoder.readNull();
                this.f49528b = utf82;
            } else {
                char readArrayStart2 = resolvingDecoder.readArrayStart();
                Utf8 utf85 = this.f49528b;
                if (utf85 == null) {
                    utf85 = new GenericData.Array(readArrayStart2, (Schema) C22128a.m8706H1(f49523d, "manualTagsAvailable", i));
                    this.f49528b = utf85;
                } else {
                    utf85.clear();
                }
                Utf8 utf86 = utf85 instanceof GenericData.Array ? (GenericData.Array) utf85 : utf82;
                while (0 < readArrayStart2) {
                    while (readArrayStart2 != 0) {
                        Utf8 utf87 = utf86 != null ? (CharSequence) utf86.peek() : utf82;
                        readArrayStart2 = C22128a.m8594n(resolvingDecoder, utf87 instanceof Utf8 ? utf87 : utf82, utf85, readArrayStart2, 1L);
                    }
                    readArrayStart2 = resolvingDecoder.arrayNext();
                }
            }
            if (resolvingDecoder.readIndex() != i) {
                resolvingDecoder.readNull();
                this.f49529c = utf82;
                return;
            }
            char readArrayStart3 = resolvingDecoder.readArrayStart();
            List<CharSequence> list2 = this.f49529c;
            if (list2 == null) {
                list2 = new GenericData.Array<>(readArrayStart3, (Schema) C22128a.m8706H1(f49523d, "shownTags", i));
                this.f49529c = list2;
            } else {
                list2.clear();
            }
            Utf8 utf88 = list2 instanceof GenericData.Array ? (GenericData.Array) list2 : utf82;
            while (0 < readArrayStart3) {
                while (readArrayStart3 != 0) {
                    Utf8 utf89 = utf88 != null ? (CharSequence) utf88.peek() : utf82;
                    readArrayStart3 = C22128a.m8594n(resolvingDecoder, utf89 instanceof Utf8 ? utf89 : utf82, list2, readArrayStart3, 1L);
                }
                readArrayStart3 = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int pos = readFieldOrderIfDiff[i2].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49529c = null;
                    } else {
                        char readArrayStart4 = resolvingDecoder.readArrayStart();
                        List<CharSequence> list3 = this.f49529c;
                        if (list3 == null) {
                            list3 = new GenericData.Array<>(readArrayStart4, (Schema) C22128a.m8706H1(f49523d, "shownTags", 1));
                            this.f49529c = list3;
                        } else {
                            list3.clear();
                        }
                        GenericData.Array array2 = list3 instanceof GenericData.Array ? list3 : null;
                        while (0 < readArrayStart4) {
                            while (readArrayStart4 != 0) {
                                Utf8 utf810 = array2 != null ? (CharSequence) array2.peek() : null;
                                readArrayStart4 = C22128a.m8594n(resolvingDecoder, utf810 instanceof Utf8 ? utf810 : null, list3, readArrayStart4, 1L);
                            }
                            readArrayStart4 = resolvingDecoder.arrayNext();
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49528b = null;
                } else {
                    char readArrayStart5 = resolvingDecoder.readArrayStart();
                    List<CharSequence> list4 = this.f49528b;
                    if (list4 == null) {
                        list4 = new GenericData.Array<>(readArrayStart5, (Schema) C22128a.m8706H1(f49523d, "manualTagsAvailable", 1));
                        this.f49528b = list4;
                    } else {
                        list4.clear();
                    }
                    GenericData.Array array3 = list4 instanceof GenericData.Array ? list4 : null;
                    while (0 < readArrayStart5) {
                        while (readArrayStart5 != 0) {
                            Utf8 utf811 = array3 != null ? (CharSequence) array3.peek() : null;
                            readArrayStart5 = C22128a.m8594n(resolvingDecoder, utf811 instanceof Utf8 ? utf811 : null, list4, readArrayStart5, 1L);
                        }
                        readArrayStart5 = resolvingDecoder.arrayNext();
                    }
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49527a = null;
            } else {
                char readArrayStart6 = resolvingDecoder.readArrayStart();
                List<CharSequence> list5 = this.f49527a;
                if (list5 == null) {
                    list5 = new GenericData.Array<>(readArrayStart6, (Schema) C22128a.m8706H1(f49523d, "serverTagsReceived", 1));
                    this.f49527a = list5;
                } else {
                    list5.clear();
                }
                GenericData.Array array4 = list5 instanceof GenericData.Array ? list5 : null;
                while (0 < readArrayStart6) {
                    while (true) {
                        Utf8 utf812 = null;
                        if (readArrayStart6 != 0) {
                            if (array4 != null) {
                                utf812 = (CharSequence) array4.peek();
                            }
                            readArrayStart6 = C22128a.m8594n(resolvingDecoder, utf812 instanceof Utf8 ? utf812 : null, list5, readArrayStart6, 1L);
                        }
                    }
                    readArrayStart6 = resolvingDecoder.arrayNext();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49527a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f49527a.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size);
            char c = 0;
            for (CharSequence charSequence : this.f49527a) {
                c++;
                encoder.startItem();
                encoder.writeString(charSequence);
            }
            encoder.writeArrayEnd();
            if (c != size) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
            }
        }
        if (this.f49528b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size2 = this.f49528b.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (CharSequence charSequence2 : this.f49528b) {
                c2++;
                encoder.startItem();
                encoder.writeString(charSequence2);
            }
            encoder.writeArrayEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
        }
        if (this.f49529c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size3 = this.f49529c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size3);
        char c3 = 0;
        for (CharSequence charSequence3 : this.f49529c) {
            c3++;
            encoder.startItem();
            encoder.writeString(charSequence3);
        }
        encoder.writeArrayEnd();
        if (c3 != size3) {
            throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size3, ", but element count was "), c3, StringConstant.DOT));
        }
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49528b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49529c;
        }
        return this.f49527a;
    }

    public Schema getSchema() {
        return f49523d;
    }

    public SpecificData getSpecificData() {
        return f49524e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49527a = (List) obj;
        } else if (i == 1) {
            this.f49528b = (List) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49529c = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49526g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49525f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
