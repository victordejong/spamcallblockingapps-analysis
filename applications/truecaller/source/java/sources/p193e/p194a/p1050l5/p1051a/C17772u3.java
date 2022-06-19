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
/* renamed from: e.a.l5.a.u3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/u3.class */
public class C17772u3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50439d;

    /* renamed from: e */
    public static SpecificData f50440e;

    /* renamed from: f */
    public static final DatumWriter<C17772u3> f50441f;

    /* renamed from: g */
    public static final DatumReader<C17772u3> f50442g;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50443a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f50444b;
    @Deprecated

    /* renamed from: c */
    public List<CharSequence> f50445c;

    /* renamed from: e.a.l5.a.u3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/u3$b.class */
    public static class C17774b extends SpecificRecordBuilderBase<C17772u3> implements RecordBuilder<C17772u3> {

        /* renamed from: a */
        public CharSequence f50446a;

        /* renamed from: b */
        public CharSequence f50447b;

        /* renamed from: c */
        public List<CharSequence> f50448c;

        public C17774b(C17773a c17773a) {
            super(C17772u3.f50439d);
        }

        /* renamed from: a */
        public C17772u3 build() {
            try {
                C17772u3 c17772u3 = new C17772u3();
                c17772u3.f50443a = fieldSetFlags()[0] ? this.f50446a : (CharSequence) defaultValue(fields()[0]);
                c17772u3.f50444b = fieldSetFlags()[1] ? this.f50447b : (CharSequence) defaultValue(fields()[1]);
                c17772u3.f50445c = fieldSetFlags()[2] ? this.f50448c : (List) defaultValue(fields()[2]);
                return c17772u3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"Network\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"ip\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}");
        f50439d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50440e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50440e, m8613i0);
        f50441f = f50440e.createDatumWriter(m8613i0);
        f50442g = f50440e.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Utf8 utf8;
        GenericData.Array array;
        Utf8 utf82;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf83 = null;
        if (readFieldOrderIfDiff == null) {
            Utf8 utf84 = this.f50443a;
            this.f50443a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f50444b;
            this.f50444b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50445c = null;
                return;
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<CharSequence> list = this.f50445c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, (Schema) C22128a.m8706H1(f50439d, "ip", 1));
                this.f50445c = list;
            } else {
                list.clear();
            }
            if (list instanceof GenericData.Array) {
                array = list;
                utf82 = null;
            } else {
                array = null;
                utf82 = null;
            }
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    Utf8 utf86 = array != null ? (CharSequence) array.peek() : utf82;
                    readArrayStart = C22128a.m8594n(resolvingDecoder, utf86 instanceof Utf8 ? utf86 : utf82, list, readArrayStart, 1L);
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf87 = this.f50443a;
                this.f50443a = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : utf83);
            } else if (pos == 1) {
                CharSequence charSequence = this.f50444b;
                this.f50444b = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf83);
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                if (resolvingDecoder.readIndex() == 1) {
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    Utf8 utf88 = this.f50445c;
                    if (utf88 == null) {
                        utf88 = new GenericData.Array(readArrayStart2, (Schema) C22128a.m8706H1(f50439d, "ip", 1));
                        this.f50445c = utf88;
                    } else {
                        utf88.clear();
                    }
                    Utf8 utf89 = utf88 instanceof GenericData.Array ? (GenericData.Array) utf88 : utf83;
                    while (true) {
                        utf8 = utf83;
                        if (0 >= readArrayStart2) {
                            break;
                        }
                        while (readArrayStart2 != 0) {
                            Utf8 utf810 = utf89 != null ? (CharSequence) utf89.peek() : utf83;
                            readArrayStart2 = C22128a.m8594n(resolvingDecoder, utf810 instanceof Utf8 ? utf810 : utf83, utf88, readArrayStart2, 1L);
                        }
                        readArrayStart2 = resolvingDecoder.arrayNext();
                    }
                } else {
                    resolvingDecoder.readNull();
                    this.f50445c = utf83;
                    utf8 = utf83;
                }
                utf83 = utf8;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50443a);
        encoder.writeString(this.f50444b);
        if (this.f50445c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size = this.f50445c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (CharSequence charSequence : this.f50445c) {
            c++;
            encoder.startItem();
            encoder.writeString(charSequence);
        }
        encoder.writeArrayEnd();
        if (c != size) {
            throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
        }
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50444b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50445c;
        }
        return this.f50443a;
    }

    public Schema getSchema() {
        return f50439d;
    }

    public SpecificData getSpecificData() {
        return f50440e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50443a = (CharSequence) obj;
        } else if (i == 1) {
            this.f50444b = (CharSequence) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50445c = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50442g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50441f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
