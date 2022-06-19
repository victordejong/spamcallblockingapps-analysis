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
/* renamed from: e.a.l5.a.d0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/d0.class */
public class C17487d0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49036e;

    /* renamed from: f */
    public static SpecificData f49037f;

    /* renamed from: g */
    public static final DatumWriter<C17487d0> f49038g;

    /* renamed from: h */
    public static final DatumReader<C17487d0> f49039h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49040a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49041b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49042c;
    @Deprecated

    /* renamed from: d */
    public boolean f49043d;

    /* renamed from: e.a.l5.a.d0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/d0$b.class */
    public static class C17489b extends SpecificRecordBuilderBase<C17487d0> implements RecordBuilder<C17487d0> {

        /* renamed from: a */
        public CharSequence f49044a;

        /* renamed from: b */
        public boolean f49045b;

        public C17489b(C17488a c17488a) {
            super(C17487d0.f49036e);
        }

        /* renamed from: a */
        public C17487d0 build() {
            try {
                C17487d0 c17487d0 = new C17487d0();
                c17487d0.f49040a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17487d0.f49041b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17487d0.f49042c = fieldSetFlags()[2] ? this.f49044a : (CharSequence) defaultValue(fields()[2]);
                c17487d0.f49043d = fieldSetFlags()[3] ? this.f49045b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                return c17487d0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallerIdNotificationReceived\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"pushId\",\"type\":\"string\"},{\"name\":\"ignored\",\"type\":\"boolean\"}]}");
        f49036e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49037f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49037f, m8613i0);
        f49038g = f49037f.createDatumWriter(m8613i0);
        f49039h = f49037f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49040a = null;
            } else {
                if (this.f49040a == null) {
                    this.f49040a = new C17638l3();
                }
                this.f49040a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49041b = null;
            } else {
                if (this.f49041b == null) {
                    this.f49041b = new ClientHeaderV2();
                }
                this.f49041b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49042c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49042c = resolvingDecoder.readString(utf8);
            this.f49043d = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f49042c;
                        this.f49042c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f49043d = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49041b = null;
                } else {
                    if (this.f49041b == null) {
                        this.f49041b = new ClientHeaderV2();
                    }
                    this.f49041b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49040a = null;
            } else {
                if (this.f49040a == null) {
                    this.f49040a = new C17638l3();
                }
                this.f49040a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49040a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49040a.customEncode(encoder);
        }
        if (this.f49041b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49041b.customEncode(encoder);
        }
        encoder.writeString(this.f49042c);
        encoder.writeBoolean(this.f49043d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49041b;
            }
            if (i == 2) {
                return this.f49042c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f49043d);
        }
        return this.f49040a;
    }

    public Schema getSchema() {
        return f49036e;
    }

    public SpecificData getSpecificData() {
        return f49037f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49040a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49041b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49042c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49043d = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49039h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49038g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
