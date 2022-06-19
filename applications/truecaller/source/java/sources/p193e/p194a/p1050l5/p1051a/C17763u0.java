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
/* renamed from: e.a.l5.a.u0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/u0.class */
public class C17763u0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: m */
    public static final Schema f50389m;

    /* renamed from: n */
    public static SpecificData f50390n;

    /* renamed from: o */
    public static final DatumWriter<C17763u0> f50391o;

    /* renamed from: p */
    public static final DatumReader<C17763u0> f50392p;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50393a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50394b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50395c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50396d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50397e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50398f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50399g;
    @Deprecated

    /* renamed from: h */
    public boolean f50400h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50401i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f50402j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f50403k;
    @Deprecated

    /* renamed from: l */
    public CharSequence f50404l;

    /* renamed from: e.a.l5.a.u0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/u0$b.class */
    public static class C17765b extends SpecificRecordBuilderBase<C17763u0> implements RecordBuilder<C17763u0> {

        /* renamed from: a */
        public CharSequence f50405a;

        /* renamed from: b */
        public CharSequence f50406b;

        /* renamed from: c */
        public CharSequence f50407c;

        /* renamed from: d */
        public CharSequence f50408d;

        /* renamed from: e */
        public CharSequence f50409e;

        /* renamed from: f */
        public boolean f50410f;

        /* renamed from: g */
        public CharSequence f50411g;

        /* renamed from: h */
        public CharSequence f50412h;

        /* renamed from: i */
        public CharSequence f50413i;

        /* renamed from: j */
        public CharSequence f50414j;

        public C17765b(C17764a c17764a) {
            super(C17763u0.f50389m);
        }

        /* renamed from: a */
        public C17763u0 build() {
            try {
                C17763u0 c17763u0 = new C17763u0();
                c17763u0.f50393a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17763u0.f50394b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17763u0.f50395c = fieldSetFlags()[2] ? this.f50405a : (CharSequence) defaultValue(fields()[2]);
                c17763u0.f50396d = fieldSetFlags()[3] ? this.f50406b : (CharSequence) defaultValue(fields()[3]);
                c17763u0.f50397e = fieldSetFlags()[4] ? this.f50407c : (CharSequence) defaultValue(fields()[4]);
                c17763u0.f50398f = fieldSetFlags()[5] ? this.f50408d : (CharSequence) defaultValue(fields()[5]);
                c17763u0.f50399g = fieldSetFlags()[6] ? this.f50409e : (CharSequence) defaultValue(fields()[6]);
                c17763u0.f50400h = fieldSetFlags()[7] ? this.f50410f : ((Boolean) defaultValue(fields()[7])).booleanValue();
                c17763u0.f50401i = fieldSetFlags()[8] ? this.f50411g : (CharSequence) defaultValue(fields()[8]);
                c17763u0.f50402j = fieldSetFlags()[9] ? this.f50412h : (CharSequence) defaultValue(fields()[9]);
                c17763u0.f50403k = fieldSetFlags()[10] ? this.f50413i : (CharSequence) defaultValue(fields()[10]);
                c17763u0.f50404l = fieldSetFlags()[11] ? this.f50414j : (CharSequence) defaultValue(fields()[11]);
                return c17763u0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImIncoming\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"IM messages received by the client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"peerId\",\"type\":\"string\",\"doc\":\"Im id of sender, on group messages pass in member's id\"},{\"name\":\"groupId\",\"type\":[\"null\",\"string\"],\"doc\":\"Group's im id if message is coming from one\"},{\"name\":\"senderType\",\"type\":\"string\",\"doc\":\"peer | mass | business\"},{\"name\":\"attachmentType\",\"type\":[\"null\",\"string\"],\"doc\":\"Audio|Image|Location|VCard|Video|Emoji , Hint: base it on the suffix of protobuf name for new types\"},{\"name\":\"mimeType\",\"type\":[\"null\",\"string\"],\"doc\":\"Mime type of the attachment if applicable eg application/pdf | image/png\"},{\"name\":\"hasText\",\"type\":\"boolean\",\"doc\":\"False if the message content is media only, true if it's a text message or media message with text\"},{\"name\":\"messageId\",\"type\":\"string\",\"doc\":\"Server assigned im message id\"},{\"name\":\"senderVisibility\",\"type\":\"string\",\"doc\":\"Whether sender is hiding their phone number from the recipient, values: hidden | visible\"},{\"name\":\"category\",\"type\":\"string\",\"doc\":\"Placement of the message in inbox eg personal | promotional | spam *\"},{\"name\":\"urgency\",\"type\":\"string\",\"doc\":\"Denotes whether message has urgent notion, values: urgent | regular\"}]}");
        f50389m = m8613i0;
        SpecificData specificData = new SpecificData();
        f50390n = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50390n, m8613i0);
        f50391o = f50390n.createDatumWriter(m8613i0);
        f50392p = f50390n.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50393a = null;
            } else {
                if (this.f50393a == null) {
                    this.f50393a = new C17638l3();
                }
                this.f50393a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50394b = null;
            } else {
                if (this.f50394b == null) {
                    this.f50394b = new ClientHeaderV2();
                }
                this.f50394b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50395c;
            this.f50395c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50396d = null;
            } else {
                Utf8 utf82 = this.f50396d;
                this.f50396d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            Utf8 utf83 = this.f50397e;
            this.f50397e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50398f = null;
            } else {
                Utf8 utf84 = this.f50398f;
                this.f50398f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50399g = null;
            } else {
                Utf8 utf85 = this.f50399g;
                this.f50399g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            this.f50400h = resolvingDecoder.readBoolean();
            Utf8 utf86 = this.f50401i;
            this.f50401i = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            Utf8 utf87 = this.f50402j;
            this.f50402j = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            Utf8 utf88 = this.f50403k;
            this.f50403k = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            Utf8 utf89 = this.f50404l;
            Utf8 utf810 = null;
            if (utf89 instanceof Utf8) {
                utf810 = utf89;
            }
            this.f50404l = resolvingDecoder.readString(utf810);
            return;
        }
        for (int i = 0; i < 12; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50393a = null;
                        break;
                    } else {
                        if (this.f50393a == null) {
                            this.f50393a = new C17638l3();
                        }
                        this.f50393a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50394b = null;
                        break;
                    } else {
                        if (this.f50394b == null) {
                            this.f50394b = new ClientHeaderV2();
                        }
                        this.f50394b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf811 = this.f50395c;
                    this.f50395c = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50396d = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f50396d;
                        this.f50396d = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 4:
                    Utf8 utf813 = this.f50397e;
                    this.f50397e = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50398f = null;
                        break;
                    } else {
                        Utf8 utf814 = this.f50398f;
                        this.f50398f = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50399g = null;
                        break;
                    } else {
                        Utf8 utf815 = this.f50399g;
                        this.f50399g = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                        break;
                    }
                case 7:
                    this.f50400h = resolvingDecoder.readBoolean();
                    break;
                case 8:
                    Utf8 utf816 = this.f50401i;
                    this.f50401i = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                    break;
                case 9:
                    Utf8 utf817 = this.f50402j;
                    this.f50402j = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                    break;
                case 10:
                    Utf8 utf818 = this.f50403k;
                    this.f50403k = resolvingDecoder.readString(utf818 instanceof Utf8 ? utf818 : null);
                    break;
                case 11:
                    Utf8 utf819 = this.f50404l;
                    this.f50404l = resolvingDecoder.readString(utf819 instanceof Utf8 ? utf819 : null);
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50393a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50393a.customEncode(encoder);
        }
        if (this.f50394b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50394b.customEncode(encoder);
        }
        encoder.writeString(this.f50395c);
        if (this.f50396d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50396d);
        }
        encoder.writeString(this.f50397e);
        if (this.f50398f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50398f);
        }
        if (this.f50399g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50399g);
        }
        encoder.writeBoolean(this.f50400h);
        encoder.writeString(this.f50401i);
        encoder.writeString(this.f50402j);
        encoder.writeString(this.f50403k);
        encoder.writeString(this.f50404l);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50393a;
            case 1:
                return this.f50394b;
            case 2:
                return this.f50395c;
            case 3:
                return this.f50396d;
            case 4:
                return this.f50397e;
            case 5:
                return this.f50398f;
            case 6:
                return this.f50399g;
            case 7:
                return Boolean.valueOf(this.f50400h);
            case 8:
                return this.f50401i;
            case 9:
                return this.f50402j;
            case 10:
                return this.f50403k;
            case 11:
                return this.f50404l;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50389m;
    }

    public SpecificData getSpecificData() {
        return f50390n;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50393a = (C17638l3) obj;
                return;
            case 1:
                this.f50394b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50395c = (CharSequence) obj;
                return;
            case 3:
                this.f50396d = (CharSequence) obj;
                return;
            case 4:
                this.f50397e = (CharSequence) obj;
                return;
            case 5:
                this.f50398f = (CharSequence) obj;
                return;
            case 6:
                this.f50399g = (CharSequence) obj;
                return;
            case 7:
                this.f50400h = ((Boolean) obj).booleanValue();
                return;
            case 8:
                this.f50401i = (CharSequence) obj;
                return;
            case 9:
                this.f50402j = (CharSequence) obj;
                return;
            case 10:
                this.f50403k = (CharSequence) obj;
                return;
            case 11:
                this.f50404l = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50392p.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50391o.write(this, SpecificData.getEncoder(objectOutput));
    }
}
