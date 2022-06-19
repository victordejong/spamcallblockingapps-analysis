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
/* renamed from: e.a.l5.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/m.class */
public class C17642m extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49779f;

    /* renamed from: g */
    public static SpecificData f49780g;

    /* renamed from: h */
    public static final DatumWriter<C17642m> f49781h;

    /* renamed from: i */
    public static final DatumReader<C17642m> f49782i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49783a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49784b;
    @Deprecated

    /* renamed from: c */
    public boolean f49785c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49786d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49787e;

    /* renamed from: e.a.l5.a.m$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/m$b.class */
    public static class C17644b extends SpecificRecordBuilderBase<C17642m> implements RecordBuilder<C17642m> {

        /* renamed from: a */
        public boolean f49788a;

        /* renamed from: b */
        public CharSequence f49789b;

        /* renamed from: c */
        public CharSequence f49790c;

        public C17644b(C17643a c17643a) {
            super(C17642m.f49779f);
        }

        /* renamed from: a */
        public C17642m build() {
            try {
                C17642m c17642m = new C17642m();
                c17642m.f49783a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17642m.f49784b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17642m.f49785c = fieldSetFlags()[2] ? this.f49788a : ((Boolean) defaultValue(fields()[2])).booleanValue();
                c17642m.f49786d = fieldSetFlags()[3] ? this.f49789b : (CharSequence) defaultValue(fields()[3]);
                c17642m.f49787e = fieldSetFlags()[4] ? this.f49790c : (CharSequence) defaultValue(fields()[4]);
                return c17642m;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17644b m15897b(boolean z) {
            validate(fields()[2], Boolean.valueOf(z));
            this.f49788a = z;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17644b m15896c(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49790c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: d */
        public C17644b m15895d(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49789b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBusinessAdsImpression\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track name which we are using to track the ads hide/show information for verified or priority users\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"adsShown\",\"type\":\"boolean\",\"doc\":\"Track if the ad shown or not\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"Context where event was triggered\"},{\"name\":\"badgeType\",\"type\":\"string\",\"doc\":\"Badge attached to the business number\"}]}");
        f49779f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49780g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49780g, m8613i0);
        f49781h = f49780g.createDatumWriter(m8613i0);
        f49782i = f49780g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49783a = null;
            } else {
                if (this.f49783a == null) {
                    this.f49783a = new C17638l3();
                }
                this.f49783a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49784b = null;
            } else {
                if (this.f49784b == null) {
                    this.f49784b = new ClientHeaderV2();
                }
                this.f49784b.customDecode(resolvingDecoder);
            }
            this.f49785c = resolvingDecoder.readBoolean();
            Utf8 utf8 = this.f49786d;
            this.f49786d = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49787e;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49787e = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49785c = resolvingDecoder.readBoolean();
                    } else if (pos == 3) {
                        Utf8 utf84 = this.f49786d;
                        this.f49786d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49787e;
                        this.f49787e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49784b = null;
                } else {
                    if (this.f49784b == null) {
                        this.f49784b = new ClientHeaderV2();
                    }
                    this.f49784b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49783a = null;
            } else {
                if (this.f49783a == null) {
                    this.f49783a = new C17638l3();
                }
                this.f49783a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49783a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49783a.customEncode(encoder);
        }
        if (this.f49784b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49784b.customEncode(encoder);
        }
        encoder.writeBoolean(this.f49785c);
        encoder.writeString(this.f49786d);
        encoder.writeString(this.f49787e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49784b;
            }
            if (i == 2) {
                return Boolean.valueOf(this.f49785c);
            }
            if (i == 3) {
                return this.f49786d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49787e;
        }
        return this.f49783a;
    }

    public Schema getSchema() {
        return f49779f;
    }

    public SpecificData getSpecificData() {
        return f49780g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49783a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49784b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49785c = ((Boolean) obj).booleanValue();
        } else if (i == 3) {
            this.f49786d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49787e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49782i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49781h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
