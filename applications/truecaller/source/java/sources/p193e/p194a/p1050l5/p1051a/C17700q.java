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
/* renamed from: e.a.l5.a.q */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/q.class */
public class C17700q extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50073e;

    /* renamed from: f */
    public static SpecificData f50074f;

    /* renamed from: g */
    public static final DatumWriter<C17700q> f50075g;

    /* renamed from: h */
    public static final DatumReader<C17700q> f50076h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50077a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50078b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50079c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50080d;

    /* renamed from: e.a.l5.a.q$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/q$b.class */
    public static class C17702b extends SpecificRecordBuilderBase<C17700q> implements RecordBuilder<C17700q> {

        /* renamed from: a */
        public CharSequence f50081a;

        /* renamed from: b */
        public CharSequence f50082b;

        public C17702b(C17701a c17701a) {
            super(C17700q.f50073e);
        }

        /* renamed from: a */
        public C17700q build() {
            try {
                C17700q c17700q = new C17700q();
                c17700q.f50077a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17700q.f50078b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17700q.f50079c = fieldSetFlags()[2] ? this.f50081a : (CharSequence) defaultValue(fields()[2]);
                c17700q.f50080d = fieldSetFlags()[3] ? this.f50082b : (CharSequence) defaultValue(fields()[3]);
                return c17700q;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBuyProClick\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"subscriptionType\",\"type\":\"string\"},{\"name\":\"correlationId\",\"type\":\"string\"}]}");
        f50073e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50074f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50074f, m8613i0);
        f50075g = f50074f.createDatumWriter(m8613i0);
        f50076h = f50074f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50077a = null;
            } else {
                if (this.f50077a == null) {
                    this.f50077a = new C17638l3();
                }
                this.f50077a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50078b = null;
            } else {
                if (this.f50078b == null) {
                    this.f50078b = new ClientHeaderV2();
                }
                this.f50078b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50079c;
            this.f50079c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50080d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f50080d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f50079c;
                        this.f50079c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f50080d;
                        this.f50080d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50078b = null;
                } else {
                    if (this.f50078b == null) {
                        this.f50078b = new ClientHeaderV2();
                    }
                    this.f50078b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50077a = null;
            } else {
                if (this.f50077a == null) {
                    this.f50077a = new C17638l3();
                }
                this.f50077a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50077a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50077a.customEncode(encoder);
        }
        if (this.f50078b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50078b.customEncode(encoder);
        }
        encoder.writeString(this.f50079c);
        encoder.writeString(this.f50080d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50078b;
            }
            if (i == 2) {
                return this.f50079c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50080d;
        }
        return this.f50077a;
    }

    public Schema getSchema() {
        return f50073e;
    }

    public SpecificData getSpecificData() {
        return f50074f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50077a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50078b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50079c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50080d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50076h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50075g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
