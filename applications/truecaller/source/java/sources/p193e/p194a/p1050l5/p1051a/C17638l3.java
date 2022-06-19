package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.App;
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
/* renamed from: e.a.l5.a.l3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l3.class */
public class C17638l3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49759f;

    /* renamed from: g */
    public static SpecificData f49760g;

    /* renamed from: h */
    public static final DatumWriter<C17638l3> f49761h;

    /* renamed from: i */
    public static final DatumReader<C17638l3> f49762i;
    @Deprecated

    /* renamed from: a */
    public long f49763a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f49764b;
    @Deprecated

    /* renamed from: c */
    public App f49765c;
    @Deprecated

    /* renamed from: d */
    public C17625k4 f49766d;
    @Deprecated

    /* renamed from: e */
    public C17828y3 f49767e;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"CommonHeader\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}");
        f49759f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49760g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49760g, m8613i0);
        f49761h = f49760g.createDatumWriter(m8613i0);
        f49762i = f49760g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49763a = resolvingDecoder.readLong();
            Utf8 utf8 = this.f49764b;
            this.f49764b = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49765c = null;
            } else {
                if (this.f49765c == null) {
                    this.f49765c = new App();
                }
                this.f49765c.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49766d = null;
            } else {
                if (this.f49766d == null) {
                    this.f49766d = new C17625k4();
                }
                this.f49766d.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49767e = null;
                return;
            }
            if (this.f49767e == null) {
                this.f49767e = new C17828y3();
            }
            this.f49767e.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49763a = resolvingDecoder.readLong();
            } else if (pos == 1) {
                Utf8 utf82 = this.f49764b;
                this.f49764b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            } else if (pos != 2) {
                if (pos != 3) {
                    if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49767e = null;
                    } else {
                        if (this.f49767e == null) {
                            this.f49767e = new C17828y3();
                        }
                        this.f49767e.customDecode(resolvingDecoder);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49766d = null;
                } else {
                    if (this.f49766d == null) {
                        this.f49766d = new C17625k4();
                    }
                    this.f49766d.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49765c = null;
            } else {
                if (this.f49765c == null) {
                    this.f49765c = new App();
                }
                this.f49765c.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeLong(this.f49763a);
        encoder.writeString(this.f49764b);
        if (this.f49765c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49765c.customEncode(encoder);
        }
        if (this.f49766d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17625k4 c17625k4 = this.f49766d;
            encoder.writeString(c17625k4.f49707a);
            encoder.writeString(c17625k4.f49708b);
        }
        if (this.f49767e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        C17828y3 c17828y3 = this.f49767e;
        encoder.writeString(c17828y3.f50747a);
        encoder.writeString(c17828y3.f50748b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49764b;
            }
            if (i == 2) {
                return this.f49765c;
            }
            if (i == 3) {
                return this.f49766d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49767e;
        }
        return Long.valueOf(this.f49763a);
    }

    public Schema getSchema() {
        return f49759f;
    }

    public SpecificData getSpecificData() {
        return f49760g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49763a = ((Long) obj).longValue();
        } else if (i == 1) {
            this.f49764b = (CharSequence) obj;
        } else if (i == 2) {
            this.f49765c = (App) obj;
        } else if (i == 3) {
            this.f49766d = (C17625k4) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49767e = (C17828y3) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49762i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49761h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
