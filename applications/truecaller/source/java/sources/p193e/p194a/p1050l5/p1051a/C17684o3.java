package p193e.p194a.p1050l5.p1051a;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.avro.Schema;
import org.apache.avro.io.DatumReader;
import org.apache.avro.io.DatumWriter;
import org.apache.avro.io.Encoder;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.message.BinaryMessageDecoder;
import org.apache.avro.message.BinaryMessageEncoder;
import org.apache.avro.specific.SpecificData;
import org.apache.avro.specific.SpecificRecord;
import org.apache.avro.specific.SpecificRecordBase;
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.o3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/o3.class */
public class C17684o3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49971e;

    /* renamed from: f */
    public static SpecificData f49972f;

    /* renamed from: g */
    public static final DatumWriter<C17684o3> f49973g;

    /* renamed from: h */
    public static final DatumReader<C17684o3> f49974h;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49975a;
    @Deprecated

    /* renamed from: b */
    public Long f49976b;
    @Deprecated

    /* renamed from: c */
    public Integer f49977c;
    @Deprecated

    /* renamed from: d */
    public Integer f49978d;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"GamMediationInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"adapterClassName\",\"type\":[\"null\",\"string\"],\"doc\":\"Mediation adapter class name invoked my ad manager sdk\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"long\"],\"doc\":\"Time taken by mediation adapter for an ad response in milliseconds\",\"default\":null},{\"name\":\"gamErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code recorded by ad manger\",\"default\":null},{\"name\":\"partnerErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code returned by the partner\",\"default\":null}]}");
        f49971e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49972f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49972f, m8613i0);
        f49973g = f49972f.createDatumWriter(m8613i0);
        f49974h = f49972f.createDatumReader(m8613i0);
    }

    public C17684o3() {
    }

    public C17684o3(CharSequence charSequence, Long l, Integer num, Integer num2) {
        this.f49975a = charSequence;
        this.f49976b = l;
        this.f49977c = num;
        this.f49978d = num2;
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49975a = null;
            } else {
                Utf8 utf8 = this.f49975a;
                this.f49975a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49976b = null;
            } else {
                this.f49976b = Long.valueOf(resolvingDecoder.readLong());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49977c = null;
            } else {
                this.f49977c = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49978d = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f49978d = null;
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        if (pos != 3) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49978d = null;
                        } else {
                            this.f49978d = Integer.valueOf(resolvingDecoder.readInt());
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49977c = null;
                    } else {
                        this.f49977c = Integer.valueOf(resolvingDecoder.readInt());
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49976b = null;
                } else {
                    this.f49976b = Long.valueOf(resolvingDecoder.readLong());
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49975a = null;
            } else {
                Utf8 utf82 = this.f49975a;
                this.f49975a = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49975a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49975a);
        }
        if (this.f49976b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeLong(this.f49976b.longValue());
        }
        if (this.f49977c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49977c.intValue());
        }
        if (this.f49978d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f49978d.intValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49976b;
            }
            if (i == 2) {
                return this.f49977c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49978d;
        }
        return this.f49975a;
    }

    public Schema getSchema() {
        return f49971e;
    }

    public SpecificData getSpecificData() {
        return f49972f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49975a = (CharSequence) obj;
        } else if (i == 1) {
            this.f49976b = (Long) obj;
        } else if (i == 2) {
            this.f49977c = (Integer) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49978d = (Integer) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49974h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49973g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
