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
/* renamed from: e.a.l5.a.z3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/z3.class */
public class C17843z3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50803f;

    /* renamed from: g */
    public static SpecificData f50804g;

    /* renamed from: h */
    public static final DatumWriter<C17843z3> f50805h;

    /* renamed from: i */
    public static final DatumReader<C17843z3> f50806i;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50807a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f50808b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50809c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50810d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50811e;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"PackageDetails\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"appName\",\"type\":\"string\"},{\"name\":\"versionId\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"versionCode\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"installedDate\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"updatedDate\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f50803f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50804g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50804g, m8613i0);
        f50805h = f50804g.createDatumWriter(m8613i0);
        f50806i = f50804g.createDatumReader(m8613i0);
    }

    public C17843z3() {
    }

    public C17843z3(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        this.f50807a = charSequence;
        this.f50808b = charSequence2;
        this.f50809c = charSequence3;
        this.f50810d = charSequence4;
        this.f50811e = charSequence5;
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f50807a;
            this.f50807a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50808b = null;
            } else {
                Utf8 utf82 = this.f50808b;
                this.f50808b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50809c = null;
            } else {
                Utf8 utf83 = this.f50809c;
                this.f50809c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50810d = null;
            } else {
                Utf8 utf84 = this.f50810d;
                this.f50810d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50811e = null;
                return;
            }
            Utf8 utf85 = this.f50811e;
            Utf8 utf86 = null;
            if (utf85 instanceof Utf8) {
                utf86 = utf85;
            }
            this.f50811e = resolvingDecoder.readString(utf86);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf87 = this.f50807a;
                this.f50807a = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            } else if (pos != 1) {
                if (pos != 2) {
                    if (pos != 3) {
                        if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50811e = null;
                        } else {
                            Utf8 utf88 = this.f50811e;
                            this.f50811e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50810d = null;
                    } else {
                        Utf8 utf89 = this.f50810d;
                        this.f50810d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50809c = null;
                } else {
                    Utf8 utf810 = this.f50809c;
                    this.f50809c = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50808b = null;
            } else {
                Utf8 utf811 = this.f50808b;
                this.f50808b = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50807a);
        if (this.f50808b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50808b);
        }
        if (this.f50809c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50809c);
        }
        if (this.f50810d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50810d);
        }
        if (this.f50811e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50811e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50808b;
            }
            if (i == 2) {
                return this.f50809c;
            }
            if (i == 3) {
                return this.f50810d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50811e;
        }
        return this.f50807a;
    }

    public Schema getSchema() {
        return f50803f;
    }

    public SpecificData getSpecificData() {
        return f50804g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50807a = (CharSequence) obj;
        } else if (i == 1) {
            this.f50808b = (CharSequence) obj;
        } else if (i == 2) {
            this.f50809c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50810d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50811e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50806i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50805h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
