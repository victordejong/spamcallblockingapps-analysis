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
/* renamed from: e.a.l5.a.t3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/t3.class */
public class C17757t3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50346e;

    /* renamed from: f */
    public static SpecificData f50347f;

    /* renamed from: g */
    public static final DatumWriter<C17757t3> f50348g;

    /* renamed from: h */
    public static final DatumReader<C17757t3> f50349h;
    @Deprecated

    /* renamed from: a */
    public int f50350a;
    @Deprecated

    /* renamed from: b */
    public int f50351b;
    @Deprecated

    /* renamed from: c */
    public int f50352c;
    @Deprecated

    /* renamed from: d */
    public int f50353d;

    /* renamed from: e.a.l5.a.t3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/t3$b.class */
    public static class C17759b extends SpecificRecordBuilderBase<C17757t3> implements RecordBuilder<C17757t3> {

        /* renamed from: a */
        public int f50354a;

        /* renamed from: b */
        public int f50355b;

        /* renamed from: c */
        public int f50356c;

        /* renamed from: d */
        public int f50357d;

        public C17759b(C17758a c17758a) {
            super(C17757t3.f50346e);
        }

        /* renamed from: a */
        public C17757t3 build() {
            try {
                C17757t3 c17757t3 = new C17757t3();
                c17757t3.f50350a = fieldSetFlags()[0] ? this.f50354a : ((Integer) defaultValue(fields()[0])).intValue();
                c17757t3.f50351b = fieldSetFlags()[1] ? this.f50355b : ((Integer) defaultValue(fields()[1])).intValue();
                c17757t3.f50352c = fieldSetFlags()[2] ? this.f50356c : ((Integer) defaultValue(fields()[2])).intValue();
                c17757t3.f50353d = fieldSetFlags()[3] ? this.f50357d : ((Integer) defaultValue(fields()[3])).intValue();
                return c17757t3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"LteCellInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"ci\",\"type\":\"int\"},{\"name\":\"tac\",\"type\":\"int\"}]}");
        f50346e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50347f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50347f, m8613i0);
        f50348g = f50347f.createDatumWriter(m8613i0);
        f50349h = f50347f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f50350a = resolvingDecoder.readInt();
            this.f50351b = resolvingDecoder.readInt();
            this.f50352c = resolvingDecoder.readInt();
            this.f50353d = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f50350a = resolvingDecoder.readInt();
            } else if (pos == 1) {
                this.f50351b = resolvingDecoder.readInt();
            } else if (pos == 2) {
                this.f50352c = resolvingDecoder.readInt();
            } else if (pos != 3) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f50353d = resolvingDecoder.readInt();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f50350a);
        encoder.writeInt(this.f50351b);
        encoder.writeInt(this.f50352c);
        encoder.writeInt(this.f50353d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Integer.valueOf(this.f50351b);
            }
            if (i == 2) {
                return Integer.valueOf(this.f50352c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f50353d);
        }
        return Integer.valueOf(this.f50350a);
    }

    public Schema getSchema() {
        return f50346e;
    }

    public SpecificData getSpecificData() {
        return f50347f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50350a = ((Integer) obj).intValue();
        } else if (i == 1) {
            this.f50351b = ((Integer) obj).intValue();
        } else if (i == 2) {
            this.f50352c = ((Integer) obj).intValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50353d = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50349h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50348g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
