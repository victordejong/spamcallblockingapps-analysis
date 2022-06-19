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
/* renamed from: e.a.l5.a.d1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/d1.class */
public class C17490d1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: l */
    public static final Schema f49046l;

    /* renamed from: m */
    public static SpecificData f49047m;

    /* renamed from: n */
    public static final DatumWriter<C17490d1> f49048n;

    /* renamed from: o */
    public static final DatumReader<C17490d1> f49049o;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49050a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49051b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49052c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49053d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49054e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49055f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49056g;
    @Deprecated

    /* renamed from: h */
    public long f49057h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49058i;
    @Deprecated

    /* renamed from: j */
    public C17654m3 f49059j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f49060k;

    /* renamed from: e.a.l5.a.d1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/d1$b.class */
    public static class C17492b extends SpecificRecordBuilderBase<C17490d1> implements RecordBuilder<C17490d1> {

        /* renamed from: a */
        public CharSequence f49061a;

        /* renamed from: b */
        public CharSequence f49062b;

        /* renamed from: c */
        public CharSequence f49063c;

        /* renamed from: d */
        public CharSequence f49064d;

        /* renamed from: e */
        public CharSequence f49065e;

        /* renamed from: f */
        public long f49066f;

        /* renamed from: g */
        public CharSequence f49067g;

        /* renamed from: h */
        public C17654m3 f49068h;

        /* renamed from: i */
        public CharSequence f49069i;

        public C17492b(C17491a c17491a) {
            super(C17490d1.f49046l);
        }

        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* renamed from: a */
        public C17490d1 build() {
            try {
                C17490d1 c17490d1 = new C17490d1();
                c17490d1.f49050a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17490d1.f49051b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17490d1.f49052c = fieldSetFlags()[2] ? this.f49061a : (CharSequence) defaultValue(fields()[2]);
                c17490d1.f49053d = fieldSetFlags()[3] ? this.f49062b : (CharSequence) defaultValue(fields()[3]);
                c17490d1.f49054e = fieldSetFlags()[4] ? this.f49063c : (CharSequence) defaultValue(fields()[4]);
                c17490d1.f49055f = fieldSetFlags()[5] ? this.f49064d : (CharSequence) defaultValue(fields()[5]);
                c17490d1.f49056g = fieldSetFlags()[6] ? this.f49065e : (CharSequence) defaultValue(fields()[6]);
                c17490d1.f49057h = fieldSetFlags()[7] ? this.f49066f : ((Long) defaultValue(fields()[7])).longValue();
                c17490d1.f49058i = fieldSetFlags()[8] ? this.f49067g : (CharSequence) defaultValue(fields()[8]);
                c17490d1.f49059j = fieldSetFlags()[9] ? this.f49068h : (C17654m3) defaultValue(fields()[9]);
                c17490d1.f49060k = fieldSetFlags()[10] ? this.f49069i : (CharSequence) defaultValue(fields()[10]);
                return c17490d1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppMessageReadV2\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"SMS & MMS messages read or marked as read in the client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\",\"doc\":\"User unique identifier. Will be used to correlate this incoming message with its corresponding appsearchvx event.\"},{\"name\":\"messageType\",\"type\":\"string\",\"doc\":\"sms | mms | call | flash. Im messages should be logged under AppImMessageRead\"},{\"name\":\"senderType\",\"type\":\"string\",\"doc\":\"alphanum | phone_number\"},{\"name\":\"senderId\",\"type\":\"string\",\"doc\":\"Sender/caller's phone number or user code.\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The screen where message was read or marked as read eg notification | conversation | inbox\"},{\"name\":\"receivedTimestamp\",\"type\":\"long\",\"doc\":\"Epoch timestamp in secs at which message was received by the client\"},{\"name\":\"marking\",\"type\":\"string\",\"doc\":\"'auto' when user visited the conversation screen and read message\\n    'markAsRead' when action is triggered via menu actions.\"},{\"name\":\"info\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}],\"doc\":\"Metadata of sender including spam score and user filters\",\"default\":null},{\"name\":\"categorizedAs\",\"type\":\"string\",\"doc\":\"Placement of the message in inbox ie personal | business | spam | otp *\",\"default\":\"\"}]}");
        f49046l = m8613i0;
        SpecificData specificData = new SpecificData();
        f49047m = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49047m, m8613i0);
        f49048n = f49047m.createDatumWriter(m8613i0);
        f49049o = f49047m.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49050a = null;
            } else {
                if (this.f49050a == null) {
                    this.f49050a = new C17638l3();
                }
                this.f49050a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49051b = null;
            } else {
                if (this.f49051b == null) {
                    this.f49051b = new ClientHeaderV2();
                }
                this.f49051b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49052c;
            this.f49052c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49053d;
            this.f49053d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49054e;
            this.f49054e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49055f;
            this.f49055f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49056g;
            this.f49056g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            this.f49057h = resolvingDecoder.readLong();
            Utf8 utf86 = this.f49058i;
            this.f49058i = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49059j = null;
            } else {
                if (this.f49059j == null) {
                    this.f49059j = new C17654m3();
                }
                this.f49059j.customDecode(resolvingDecoder);
            }
            Utf8 utf87 = this.f49060k;
            Utf8 utf88 = null;
            if (utf87 instanceof Utf8) {
                utf88 = utf87;
            }
            this.f49060k = resolvingDecoder.readString(utf88);
            return;
        }
        for (int i = 0; i < 11; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49050a = null;
                        break;
                    } else {
                        if (this.f49050a == null) {
                            this.f49050a = new C17638l3();
                        }
                        this.f49050a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49051b = null;
                        break;
                    } else {
                        if (this.f49051b == null) {
                            this.f49051b = new ClientHeaderV2();
                        }
                        this.f49051b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf89 = this.f49052c;
                    this.f49052c = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 3:
                    Utf8 utf810 = this.f49053d;
                    this.f49053d = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 4:
                    Utf8 utf811 = this.f49054e;
                    this.f49054e = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 5:
                    Utf8 utf812 = this.f49055f;
                    this.f49055f = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 6:
                    Utf8 utf813 = this.f49056g;
                    this.f49056g = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 7:
                    this.f49057h = resolvingDecoder.readLong();
                    break;
                case 8:
                    Utf8 utf814 = this.f49058i;
                    this.f49058i = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                    break;
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49059j = null;
                        break;
                    } else {
                        if (this.f49059j == null) {
                            this.f49059j = new C17654m3();
                        }
                        this.f49059j.customDecode(resolvingDecoder);
                        break;
                    }
                case 10:
                    Utf8 utf815 = this.f49060k;
                    this.f49060k = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49050a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49050a.customEncode(encoder);
        }
        if (this.f49051b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49051b.customEncode(encoder);
        }
        encoder.writeString(this.f49052c);
        encoder.writeString(this.f49053d);
        encoder.writeString(this.f49054e);
        encoder.writeString(this.f49055f);
        encoder.writeString(this.f49056g);
        encoder.writeLong(this.f49057h);
        encoder.writeString(this.f49058i);
        if (this.f49059j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49059j.customEncode(encoder);
        }
        encoder.writeString(this.f49060k);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49050a;
            case 1:
                return this.f49051b;
            case 2:
                return this.f49052c;
            case 3:
                return this.f49053d;
            case 4:
                return this.f49054e;
            case 5:
                return this.f49055f;
            case 6:
                return this.f49056g;
            case 7:
                return Long.valueOf(this.f49057h);
            case 8:
                return this.f49058i;
            case 9:
                return this.f49059j;
            case 10:
                return this.f49060k;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49046l;
    }

    public SpecificData getSpecificData() {
        return f49047m;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49050a = (C17638l3) obj;
                return;
            case 1:
                this.f49051b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49052c = (CharSequence) obj;
                return;
            case 3:
                this.f49053d = (CharSequence) obj;
                return;
            case 4:
                this.f49054e = (CharSequence) obj;
                return;
            case 5:
                this.f49055f = (CharSequence) obj;
                return;
            case 6:
                this.f49056g = (CharSequence) obj;
                return;
            case 7:
                this.f49057h = ((Long) obj).longValue();
                return;
            case 8:
                this.f49058i = (CharSequence) obj;
                return;
            case 9:
                this.f49059j = (C17654m3) obj;
                return;
            case 10:
                this.f49060k = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49049o.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49048n.write(this, SpecificData.getEncoder(objectOutput));
    }
}
