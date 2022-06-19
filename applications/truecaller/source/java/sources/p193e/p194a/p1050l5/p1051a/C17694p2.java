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
/* renamed from: e.a.l5.a.p2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/p2.class */
public class C17694p2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50047f;

    /* renamed from: g */
    public static SpecificData f50048g;

    /* renamed from: h */
    public static final DatumWriter<C17694p2> f50049h;

    /* renamed from: i */
    public static final DatumReader<C17694p2> f50050i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50051a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50052b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50053c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50054d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50055e;

    /* renamed from: e.a.l5.a.p2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/p2$b.class */
    public static class C17696b extends SpecificRecordBuilderBase<C17694p2> implements RecordBuilder<C17694p2> {

        /* renamed from: a */
        public CharSequence f50056a;

        /* renamed from: b */
        public CharSequence f50057b;

        /* renamed from: c */
        public CharSequence f50058c;

        public C17696b(C17695a c17695a) {
            super(C17694p2.f50047f);
        }

        /* renamed from: a */
        public C17694p2 build() {
            try {
                C17694p2 c17694p2 = new C17694p2();
                c17694p2.f50051a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17694p2.f50052b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17694p2.f50053c = fieldSetFlags()[2] ? this.f50056a : (CharSequence) defaultValue(fields()[2]);
                c17694p2.f50054d = fieldSetFlags()[3] ? this.f50057b : (CharSequence) defaultValue(fields()[3]);
                c17694p2.f50055e = fieldSetFlags()[4] ? this.f50058c : (CharSequence) defaultValue(fields()[4]);
                return c17694p2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdOnboarding\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track each stage the user was shown throughout the onboarding flow\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Track where onboarding was triggered from.\"},{\"name\":\"step\",\"type\":\"string\",\"doc\":\"Track which step on the onboarding flow was shown.\"},{\"name\":\"onboardingId\",\"type\":\"string\",\"doc\":\"Unique identifier for each onboarding session.\"}]}");
        f50047f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50048g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50048g, m8613i0);
        f50049h = f50048g.createDatumWriter(m8613i0);
        f50050i = f50048g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50051a = null;
            } else {
                if (this.f50051a == null) {
                    this.f50051a = new C17638l3();
                }
                this.f50051a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50052b = null;
            } else {
                if (this.f50052b == null) {
                    this.f50052b = new ClientHeaderV2();
                }
                this.f50052b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50053c;
            this.f50053c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50054d;
            this.f50054d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50055e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50055e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f50053c;
                        this.f50053c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 3) {
                        Utf8 utf86 = this.f50054d;
                        this.f50054d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf87 = this.f50055e;
                        this.f50055e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50052b = null;
                } else {
                    if (this.f50052b == null) {
                        this.f50052b = new ClientHeaderV2();
                    }
                    this.f50052b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50051a = null;
            } else {
                if (this.f50051a == null) {
                    this.f50051a = new C17638l3();
                }
                this.f50051a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50051a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50051a.customEncode(encoder);
        }
        if (this.f50052b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50052b.customEncode(encoder);
        }
        encoder.writeString(this.f50053c);
        encoder.writeString(this.f50054d);
        encoder.writeString(this.f50055e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50052b;
            }
            if (i == 2) {
                return this.f50053c;
            }
            if (i == 3) {
                return this.f50054d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50055e;
        }
        return this.f50051a;
    }

    public Schema getSchema() {
        return f50047f;
    }

    public SpecificData getSpecificData() {
        return f50048g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50051a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50052b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50053c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50054d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50055e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50050i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50049h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
