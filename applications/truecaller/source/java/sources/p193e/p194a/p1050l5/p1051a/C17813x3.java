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
/* renamed from: e.a.l5.a.x3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/x3.class */
public class C17813x3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50655e;

    /* renamed from: f */
    public static SpecificData f50656f;

    /* renamed from: g */
    public static final DatumWriter<C17813x3> f50657g;

    /* renamed from: h */
    public static final DatumReader<C17813x3> f50658h;
    @Deprecated

    /* renamed from: a */
    public boolean f50659a;
    @Deprecated

    /* renamed from: b */
    public boolean f50660b;
    @Deprecated

    /* renamed from: c */
    public boolean f50661c;
    @Deprecated

    /* renamed from: d */
    public boolean f50662d;

    /* renamed from: e.a.l5.a.x3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/x3$b.class */
    public static class C17815b extends SpecificRecordBuilderBase<C17813x3> implements RecordBuilder<C17813x3> {

        /* renamed from: a */
        public boolean f50663a;

        /* renamed from: b */
        public boolean f50664b;

        /* renamed from: c */
        public boolean f50665c;

        /* renamed from: d */
        public boolean f50666d;

        public C17815b(C17814a c17814a) {
            super(C17813x3.f50655e);
        }

        /* renamed from: a */
        public C17813x3 build() {
            try {
                C17813x3 c17813x3 = new C17813x3();
                c17813x3.f50659a = fieldSetFlags()[0] ? this.f50663a : ((Boolean) defaultValue(fields()[0])).booleanValue();
                c17813x3.f50660b = fieldSetFlags()[1] ? this.f50664b : ((Boolean) defaultValue(fields()[1])).booleanValue();
                c17813x3.f50661c = fieldSetFlags()[2] ? this.f50665c : ((Boolean) defaultValue(fields()[2])).booleanValue();
                c17813x3.f50662d = fieldSetFlags()[3] ? this.f50666d : ((Boolean) defaultValue(fields()[3])).booleanValue();
                return c17813x3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17815b m15787b(boolean z) {
            validate(fields()[0], Boolean.valueOf(z));
            this.f50663a = z;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: c */
        public C17815b m15786c(boolean z) {
            validate(fields()[1], Boolean.valueOf(z));
            this.f50664b = z;
            fieldSetFlags()[1] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"NumberStateBeforeAction\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"inTopSpammerList\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":\"boolean\"},{\"name\":\"inUserWhiteList\",\"type\":\"boolean\"},{\"name\":\"spammerFromServer\",\"type\":\"boolean\"}]}");
        f50655e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50656f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50656f, m8613i0);
        f50657g = f50656f.createDatumWriter(m8613i0);
        f50658h = f50656f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f50659a = resolvingDecoder.readBoolean();
            this.f50660b = resolvingDecoder.readBoolean();
            this.f50661c = resolvingDecoder.readBoolean();
            this.f50662d = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f50659a = resolvingDecoder.readBoolean();
            } else if (pos == 1) {
                this.f50660b = resolvingDecoder.readBoolean();
            } else if (pos == 2) {
                this.f50661c = resolvingDecoder.readBoolean();
            } else if (pos != 3) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f50662d = resolvingDecoder.readBoolean();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeBoolean(this.f50659a);
        encoder.writeBoolean(this.f50660b);
        encoder.writeBoolean(this.f50661c);
        encoder.writeBoolean(this.f50662d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Boolean.valueOf(this.f50660b);
            }
            if (i == 2) {
                return Boolean.valueOf(this.f50661c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f50662d);
        }
        return Boolean.valueOf(this.f50659a);
    }

    public Schema getSchema() {
        return f50655e;
    }

    public SpecificData getSpecificData() {
        return f50656f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50659a = ((Boolean) obj).booleanValue();
        } else if (i == 1) {
            this.f50660b = ((Boolean) obj).booleanValue();
        } else if (i == 2) {
            this.f50661c = ((Boolean) obj).booleanValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50662d = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50658h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50657g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
