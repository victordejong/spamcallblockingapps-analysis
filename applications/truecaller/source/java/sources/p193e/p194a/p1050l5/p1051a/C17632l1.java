package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.ClientHeaderV2;
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
/* renamed from: e.a.l5.a.l1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l1.class */
public class C17632l1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49739e;

    /* renamed from: f */
    public static SpecificData f49740f;

    /* renamed from: g */
    public static final DatumWriter<C17632l1> f49741g;

    /* renamed from: h */
    public static final DatumReader<C17632l1> f49742h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49743a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49744b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49745c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49746d;

    /* renamed from: e.a.l5.a.l1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/l1$b.class */
    public static class C17634b extends SpecificRecordBuilderBase<C17632l1> implements RecordBuilder<C17632l1> {

        /* renamed from: a */
        public CharSequence f49747a;

        /* renamed from: b */
        public CharSequence f49748b;

        public C17634b(C17633a c17633a) {
            super(C17632l1.f49739e);
        }

        /* renamed from: a */
        public C17632l1 build() {
            try {
                C17632l1 c17632l1 = new C17632l1();
                c17632l1.f49743a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17632l1.f49744b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17632l1.f49745c = fieldSetFlags()[2] ? this.f49747a : (CharSequence) defaultValue(fields()[2]);
                c17632l1.f49746d = fieldSetFlags()[3] ? this.f49748b : (CharSequence) defaultValue(fields()[3]);
                return c17632l1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppPCActionOnInCallUI\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"Action name for user performed action on the in call ui screen\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"}]}");
        f49739e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49740f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49740f, m8613i0);
        f49741g = f49740f.createDatumWriter(m8613i0);
        f49742h = f49740f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49743a = null;
            } else {
                if (this.f49743a == null) {
                    this.f49743a = new C17638l3();
                }
                this.f49743a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49744b = null;
            } else {
                if (this.f49744b == null) {
                    this.f49744b = new ClientHeaderV2();
                }
                this.f49744b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49745c;
            this.f49745c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49746d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49746d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f49745c;
                        this.f49745c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49746d;
                        this.f49746d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49744b = null;
                } else {
                    if (this.f49744b == null) {
                        this.f49744b = new ClientHeaderV2();
                    }
                    this.f49744b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49743a = null;
            } else {
                if (this.f49743a == null) {
                    this.f49743a = new C17638l3();
                }
                this.f49743a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49743a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49743a.customEncode(encoder);
        }
        if (this.f49744b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49744b.customEncode(encoder);
        }
        encoder.writeString(this.f49745c);
        encoder.writeString(this.f49746d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49744b;
            }
            if (i == 2) {
                return this.f49745c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49746d;
        }
        return this.f49743a;
    }

    public Schema getSchema() {
        return f49739e;
    }

    public SpecificData getSpecificData() {
        return f49740f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49743a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49744b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49745c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49746d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49742h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49741g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
