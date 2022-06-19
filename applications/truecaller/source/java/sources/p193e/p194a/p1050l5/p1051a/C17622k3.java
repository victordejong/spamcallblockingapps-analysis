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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.k3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/k3.class */
public class C17622k3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f49695c;

    /* renamed from: d */
    public static SpecificData f49696d;

    /* renamed from: e */
    public static final DatumWriter<C17622k3> f49697e;

    /* renamed from: f */
    public static final DatumReader<C17622k3> f49698f;
    @Deprecated

    /* renamed from: a */
    public float f49699a;
    @Deprecated

    /* renamed from: b */
    public float f49700b;

    /* renamed from: e.a.l5.a.k3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/k3$b.class */
    public static class C17624b extends SpecificRecordBuilderBase<C17622k3> implements RecordBuilder<C17622k3> {

        /* renamed from: a */
        public float f49701a;

        /* renamed from: b */
        public float f49702b;

        public C17624b(C17623a c17623a) {
            super(C17622k3.f49695c);
        }

        /* renamed from: a */
        public C17622k3 build() {
            try {
                C17622k3 c17622k3 = new C17622k3();
                c17622k3.f49699a = fieldSetFlags()[0] ? this.f49701a : ((Float) defaultValue(fields()[0])).floatValue();
                c17622k3.f49700b = fieldSetFlags()[1] ? this.f49702b : ((Float) defaultValue(fields()[1])).floatValue();
                return c17622k3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17624b m15918b(float f) {
            validate(fields()[0], Float.valueOf(f));
            this.f49701a = f;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: c */
        public C17624b m15917c(float f) {
            validate(fields()[1], Float.valueOf(f));
            this.f49702b = f;
            fieldSetFlags()[1] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"CdmaCellInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"}]}");
        f49695c = m8613i0;
        SpecificData specificData = new SpecificData();
        f49696d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49696d, m8613i0);
        f49697e = f49696d.createDatumWriter(m8613i0);
        f49698f = f49696d.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49699a = resolvingDecoder.readFloat();
            this.f49700b = resolvingDecoder.readFloat();
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49699a = resolvingDecoder.readFloat();
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f49700b = resolvingDecoder.readFloat();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeFloat(this.f49699a);
        encoder.writeFloat(this.f49700b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Float.valueOf(this.f49700b);
        }
        return Float.valueOf(this.f49699a);
    }

    public Schema getSchema() {
        return f49695c;
    }

    public SpecificData getSpecificData() {
        return f49696d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49699a = ((Float) obj).floatValue();
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49700b = ((Float) obj).floatValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49698f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49697e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
