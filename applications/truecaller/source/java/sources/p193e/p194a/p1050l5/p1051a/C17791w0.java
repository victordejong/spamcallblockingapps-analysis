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
/* renamed from: e.a.l5.a.w0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/w0.class */
public class C17791w0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: q */
    public static final Schema f50550q;

    /* renamed from: r */
    public static SpecificData f50551r;

    /* renamed from: s */
    public static final DatumWriter<C17791w0> f50552s;

    /* renamed from: t */
    public static final DatumReader<C17791w0> f50553t;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50554a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50555b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50556c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50557d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50558e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50559f;
    @Deprecated

    /* renamed from: g */
    public long f50560g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50561h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50562i;
    @Deprecated

    /* renamed from: j */
    public boolean f50563j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f50564k;
    @Deprecated

    /* renamed from: l */
    public boolean f50565l;
    @Deprecated

    /* renamed from: m */
    public boolean f50566m;
    @Deprecated

    /* renamed from: n */
    public C17654m3 f50567n;
    @Deprecated

    /* renamed from: o */
    public CharSequence f50568o;
    @Deprecated

    /* renamed from: p */
    public CharSequence f50569p;

    /* renamed from: e.a.l5.a.w0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/w0$b.class */
    public static class C17793b extends SpecificRecordBuilderBase<C17791w0> implements RecordBuilder<C17791w0> {

        /* renamed from: a */
        public CharSequence f50570a;

        /* renamed from: b */
        public CharSequence f50571b;

        /* renamed from: c */
        public CharSequence f50572c;

        /* renamed from: d */
        public CharSequence f50573d;

        /* renamed from: e */
        public long f50574e;

        /* renamed from: f */
        public CharSequence f50575f;

        /* renamed from: g */
        public CharSequence f50576g;

        /* renamed from: h */
        public boolean f50577h;

        /* renamed from: i */
        public CharSequence f50578i;

        /* renamed from: j */
        public boolean f50579j;

        /* renamed from: k */
        public boolean f50580k;

        /* renamed from: l */
        public C17654m3 f50581l;

        /* renamed from: m */
        public CharSequence f50582m;

        /* renamed from: n */
        public CharSequence f50583n;

        public C17793b(C17792a c17792a) {
            super(C17791w0.f50550q);
        }

        /* JADX WARN: Type inference failed for: r0v122, types: [long] */
        /* JADX WARN: Type inference failed for: r0v124, types: [long] */
        /* renamed from: a */
        public C17791w0 build() {
            try {
                C17791w0 c17791w0 = new C17791w0();
                c17791w0.f50554a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17791w0.f50555b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17791w0.f50556c = fieldSetFlags()[2] ? this.f50570a : (CharSequence) defaultValue(fields()[2]);
                c17791w0.f50557d = fieldSetFlags()[3] ? this.f50571b : (CharSequence) defaultValue(fields()[3]);
                c17791w0.f50558e = fieldSetFlags()[4] ? this.f50572c : (CharSequence) defaultValue(fields()[4]);
                c17791w0.f50559f = fieldSetFlags()[5] ? this.f50573d : (CharSequence) defaultValue(fields()[5]);
                c17791w0.f50560g = fieldSetFlags()[6] ? this.f50574e : ((Long) defaultValue(fields()[6])).longValue();
                c17791w0.f50561h = fieldSetFlags()[7] ? this.f50575f : (CharSequence) defaultValue(fields()[7]);
                c17791w0.f50562i = fieldSetFlags()[8] ? this.f50576g : (CharSequence) defaultValue(fields()[8]);
                c17791w0.f50563j = fieldSetFlags()[9] ? this.f50577h : ((Boolean) defaultValue(fields()[9])).booleanValue();
                c17791w0.f50564k = fieldSetFlags()[10] ? this.f50578i : (CharSequence) defaultValue(fields()[10]);
                c17791w0.f50565l = fieldSetFlags()[11] ? this.f50579j : ((Boolean) defaultValue(fields()[11])).booleanValue();
                c17791w0.f50566m = fieldSetFlags()[12] ? this.f50580k : ((Boolean) defaultValue(fields()[12])).booleanValue();
                c17791w0.f50567n = fieldSetFlags()[13] ? this.f50581l : (C17654m3) defaultValue(fields()[13]);
                c17791w0.f50568o = fieldSetFlags()[14] ? this.f50582m : (CharSequence) defaultValue(fields()[14]);
                c17791w0.f50569p = fieldSetFlags()[15] ? this.f50583n : (CharSequence) defaultValue(fields()[15]);
                return c17791w0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImMessageRead\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"IM messages read or marked as read in the client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"imId\",\"type\":\"string\",\"doc\":\"Im id of the sender\"},{\"name\":\"groupId\",\"type\":[\"null\",\"string\"],\"doc\":\"The group's im id if message is coming from one\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The screen where im message was read or marked as read eg notification | conversation | inbox\"},{\"name\":\"marking\",\"type\":\"string\",\"doc\":\"'auto' when user visited the conversation screen and read message\\n    'markAsRead' when action is triggered via menu actions.\"},{\"name\":\"receivedTimestamp\",\"type\":\"long\",\"doc\":\"Epoch timestamp in secs at which message was received by the client\"},{\"name\":\"attachmentType\",\"type\":[\"null\",\"string\"],\"doc\":\"Audio|Image|Location|VCard|Video|Emoji , Hint: base it on the suffix of protobuf name for new types\"},{\"name\":\"mimeType\",\"type\":[\"null\",\"string\"],\"doc\":\"Mime type of the attachment if applicable eg application/pdf, image/png\"},{\"name\":\"hasText\",\"type\":\"boolean\",\"doc\":\"False if the message content is media only, true if it's a text message or media message with text\"},{\"name\":\"messageId\",\"type\":\"string\",\"doc\":\"Server assigned identifier for the message\"},{\"name\":\"isNumberHidden\",\"type\":\"boolean\",\"doc\":\"True if sender is hiding their number from the recipient\"},{\"name\":\"isBusinessMessage\",\"type\":\"boolean\",\"doc\":\"True if sender is a business partner broadcasting their content\"},{\"name\":\"info\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}],\"doc\":\"Metadata of sender including spam score and user filters\",\"default\":null},{\"name\":\"categorizedAs\",\"type\":\"string\",\"doc\":\"Placement of the message in inbox eg personal | business | spam | otp *\",\"default\":\"\"},{\"name\":\"urgency\",\"type\":[\"null\",\"string\"],\"doc\":\"Denotes whether message has urgent notion, values: urgent, regular\",\"default\":null}]}");
        f50550q = m8613i0;
        SpecificData specificData = new SpecificData();
        f50551r = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50551r, m8613i0);
        f50552s = f50551r.createDatumWriter(m8613i0);
        f50553t = f50551r.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50554a = null;
            } else {
                if (this.f50554a == null) {
                    this.f50554a = new C17638l3();
                }
                this.f50554a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50555b = null;
            } else {
                if (this.f50555b == null) {
                    this.f50555b = new ClientHeaderV2();
                }
                this.f50555b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50556c;
            this.f50556c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50557d = null;
            } else {
                Utf8 utf82 = this.f50557d;
                this.f50557d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            Utf8 utf83 = this.f50558e;
            this.f50558e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50559f;
            this.f50559f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f50560g = resolvingDecoder.readLong();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50561h = null;
            } else {
                Utf8 utf85 = this.f50561h;
                this.f50561h = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50562i = null;
            } else {
                Utf8 utf86 = this.f50562i;
                this.f50562i = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            this.f50563j = resolvingDecoder.readBoolean();
            Utf8 utf87 = this.f50564k;
            this.f50564k = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            this.f50565l = resolvingDecoder.readBoolean();
            this.f50566m = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50567n = null;
            } else {
                if (this.f50567n == null) {
                    this.f50567n = new C17654m3();
                }
                this.f50567n.customDecode(resolvingDecoder);
            }
            Utf8 utf88 = this.f50568o;
            this.f50568o = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50569p = null;
                return;
            }
            Utf8 utf89 = this.f50569p;
            Utf8 utf810 = null;
            if (utf89 instanceof Utf8) {
                utf810 = utf89;
            }
            this.f50569p = resolvingDecoder.readString(utf810);
            return;
        }
        for (int i = 0; i < 16; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50554a = null;
                        break;
                    } else {
                        if (this.f50554a == null) {
                            this.f50554a = new C17638l3();
                        }
                        this.f50554a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50555b = null;
                        break;
                    } else {
                        if (this.f50555b == null) {
                            this.f50555b = new ClientHeaderV2();
                        }
                        this.f50555b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf811 = this.f50556c;
                    this.f50556c = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50557d = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f50557d;
                        this.f50557d = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 4:
                    Utf8 utf813 = this.f50558e;
                    this.f50558e = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 5:
                    Utf8 utf814 = this.f50559f;
                    this.f50559f = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                    break;
                case 6:
                    this.f50560g = resolvingDecoder.readLong();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50561h = null;
                        break;
                    } else {
                        Utf8 utf815 = this.f50561h;
                        this.f50561h = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50562i = null;
                        break;
                    } else {
                        Utf8 utf816 = this.f50562i;
                        this.f50562i = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                        break;
                    }
                case 9:
                    this.f50563j = resolvingDecoder.readBoolean();
                    break;
                case 10:
                    Utf8 utf817 = this.f50564k;
                    this.f50564k = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                    break;
                case 11:
                    this.f50565l = resolvingDecoder.readBoolean();
                    break;
                case 12:
                    this.f50566m = resolvingDecoder.readBoolean();
                    break;
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50567n = null;
                        break;
                    } else {
                        if (this.f50567n == null) {
                            this.f50567n = new C17654m3();
                        }
                        this.f50567n.customDecode(resolvingDecoder);
                        break;
                    }
                case 14:
                    Utf8 utf818 = this.f50568o;
                    this.f50568o = resolvingDecoder.readString(utf818 instanceof Utf8 ? utf818 : null);
                    break;
                case 15:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50569p = null;
                        break;
                    } else {
                        Utf8 utf819 = this.f50569p;
                        this.f50569p = resolvingDecoder.readString(utf819 instanceof Utf8 ? utf819 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50554a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50554a.customEncode(encoder);
        }
        if (this.f50555b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50555b.customEncode(encoder);
        }
        encoder.writeString(this.f50556c);
        if (this.f50557d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50557d);
        }
        encoder.writeString(this.f50558e);
        encoder.writeString(this.f50559f);
        encoder.writeLong(this.f50560g);
        if (this.f50561h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50561h);
        }
        if (this.f50562i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50562i);
        }
        encoder.writeBoolean(this.f50563j);
        encoder.writeString(this.f50564k);
        encoder.writeBoolean(this.f50565l);
        encoder.writeBoolean(this.f50566m);
        if (this.f50567n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50567n.customEncode(encoder);
        }
        encoder.writeString(this.f50568o);
        if (this.f50569p == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50569p);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50554a;
            case 1:
                return this.f50555b;
            case 2:
                return this.f50556c;
            case 3:
                return this.f50557d;
            case 4:
                return this.f50558e;
            case 5:
                return this.f50559f;
            case 6:
                return Long.valueOf(this.f50560g);
            case 7:
                return this.f50561h;
            case 8:
                return this.f50562i;
            case 9:
                return Boolean.valueOf(this.f50563j);
            case 10:
                return this.f50564k;
            case 11:
                return Boolean.valueOf(this.f50565l);
            case 12:
                return Boolean.valueOf(this.f50566m);
            case 13:
                return this.f50567n;
            case 14:
                return this.f50568o;
            case 15:
                return this.f50569p;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50550q;
    }

    public SpecificData getSpecificData() {
        return f50551r;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50554a = (C17638l3) obj;
                return;
            case 1:
                this.f50555b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50556c = (CharSequence) obj;
                return;
            case 3:
                this.f50557d = (CharSequence) obj;
                return;
            case 4:
                this.f50558e = (CharSequence) obj;
                return;
            case 5:
                this.f50559f = (CharSequence) obj;
                return;
            case 6:
                this.f50560g = ((Long) obj).longValue();
                return;
            case 7:
                this.f50561h = (CharSequence) obj;
                return;
            case 8:
                this.f50562i = (CharSequence) obj;
                return;
            case 9:
                this.f50563j = ((Boolean) obj).booleanValue();
                return;
            case 10:
                this.f50564k = (CharSequence) obj;
                return;
            case 11:
                this.f50565l = ((Boolean) obj).booleanValue();
                return;
            case 12:
                this.f50566m = ((Boolean) obj).booleanValue();
                return;
            case 13:
                this.f50567n = (C17654m3) obj;
                return;
            case 14:
                this.f50568o = (CharSequence) obj;
                return;
            case 15:
                this.f50569p = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50553t.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50552s.write(this, SpecificData.getEncoder(objectOutput));
    }
}
