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
/* renamed from: e.a.l5.a.n2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/n2.class */
public class C17666n2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49887g;

    /* renamed from: h */
    public static SpecificData f49888h;

    /* renamed from: i */
    public static final DatumWriter<C17666n2> f49889i;

    /* renamed from: j */
    public static final DatumReader<C17666n2> f49890j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49891a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49892b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49893c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49894d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49895e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49896f;

    /* renamed from: e.a.l5.a.n2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/n2$b.class */
    public static class C17668b extends SpecificRecordBuilderBase<C17666n2> implements RecordBuilder<C17666n2> {

        /* renamed from: a */
        public CharSequence f49897a;

        /* renamed from: b */
        public CharSequence f49898b;

        /* renamed from: c */
        public CharSequence f49899c;

        /* renamed from: d */
        public CharSequence f49900d;

        public C17668b(C17667a c17667a) {
            super(C17666n2.f49887g);
        }

        /* renamed from: a */
        public C17666n2 build() {
            try {
                C17666n2 c17666n2 = new C17666n2();
                c17666n2.f49891a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17666n2.f49892b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17666n2.f49893c = fieldSetFlags()[2] ? this.f49897a : (CharSequence) defaultValue(fields()[2]);
                c17666n2.f49894d = fieldSetFlags()[3] ? this.f49898b : (CharSequence) defaultValue(fields()[3]);
                c17666n2.f49895e = fieldSetFlags()[4] ? this.f49899c : (CharSequence) defaultValue(fields()[4]);
                c17666n2.f49896f = fieldSetFlags()[5] ? this.f49900d : (CharSequence) defaultValue(fields()[5]);
                return c17666n2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVerificationCallAction\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Verification drop call actions/states on the client side\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"userPhoneNumber\",\"type\":\"string\",\"doc\":\"Phone number entered for verification\"},{\"name\":\"userCountryCode\",\"type\":\"string\",\"doc\":\"Country code selected for verification\"},{\"name\":\"callAction\",\"type\":\"string\",\"doc\":\"Action on the phone call (Ringing, Rejected, Not Rejected, Answered)\"},{\"name\":\"callPhoneNumber\",\"type\":\"string\",\"doc\":\"Phone number of the phone call\"}]}");
        f49887g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49888h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49888h, m8613i0);
        f49889i = f49888h.createDatumWriter(m8613i0);
        f49890j = f49888h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49891a = null;
            } else {
                if (this.f49891a == null) {
                    this.f49891a = new C17638l3();
                }
                this.f49891a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49892b = null;
            } else {
                if (this.f49892b == null) {
                    this.f49892b = new ClientHeaderV2();
                }
                this.f49892b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49893c;
            this.f49893c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49894d;
            this.f49894d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49895e;
            this.f49895e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49896f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f49896f = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf86 = this.f49893c;
                        this.f49893c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 3) {
                        Utf8 utf87 = this.f49894d;
                        this.f49894d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos == 4) {
                        Utf8 utf88 = this.f49895e;
                        this.f49895e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf89 = this.f49896f;
                        this.f49896f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49892b = null;
                } else {
                    if (this.f49892b == null) {
                        this.f49892b = new ClientHeaderV2();
                    }
                    this.f49892b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49891a = null;
            } else {
                if (this.f49891a == null) {
                    this.f49891a = new C17638l3();
                }
                this.f49891a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49891a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49891a.customEncode(encoder);
        }
        if (this.f49892b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49892b.customEncode(encoder);
        }
        encoder.writeString(this.f49893c);
        encoder.writeString(this.f49894d);
        encoder.writeString(this.f49895e);
        encoder.writeString(this.f49896f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49892b;
            }
            if (i == 2) {
                return this.f49893c;
            }
            if (i == 3) {
                return this.f49894d;
            }
            if (i == 4) {
                return this.f49895e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49896f;
        }
        return this.f49891a;
    }

    public Schema getSchema() {
        return f49887g;
    }

    public SpecificData getSpecificData() {
        return f49888h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49891a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49892b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49893c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49894d = (CharSequence) obj;
        } else if (i == 4) {
            this.f49895e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49896f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49890j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49889i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
