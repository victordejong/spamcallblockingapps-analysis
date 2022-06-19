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
/* renamed from: e.a.l5.a.b3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/b3.class */
public class C17460b3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f48926f;

    /* renamed from: g */
    public static SpecificData f48927g;

    /* renamed from: h */
    public static final DatumWriter<C17460b3> f48928h;

    /* renamed from: i */
    public static final DatumReader<C17460b3> f48929i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48930a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48931b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48932c;
    @Deprecated

    /* renamed from: d */
    public int f48933d;
    @Deprecated

    /* renamed from: e */
    public boolean f48934e;

    /* renamed from: e.a.l5.a.b3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/b3$b.class */
    public static class C17462b extends SpecificRecordBuilderBase<C17460b3> implements RecordBuilder<C17460b3> {

        /* renamed from: a */
        public CharSequence f48935a;

        /* renamed from: b */
        public int f48936b;

        /* renamed from: c */
        public boolean f48937c;

        public C17462b(C17461a c17461a) {
            super(C17460b3.f48926f);
        }

        /* renamed from: a */
        public C17460b3 build() {
            try {
                C17460b3 c17460b3 = new C17460b3();
                c17460b3.f48930a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17460b3.f48931b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17460b3.f48932c = fieldSetFlags()[2] ? this.f48935a : (CharSequence) defaultValue(fields()[2]);
                c17460b3.f48933d = fieldSetFlags()[3] ? this.f48936b : ((Integer) defaultValue(fields()[3])).intValue();
                c17460b3.f48934e = fieldSetFlags()[4] ? this.f48937c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                return c17460b3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWCNotificationAccessGranted\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Location source where the toggle was enabled\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"isPromoShown\",\"type\":\"boolean\",\"doc\":\"Promo shown with WC card\"}]}");
        f48926f = m8613i0;
        SpecificData specificData = new SpecificData();
        f48927g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48927g, m8613i0);
        f48928h = f48927g.createDatumWriter(m8613i0);
        f48929i = f48927g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48930a = null;
            } else {
                if (this.f48930a == null) {
                    this.f48930a = new C17638l3();
                }
                this.f48930a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48931b = null;
            } else {
                if (this.f48931b == null) {
                    this.f48931b = new ClientHeaderV2();
                }
                this.f48931b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f48932c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f48932c = resolvingDecoder.readString(utf8);
            this.f48933d = resolvingDecoder.readInt();
            this.f48934e = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f48932c;
                        this.f48932c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f48933d = resolvingDecoder.readInt();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f48934e = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48931b = null;
                } else {
                    if (this.f48931b == null) {
                        this.f48931b = new ClientHeaderV2();
                    }
                    this.f48931b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48930a = null;
            } else {
                if (this.f48930a == null) {
                    this.f48930a = new C17638l3();
                }
                this.f48930a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48930a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48930a.customEncode(encoder);
        }
        if (this.f48931b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48931b.customEncode(encoder);
        }
        encoder.writeString(this.f48932c);
        encoder.writeInt(this.f48933d);
        encoder.writeBoolean(this.f48934e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48931b;
            }
            if (i == 2) {
                return this.f48932c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f48933d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f48934e);
        }
        return this.f48930a;
    }

    public Schema getSchema() {
        return f48926f;
    }

    public SpecificData getSpecificData() {
        return f48927g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48930a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48931b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48932c = (CharSequence) obj;
        } else if (i == 3) {
            this.f48933d = ((Integer) obj).intValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48934e = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48929i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48928h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
