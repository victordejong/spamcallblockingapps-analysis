package p193e.p194a.p1050l5.p1051a;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
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
/* renamed from: e.a.l5.a.g4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/g4.class */
public class C17553g4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f49371c;

    /* renamed from: d */
    public static SpecificData f49372d;

    /* renamed from: e */
    public static final DatumWriter<C17553g4> f49373e;

    /* renamed from: f */
    public static final DatumReader<C17553g4> f49374f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49375a;
    @Deprecated

    /* renamed from: b */
    public int f49376b;

    /* renamed from: e.a.l5.a.g4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/g4$b.class */
    public static class C17555b extends SpecificRecordBuilderBase<C17553g4> implements RecordBuilder<C17553g4> {

        /* renamed from: a */
        public int f49377a;

        public C17555b(C17554a c17554a) {
            super(C17553g4.f49371c);
        }

        /* renamed from: a */
        public C17553g4 build() {
            try {
                C17553g4 c17553g4 = new C17553g4();
                c17553g4.f49375a = fieldSetFlags()[0] ? null : (CharSequence) defaultValue(fields()[0]);
                c17553g4.f49376b = fieldSetFlags()[1] ? this.f49377a : ((Integer) defaultValue(fields()[1])).intValue();
                return c17553g4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"SmsCategorizerModel\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"model\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"int\"}]}");
        f49371c = m8613i0;
        SpecificData specificData = new SpecificData();
        f49372d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49372d, m8613i0);
        f49373e = f49372d.createDatumWriter(m8613i0);
        f49374f = f49372d.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            Utf8 utf82 = this.f49375a;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49375a = resolvingDecoder.readString(utf8);
            this.f49376b = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf83 = this.f49375a;
                this.f49375a = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f49376b = resolvingDecoder.readInt();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f49375a);
        encoder.writeInt(this.f49376b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f49376b);
        }
        return this.f49375a;
    }

    public Schema getSchema() {
        return f49371c;
    }

    public SpecificData getSpecificData() {
        return f49372d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49375a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49376b = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49374f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49373e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
