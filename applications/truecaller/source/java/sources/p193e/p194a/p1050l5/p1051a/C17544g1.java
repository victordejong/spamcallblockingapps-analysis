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
/* renamed from: e.a.l5.a.g1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/g1.class */
public class C17544g1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49331f;

    /* renamed from: g */
    public static SpecificData f49332g;

    /* renamed from: h */
    public static final DatumWriter<C17544g1> f49333h;

    /* renamed from: i */
    public static final DatumReader<C17544g1> f49334i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49335a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49336b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49337c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49338d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49339e;

    /* renamed from: e.a.l5.a.g1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/g1$b.class */
    public static class C17546b extends SpecificRecordBuilderBase<C17544g1> implements RecordBuilder<C17544g1> {

        /* renamed from: a */
        public CharSequence f49340a;

        /* renamed from: b */
        public CharSequence f49341b;

        /* renamed from: c */
        public CharSequence f49342c;

        public C17546b(C17545a c17545a) {
            super(C17544g1.f49331f);
        }

        /* renamed from: a */
        public C17544g1 build() {
            try {
                C17544g1 c17544g1 = new C17544g1();
                c17544g1.f49335a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17544g1.f49336b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17544g1.f49337c = fieldSetFlags()[2] ? this.f49340a : (CharSequence) defaultValue(fields()[2]);
                c17544g1.f49338d = fieldSetFlags()[3] ? this.f49341b : (CharSequence) defaultValue(fields()[3]);
                c17544g1.f49339e = fieldSetFlags()[4] ? this.f49342c : (CharSequence) defaultValue(fields()[4]);
                return c17544g1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppOAuthConsentScreenInteractions\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"App event for User interactions once consent screen is rendered\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"},{\"name\":\"interactionType\",\"type\":\"string\",\"doc\":\"Type of interaction (e.g. language changed, info icon clicked)\"},{\"name\":\"requestId\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f49331f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49332g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49332g, m8613i0);
        f49333h = f49332g.createDatumWriter(m8613i0);
        f49334i = f49332g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49335a = null;
            } else {
                if (this.f49335a == null) {
                    this.f49335a = new C17638l3();
                }
                this.f49335a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49336b = null;
            } else {
                if (this.f49336b == null) {
                    this.f49336b = new ClientHeaderV2();
                }
                this.f49336b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49337c;
            this.f49337c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49338d;
            this.f49338d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49339e = null;
                return;
            }
            Utf8 utf83 = this.f49339e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f49339e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f49337c;
                        this.f49337c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 3) {
                        Utf8 utf86 = this.f49338d;
                        this.f49338d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49339e = null;
                        } else {
                            Utf8 utf87 = this.f49339e;
                            this.f49339e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49336b = null;
                } else {
                    if (this.f49336b == null) {
                        this.f49336b = new ClientHeaderV2();
                    }
                    this.f49336b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49335a = null;
            } else {
                if (this.f49335a == null) {
                    this.f49335a = new C17638l3();
                }
                this.f49335a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49335a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49335a.customEncode(encoder);
        }
        if (this.f49336b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49336b.customEncode(encoder);
        }
        encoder.writeString(this.f49337c);
        encoder.writeString(this.f49338d);
        if (this.f49339e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49339e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49336b;
            }
            if (i == 2) {
                return this.f49337c;
            }
            if (i == 3) {
                return this.f49338d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49339e;
        }
        return this.f49335a;
    }

    public Schema getSchema() {
        return f49331f;
    }

    public SpecificData getSpecificData() {
        return f49332g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49335a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49336b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49337c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49338d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49339e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49334i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49333h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
