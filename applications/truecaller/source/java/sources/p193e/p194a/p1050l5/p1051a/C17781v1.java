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
/* renamed from: e.a.l5.a.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/v1.class */
public class C17781v1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50510e;

    /* renamed from: f */
    public static SpecificData f50511f;

    /* renamed from: g */
    public static final DatumWriter<C17781v1> f50512g;

    /* renamed from: h */
    public static final DatumReader<C17781v1> f50513h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50514a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50515b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50516c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50517d;

    /* renamed from: e.a.l5.a.v1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/v1$b.class */
    public static class C17783b extends SpecificRecordBuilderBase<C17781v1> implements RecordBuilder<C17781v1> {

        /* renamed from: a */
        public CharSequence f50518a;

        /* renamed from: b */
        public CharSequence f50519b;

        public C17783b(C17782a c17782a) {
            super(C17781v1.f50510e);
        }

        /* renamed from: a */
        public C17781v1 build() {
            try {
                C17781v1 c17781v1 = new C17781v1();
                c17781v1.f50514a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17781v1.f50515b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17781v1.f50516c = fieldSetFlags()[2] ? this.f50518a : (CharSequence) defaultValue(fields()[2]);
                c17781v1.f50517d = fieldSetFlags()[3] ? this.f50519b : (CharSequence) defaultValue(fields()[3]);
                return c17781v1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppReferralReceived\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"medium\",\"type\":\"string\",\"doc\":\"The channel used for the referral SMS/WhatsApp...\"},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Source of the referral\"}]}");
        f50510e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50511f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50511f, m8613i0);
        f50512g = f50511f.createDatumWriter(m8613i0);
        f50513h = f50511f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50514a = null;
            } else {
                if (this.f50514a == null) {
                    this.f50514a = new C17638l3();
                }
                this.f50514a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50515b = null;
            } else {
                if (this.f50515b == null) {
                    this.f50515b = new ClientHeaderV2();
                }
                this.f50515b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50516c;
            this.f50516c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50517d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f50517d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f50516c;
                        this.f50516c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f50517d;
                        this.f50517d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50515b = null;
                } else {
                    if (this.f50515b == null) {
                        this.f50515b = new ClientHeaderV2();
                    }
                    this.f50515b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50514a = null;
            } else {
                if (this.f50514a == null) {
                    this.f50514a = new C17638l3();
                }
                this.f50514a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50514a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50514a.customEncode(encoder);
        }
        if (this.f50515b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50515b.customEncode(encoder);
        }
        encoder.writeString(this.f50516c);
        encoder.writeString(this.f50517d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50515b;
            }
            if (i == 2) {
                return this.f50516c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50517d;
        }
        return this.f50514a;
    }

    public Schema getSchema() {
        return f50510e;
    }

    public SpecificData getSpecificData() {
        return f50511f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50514a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50515b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50516c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50517d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50513h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50512g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
