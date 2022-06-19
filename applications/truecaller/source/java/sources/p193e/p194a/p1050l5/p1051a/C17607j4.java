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
/* renamed from: e.a.l5.a.j4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j4.class */
public class C17607j4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49605d;

    /* renamed from: e */
    public static SpecificData f49606e;

    /* renamed from: f */
    public static final DatumWriter<C17607j4> f49607f;

    /* renamed from: g */
    public static final DatumReader<C17607j4> f49608g;
    @Deprecated

    /* renamed from: a */
    public List<CharSequence> f49609a;
    @Deprecated

    /* renamed from: b */
    public List<CharSequence> f49610b;
    @Deprecated

    /* renamed from: c */
    public List<CharSequence> f49611c;

    /* renamed from: e.a.l5.a.j4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j4$b.class */
    public static class C17609b extends SpecificRecordBuilderBase<C17607j4> implements RecordBuilder<C17607j4> {

        /* renamed from: a */
        public List<CharSequence> f49612a;

        /* renamed from: b */
        public List<CharSequence> f49613b;

        /* renamed from: c */
        public List<CharSequence> f49614c;

        public C17609b(C17608a c17608a) {
            super(C17607j4.f49605d);
        }

        /* renamed from: a */
        public C17607j4 build() {
            try {
                C17607j4 c17607j4 = new C17607j4();
                c17607j4.f49609a = fieldSetFlags()[0] ? this.f49612a : (List) defaultValue(fields()[0]);
                c17607j4.f49610b = fieldSetFlags()[1] ? this.f49613b : (List) defaultValue(fields()[1]);
                c17607j4.f49611c = fieldSetFlags()[2] ? this.f49614c : (List) defaultValue(fields()[2]);
                return c17607j4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"TagsServedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All tag ids that client received, e.g. [\\\"9\\\",\\\"129\\\"]\"},{\"name\":\"manualTagsAvailable\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All manual tag ids that the client has available for this number\"},{\"name\":\"shownTags\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"The list of tag ids that the client displayed to the user for this search result\"}]}");
        f49605d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49606e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49606e, m8613i0);
        f49607f = f49606e.createDatumWriter(m8613i0);
        f49608g = f49606e.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v161, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<CharSequence> list = this.f49609a;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49605d.getField("serverTagsReceived").schema());
                this.f49609a = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    Utf8 utf8 = array != null ? (CharSequence) array.peek() : null;
                    readArrayStart = C22128a.m8594n(resolvingDecoder, utf8 instanceof Utf8 ? utf8 : null, list, readArrayStart, 1L);
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            char readArrayStart2 = resolvingDecoder.readArrayStart();
            List<CharSequence> list2 = this.f49610b;
            if (list2 == null) {
                list2 = new GenericData.Array<>(readArrayStart2, f49605d.getField("manualTagsAvailable").schema());
                this.f49610b = list2;
            } else {
                list2.clear();
            }
            GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
            while (0 < readArrayStart2) {
                while (readArrayStart2 != 0) {
                    Utf8 utf82 = array2 != null ? (CharSequence) array2.peek() : null;
                    readArrayStart2 = C22128a.m8594n(resolvingDecoder, utf82 instanceof Utf8 ? utf82 : null, list2, readArrayStart2, 1L);
                }
                readArrayStart2 = resolvingDecoder.arrayNext();
            }
            char readArrayStart3 = resolvingDecoder.readArrayStart();
            List<CharSequence> list3 = this.f49611c;
            if (list3 == null) {
                list3 = new GenericData.Array<>(readArrayStart3, f49605d.getField("shownTags").schema());
                this.f49611c = list3;
            } else {
                list3.clear();
            }
            GenericData.Array array3 = list3 instanceof GenericData.Array ? list3 : null;
            while (0 < readArrayStart3) {
                while (readArrayStart3 != 0) {
                    Utf8 utf83 = array3 != null ? (CharSequence) array3.peek() : null;
                    readArrayStart3 = C22128a.m8594n(resolvingDecoder, utf83 instanceof Utf8 ? utf83 : null, list3, readArrayStart3, 1L);
                }
                readArrayStart3 = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                char readArrayStart4 = resolvingDecoder.readArrayStart();
                List<CharSequence> list4 = this.f49609a;
                if (list4 == null) {
                    list4 = new GenericData.Array<>(readArrayStart4, f49605d.getField("serverTagsReceived").schema());
                    this.f49609a = list4;
                } else {
                    list4.clear();
                }
                GenericData.Array array4 = list4 instanceof GenericData.Array ? list4 : null;
                while (0 < readArrayStart4) {
                    while (readArrayStart4 != 0) {
                        Utf8 utf84 = array4 != null ? (CharSequence) array4.peek() : null;
                        readArrayStart4 = C22128a.m8594n(resolvingDecoder, utf84 instanceof Utf8 ? utf84 : null, list4, readArrayStart4, 1L);
                    }
                    readArrayStart4 = resolvingDecoder.arrayNext();
                }
            } else if (pos == 1) {
                char readArrayStart5 = resolvingDecoder.readArrayStart();
                List<CharSequence> list5 = this.f49610b;
                if (list5 == null) {
                    list5 = new GenericData.Array<>(readArrayStart5, f49605d.getField("manualTagsAvailable").schema());
                    this.f49610b = list5;
                } else {
                    list5.clear();
                }
                GenericData.Array array5 = list5 instanceof GenericData.Array ? list5 : null;
                while (0 < readArrayStart5) {
                    while (readArrayStart5 != 0) {
                        Utf8 utf85 = array5 != null ? (CharSequence) array5.peek() : null;
                        readArrayStart5 = C22128a.m8594n(resolvingDecoder, utf85 instanceof Utf8 ? utf85 : null, list5, readArrayStart5, 1L);
                    }
                    readArrayStart5 = resolvingDecoder.arrayNext();
                }
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                char readArrayStart6 = resolvingDecoder.readArrayStart();
                List<CharSequence> list6 = this.f49611c;
                if (list6 == null) {
                    list6 = new GenericData.Array<>(readArrayStart6, f49605d.getField("shownTags").schema());
                    this.f49611c = list6;
                } else {
                    list6.clear();
                }
                GenericData.Array array6 = list6 instanceof GenericData.Array ? list6 : null;
                while (0 < readArrayStart6) {
                    while (readArrayStart6 != 0) {
                        Utf8 utf86 = array6 != null ? (CharSequence) array6.peek() : null;
                        readArrayStart6 = C22128a.m8594n(resolvingDecoder, utf86 instanceof Utf8 ? utf86 : null, list6, readArrayStart6, 1L);
                    }
                    readArrayStart6 = resolvingDecoder.arrayNext();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        long size = this.f49609a.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (CharSequence charSequence : this.f49609a) {
            c++;
            encoder.startItem();
            encoder.writeString(charSequence);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            long size2 = this.f49610b.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (CharSequence charSequence2 : this.f49610b) {
                c2++;
                encoder.startItem();
                encoder.writeString(charSequence2);
            }
            encoder.writeArrayEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
            long size3 = this.f49611c.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size3);
            char c3 = 0;
            for (CharSequence charSequence3 : this.f49611c) {
                c3++;
                encoder.startItem();
                encoder.writeString(charSequence3);
            }
            encoder.writeArrayEnd();
            if (c3 != size3) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size3, ", but element count was "), c3, StringConstant.DOT));
            }
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49610b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49611c;
        }
        return this.f49609a;
    }

    public Schema getSchema() {
        return f49605d;
    }

    public SpecificData getSpecificData() {
        return f49606e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49609a = (List) obj;
        } else if (i == 1) {
            this.f49610b = (List) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49611c = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49608g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49607f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
