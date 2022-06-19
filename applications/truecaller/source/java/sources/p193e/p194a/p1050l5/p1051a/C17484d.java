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
/* renamed from: e.a.l5.a.d */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/d.class */
public class C17484d extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49022g;

    /* renamed from: h */
    public static SpecificData f49023h;

    /* renamed from: i */
    public static final DatumWriter<C17484d> f49024i;

    /* renamed from: j */
    public static final DatumReader<C17484d> f49025j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49026a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49027b;
    @Deprecated

    /* renamed from: c */
    public boolean f49028c;
    @Deprecated

    /* renamed from: d */
    public boolean f49029d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49030e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49031f;

    /* renamed from: e.a.l5.a.d$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/d$b.class */
    public static class C17486b extends SpecificRecordBuilderBase<C17484d> implements RecordBuilder<C17484d> {

        /* renamed from: a */
        public boolean f49032a;

        /* renamed from: b */
        public boolean f49033b;

        /* renamed from: c */
        public CharSequence f49034c;

        /* renamed from: d */
        public CharSequence f49035d;

        public C17486b(C17485a c17485a) {
            super(C17484d.f49022g);
        }

        /* renamed from: a */
        public C17484d build() {
            try {
                C17484d c17484d = new C17484d();
                c17484d.f49026a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17484d.f49027b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17484d.f49028c = fieldSetFlags()[2] ? this.f49032a : ((Boolean) defaultValue(fields()[2])).booleanValue();
                c17484d.f49029d = fieldSetFlags()[3] ? this.f49033b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17484d.f49030e = fieldSetFlags()[4] ? this.f49034c : (CharSequence) defaultValue(fields()[4]);
                c17484d.f49031f = fieldSetFlags()[5] ? this.f49035d : (CharSequence) defaultValue(fields()[5]);
                return c17484d;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACCallAnnounced\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"isPhoneBookContact\",\"type\":\"boolean\",\"doc\":\"Whether announced call is from phone book contact\"},{\"name\":\"announcingOnHeadset\",\"type\":\"boolean\",\"doc\":\"Whether announcement was made on headset\"},{\"name\":\"callType\",\"type\":\"string\",\"doc\":\"CallType - VOIP or PSTN\"},{\"name\":\"language\",\"type\":\"string\",\"doc\":\"Language - Two digit ISO Language code we used to initilize Text To Speech engine\"}]}");
        f49022g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49023h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49023h, m8613i0);
        f49024i = f49023h.createDatumWriter(m8613i0);
        f49025j = f49023h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49026a = null;
            } else {
                if (this.f49026a == null) {
                    this.f49026a = new C17638l3();
                }
                this.f49026a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49027b = null;
            } else {
                if (this.f49027b == null) {
                    this.f49027b = new ClientHeaderV2();
                }
                this.f49027b.customDecode(resolvingDecoder);
            }
            this.f49028c = resolvingDecoder.readBoolean();
            this.f49029d = resolvingDecoder.readBoolean();
            Utf8 utf8 = this.f49030e;
            this.f49030e = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49031f;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49031f = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49028c = resolvingDecoder.readBoolean();
                    } else if (pos == 3) {
                        this.f49029d = resolvingDecoder.readBoolean();
                    } else if (pos == 4) {
                        Utf8 utf84 = this.f49030e;
                        this.f49030e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49031f;
                        this.f49031f = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49027b = null;
                } else {
                    if (this.f49027b == null) {
                        this.f49027b = new ClientHeaderV2();
                    }
                    this.f49027b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49026a = null;
            } else {
                if (this.f49026a == null) {
                    this.f49026a = new C17638l3();
                }
                this.f49026a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49026a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49026a.customEncode(encoder);
        }
        if (this.f49027b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49027b.customEncode(encoder);
        }
        encoder.writeBoolean(this.f49028c);
        encoder.writeBoolean(this.f49029d);
        encoder.writeString(this.f49030e);
        encoder.writeString(this.f49031f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49027b;
            }
            if (i == 2) {
                return Boolean.valueOf(this.f49028c);
            }
            if (i == 3) {
                return Boolean.valueOf(this.f49029d);
            }
            if (i == 4) {
                return this.f49030e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49031f;
        }
        return this.f49026a;
    }

    public Schema getSchema() {
        return f49022g;
    }

    public SpecificData getSpecificData() {
        return f49023h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49026a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49027b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49028c = ((Boolean) obj).booleanValue();
        } else if (i == 3) {
            this.f49029d = ((Boolean) obj).booleanValue();
        } else if (i == 4) {
            this.f49030e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49031f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49025j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49024i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
