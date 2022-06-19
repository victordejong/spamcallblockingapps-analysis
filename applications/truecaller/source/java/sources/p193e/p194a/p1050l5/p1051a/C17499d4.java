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
/* renamed from: e.a.l5.a.d4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/d4.class */
public class C17499d4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49098e;

    /* renamed from: f */
    public static SpecificData f49099f;

    /* renamed from: g */
    public static final DatumWriter<C17499d4> f49100g;

    /* renamed from: h */
    public static final DatumReader<C17499d4> f49101h;
    @Deprecated

    /* renamed from: a */
    public long f49102a;
    @Deprecated

    /* renamed from: b */
    public long f49103b;
    @Deprecated

    /* renamed from: c */
    public long f49104c;
    @Deprecated

    /* renamed from: d */
    public int f49105d;

    /* renamed from: e.a.l5.a.d4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/d4$b.class */
    public static class C17501b extends SpecificRecordBuilderBase<C17499d4> implements RecordBuilder<C17499d4> {

        /* renamed from: a */
        public long f49106a;

        /* renamed from: b */
        public long f49107b;

        public C17501b(C17500a c17500a) {
            super(C17499d4.f49098e);
        }

        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v41, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* renamed from: a */
        public C17499d4 build() {
            try {
                C17499d4 c17499d4 = new C17499d4();
                int i = 0;
                c17499d4.f49102a = fieldSetFlags()[0] ? this.f49106a : ((Long) defaultValue(fields()[0])).longValue();
                c17499d4.f49103b = fieldSetFlags()[1] ? this.f49107b : ((Long) defaultValue(fields()[1])).longValue();
                c17499d4.f49104c = fieldSetFlags()[2] ? (char) 0 : ((Long) defaultValue(fields()[2])).longValue();
                if (!fieldSetFlags()[3]) {
                    i = ((Integer) defaultValue(fields()[3])).intValue();
                }
                c17499d4.f49105d = i;
                return c17499d4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17501b m15995b(long j) {
            validate(fields()[1], Long.valueOf(j));
            this.f49107b = j;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: c */
        public C17501b m15994c(long j) {
            validate(fields()[0], Long.valueOf(j));
            this.f49106a = j;
            fieldSetFlags()[0] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"RetryEntry\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track each retry entry\",\"fields\":[{\"name\":\"retryStartTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry started\"},{\"name\":\"retryFinishTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry finished\"},{\"name\":\"retryFailureTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of  retry failed\"},{\"name\":\"retryDuration\",\"type\":\"int\",\"doc\":\"Duration of retry\"}]}");
        f49098e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49099f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49099f, m8613i0);
        f49100g = f49099f.createDatumWriter(m8613i0);
        f49101h = f49099f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49102a = resolvingDecoder.readLong();
            this.f49103b = resolvingDecoder.readLong();
            this.f49104c = resolvingDecoder.readLong();
            this.f49105d = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49102a = resolvingDecoder.readLong();
            } else if (pos == 1) {
                this.f49103b = resolvingDecoder.readLong();
            } else if (pos == 2) {
                this.f49104c = resolvingDecoder.readLong();
            } else if (pos != 3) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f49105d = resolvingDecoder.readInt();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeLong(this.f49102a);
        encoder.writeLong(this.f49103b);
        encoder.writeLong(this.f49104c);
        encoder.writeInt(this.f49105d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Long.valueOf(this.f49103b);
            }
            if (i == 2) {
                return Long.valueOf(this.f49104c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f49105d);
        }
        return Long.valueOf(this.f49102a);
    }

    public Schema getSchema() {
        return f49098e;
    }

    public SpecificData getSpecificData() {
        return f49099f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49102a = ((Long) obj).longValue();
        } else if (i == 1) {
            this.f49103b = ((Long) obj).longValue();
        } else if (i == 2) {
            this.f49104c = ((Long) obj).longValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49105d = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49101h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49100g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
