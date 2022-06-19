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
/* renamed from: e.a.l5.a.h4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h4.class */
public class C17571h4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49454f;

    /* renamed from: g */
    public static SpecificData f49455g;

    /* renamed from: h */
    public static final DatumWriter<C17571h4> f49456h;

    /* renamed from: i */
    public static final DatumReader<C17571h4> f49457i;
    @Deprecated

    /* renamed from: a */
    public int f49458a;
    @Deprecated

    /* renamed from: b */
    public int f49459b;
    @Deprecated

    /* renamed from: c */
    public int f49460c;
    @Deprecated

    /* renamed from: d */
    public Integer f49461d;
    @Deprecated

    /* renamed from: e */
    public Integer f49462e;

    /* renamed from: e.a.l5.a.h4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h4$b.class */
    public static class C17573b extends SpecificRecordBuilderBase<C17571h4> implements RecordBuilder<C17571h4> {
        public C17573b(C17572a c17572a) {
            super(C17571h4.f49454f);
        }

        /* renamed from: a */
        public C17571h4 build() {
            try {
                C17571h4 c17571h4 = new C17571h4();
                c17571h4.f49458a = fieldSetFlags()[0] ? 0 : ((Integer) defaultValue(fields()[0])).intValue();
                c17571h4.f49459b = fieldSetFlags()[1] ? 0 : ((Integer) defaultValue(fields()[1])).intValue();
                c17571h4.f49460c = fieldSetFlags()[2] ? 0 : ((Integer) defaultValue(fields()[2])).intValue();
                c17571h4.f49461d = fieldSetFlags()[3] ? null : (Integer) defaultValue(fields()[3]);
                c17571h4.f49462e = fieldSetFlags()[4] ? null : (Integer) defaultValue(fields()[4]);
                return c17571h4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"SmsContentMetaData\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"numNumbers\",\"type\":\"int\"},{\"name\":\"numUrls\",\"type\":\"int\"},{\"name\":\"numWords\",\"type\":\"int\"},{\"name\":\"numUnigram\",\"type\":[\"null\",\"int\"]},{\"name\":\"numBigram\",\"type\":[\"null\",\"int\"]}]}");
        f49454f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49455g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49455g, m8613i0);
        f49456h = f49455g.createDatumWriter(m8613i0);
        f49457i = f49455g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49458a = resolvingDecoder.readInt();
            this.f49459b = resolvingDecoder.readInt();
            this.f49460c = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49461d = null;
            } else {
                this.f49461d = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49462e = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f49462e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49458a = resolvingDecoder.readInt();
            } else if (pos == 1) {
                this.f49459b = resolvingDecoder.readInt();
            } else if (pos == 2) {
                this.f49460c = resolvingDecoder.readInt();
            } else if (pos != 3) {
                if (pos != 4) {
                    throw new IOException("Corrupt ResolvingDecoder.");
                }
                if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49462e = null;
                } else {
                    this.f49462e = Integer.valueOf(resolvingDecoder.readInt());
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49461d = null;
            } else {
                this.f49461d = Integer.valueOf(resolvingDecoder.readInt());
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f49458a);
        encoder.writeInt(this.f49459b);
        encoder.writeInt(this.f49460c);
        if (this.f49461d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49461d.intValue());
        }
        if (this.f49462e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f49462e.intValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Integer.valueOf(this.f49459b);
            }
            if (i == 2) {
                return Integer.valueOf(this.f49460c);
            }
            if (i == 3) {
                return this.f49461d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49462e;
        }
        return Integer.valueOf(this.f49458a);
    }

    public Schema getSchema() {
        return f49454f;
    }

    public SpecificData getSpecificData() {
        return f49455g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49458a = ((Integer) obj).intValue();
        } else if (i == 1) {
            this.f49459b = ((Integer) obj).intValue();
        } else if (i == 2) {
            this.f49460c = ((Integer) obj).intValue();
        } else if (i == 3) {
            this.f49461d = (Integer) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49462e = (Integer) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49457i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49456h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
