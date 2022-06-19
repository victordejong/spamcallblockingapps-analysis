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
/* renamed from: e.a.l5.a.q3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/q3.class */
public class C17712q3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50131e;

    /* renamed from: f */
    public static SpecificData f50132f;

    /* renamed from: g */
    public static final DatumWriter<C17712q3> f50133g;

    /* renamed from: h */
    public static final DatumReader<C17712q3> f50134h;
    @Deprecated

    /* renamed from: a */
    public int f50135a;
    @Deprecated

    /* renamed from: b */
    public int f50136b;
    @Deprecated

    /* renamed from: c */
    public int f50137c;
    @Deprecated

    /* renamed from: d */
    public int f50138d;

    /* renamed from: e.a.l5.a.q3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/q3$b.class */
    public static class C17714b extends SpecificRecordBuilderBase<C17712q3> implements RecordBuilder<C17712q3> {

        /* renamed from: a */
        public int f50139a;

        /* renamed from: b */
        public int f50140b;

        /* renamed from: c */
        public int f50141c;

        /* renamed from: d */
        public int f50142d;

        public C17714b(C17713a c17713a) {
            super(C17712q3.f50131e);
        }

        /* renamed from: a */
        public C17712q3 build() {
            try {
                C17712q3 c17712q3 = new C17712q3();
                c17712q3.f50135a = fieldSetFlags()[0] ? this.f50139a : ((Integer) defaultValue(fields()[0])).intValue();
                c17712q3.f50136b = fieldSetFlags()[1] ? this.f50140b : ((Integer) defaultValue(fields()[1])).intValue();
                c17712q3.f50137c = fieldSetFlags()[2] ? this.f50141c : ((Integer) defaultValue(fields()[2])).intValue();
                c17712q3.f50138d = fieldSetFlags()[3] ? this.f50142d : ((Integer) defaultValue(fields()[3])).intValue();
                return c17712q3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17714b m15837b(int i) {
            validate(fields()[2], Integer.valueOf(i));
            this.f50141c = i;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17714b m15836c(int i) {
            validate(fields()[3], Integer.valueOf(i));
            this.f50142d = i;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: d */
        public C17714b m15835d(int i) {
            validate(fields()[0], Integer.valueOf(i));
            this.f50139a = i;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: e */
        public C17714b m15834e(int i) {
            validate(fields()[1], Integer.valueOf(i));
            this.f50140b = i;
            fieldSetFlags()[1] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"GsmCellInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"cid\",\"type\":\"int\"},{\"name\":\"lac\",\"type\":\"int\"}]}");
        f50131e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50132f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50132f, m8613i0);
        f50133g = f50132f.createDatumWriter(m8613i0);
        f50134h = f50132f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17714b m15839a() {
        return new C17714b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f50135a = resolvingDecoder.readInt();
            this.f50136b = resolvingDecoder.readInt();
            this.f50137c = resolvingDecoder.readInt();
            this.f50138d = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f50135a = resolvingDecoder.readInt();
            } else if (pos == 1) {
                this.f50136b = resolvingDecoder.readInt();
            } else if (pos == 2) {
                this.f50137c = resolvingDecoder.readInt();
            } else if (pos != 3) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f50138d = resolvingDecoder.readInt();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f50135a);
        encoder.writeInt(this.f50136b);
        encoder.writeInt(this.f50137c);
        encoder.writeInt(this.f50138d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Integer.valueOf(this.f50136b);
            }
            if (i == 2) {
                return Integer.valueOf(this.f50137c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f50138d);
        }
        return Integer.valueOf(this.f50135a);
    }

    public Schema getSchema() {
        return f50131e;
    }

    public SpecificData getSpecificData() {
        return f50132f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50135a = ((Integer) obj).intValue();
        } else if (i == 1) {
            this.f50136b = ((Integer) obj).intValue();
        } else if (i == 2) {
            this.f50137c = ((Integer) obj).intValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50138d = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50134h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50133g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
