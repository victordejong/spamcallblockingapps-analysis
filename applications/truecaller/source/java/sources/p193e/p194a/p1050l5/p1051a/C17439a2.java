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
/* renamed from: e.a.l5.a.a2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a2.class */
public class C17439a2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f48842e;

    /* renamed from: f */
    public static SpecificData f48843f;

    /* renamed from: g */
    public static final DatumWriter<C17439a2> f48844g;

    /* renamed from: h */
    public static final DatumReader<C17439a2> f48845h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48846a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48847b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48848c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48849d;

    /* renamed from: e.a.l5.a.a2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/a2$b.class */
    public static class C17441b extends SpecificRecordBuilderBase<C17439a2> implements RecordBuilder<C17439a2> {

        /* renamed from: a */
        public CharSequence f48850a;

        /* renamed from: b */
        public CharSequence f48851b;

        public C17441b(C17440a c17440a) {
            super(C17439a2.f48842e);
        }

        /* renamed from: a */
        public C17439a2 build() {
            try {
                C17439a2 c17439a2 = new C17439a2();
                c17439a2.f48846a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17439a2.f48847b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17439a2.f48848c = fieldSetFlags()[2] ? this.f48850a : (CharSequence) defaultValue(fields()[2]);
                c17439a2.f48849d = fieldSetFlags()[3] ? this.f48851b : (CharSequence) defaultValue(fields()[3]);
                return c17439a2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17441b m16029b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f48850a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17441b m16028c(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f48851b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSettingState\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"settingName\",\"type\":\"string\"},{\"name\":\"settingValue\",\"type\":\"string\"}]}");
        f48842e = m8613i0;
        SpecificData specificData = new SpecificData();
        f48843f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48843f, m8613i0);
        f48844g = f48843f.createDatumWriter(m8613i0);
        f48845h = f48843f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17441b m16031a() {
        return new C17441b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48846a = null;
            } else {
                if (this.f48846a == null) {
                    this.f48846a = new C17638l3();
                }
                this.f48846a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48847b = null;
            } else {
                if (this.f48847b == null) {
                    this.f48847b = new ClientHeaderV2();
                }
                this.f48847b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f48848c;
            this.f48848c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48849d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48849d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f48848c;
                        this.f48848c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f48849d;
                        this.f48849d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48847b = null;
                } else {
                    if (this.f48847b == null) {
                        this.f48847b = new ClientHeaderV2();
                    }
                    this.f48847b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48846a = null;
            } else {
                if (this.f48846a == null) {
                    this.f48846a = new C17638l3();
                }
                this.f48846a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48846a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48846a.customEncode(encoder);
        }
        if (this.f48847b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48847b.customEncode(encoder);
        }
        encoder.writeString(this.f48848c);
        encoder.writeString(this.f48849d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48847b;
            }
            if (i == 2) {
                return this.f48848c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48849d;
        }
        return this.f48846a;
    }

    public Schema getSchema() {
        return f48842e;
    }

    public SpecificData getSpecificData() {
        return f48843f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48846a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48847b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48848c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48849d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48845h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48844g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
