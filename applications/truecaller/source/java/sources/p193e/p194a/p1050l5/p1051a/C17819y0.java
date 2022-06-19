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
/* renamed from: e.a.l5.a.y0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/y0.class */
public class C17819y0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: o */
    public static final Schema f50681o;

    /* renamed from: p */
    public static SpecificData f50682p;

    /* renamed from: q */
    public static final DatumWriter<C17819y0> f50683q;

    /* renamed from: r */
    public static final DatumReader<C17819y0> f50684r;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50685a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50686b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50687c;
    @Deprecated

    /* renamed from: d */
    public boolean f50688d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50689e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50690f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50691g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50692h;
    @Deprecated

    /* renamed from: i */
    public boolean f50693i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f50694j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f50695k;
    @Deprecated

    /* renamed from: l */
    public Integer f50696l;
    @Deprecated

    /* renamed from: m */
    public boolean f50697m;
    @Deprecated

    /* renamed from: n */
    public CharSequence f50698n;

    /* renamed from: e.a.l5.a.y0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/y0$b.class */
    public static class C17821b extends SpecificRecordBuilderBase<C17819y0> implements RecordBuilder<C17819y0> {

        /* renamed from: a */
        public CharSequence f50699a;

        /* renamed from: b */
        public boolean f50700b;

        /* renamed from: c */
        public CharSequence f50701c;

        /* renamed from: d */
        public CharSequence f50702d;

        /* renamed from: e */
        public CharSequence f50703e;

        /* renamed from: f */
        public CharSequence f50704f;

        /* renamed from: g */
        public boolean f50705g;

        /* renamed from: h */
        public CharSequence f50706h;

        /* renamed from: i */
        public CharSequence f50707i;

        /* renamed from: j */
        public Integer f50708j;

        /* renamed from: k */
        public boolean f50709k;

        /* renamed from: l */
        public CharSequence f50710l;

        public C17821b(C17820a c17820a) {
            super(C17819y0.f50681o);
        }

        /* renamed from: a */
        public C17819y0 build() {
            try {
                C17819y0 c17819y0 = new C17819y0();
                c17819y0.f50685a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17819y0.f50686b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17819y0.f50687c = fieldSetFlags()[2] ? this.f50699a : (CharSequence) defaultValue(fields()[2]);
                c17819y0.f50688d = fieldSetFlags()[3] ? this.f50700b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17819y0.f50689e = fieldSetFlags()[4] ? this.f50701c : (CharSequence) defaultValue(fields()[4]);
                c17819y0.f50690f = fieldSetFlags()[5] ? this.f50702d : (CharSequence) defaultValue(fields()[5]);
                c17819y0.f50691g = fieldSetFlags()[6] ? this.f50703e : (CharSequence) defaultValue(fields()[6]);
                c17819y0.f50692h = fieldSetFlags()[7] ? this.f50704f : (CharSequence) defaultValue(fields()[7]);
                c17819y0.f50693i = fieldSetFlags()[8] ? this.f50705g : ((Boolean) defaultValue(fields()[8])).booleanValue();
                c17819y0.f50694j = fieldSetFlags()[9] ? this.f50706h : (CharSequence) defaultValue(fields()[9]);
                c17819y0.f50695k = fieldSetFlags()[10] ? this.f50707i : (CharSequence) defaultValue(fields()[10]);
                c17819y0.f50696l = fieldSetFlags()[11] ? this.f50708j : (Integer) defaultValue(fields()[11]);
                c17819y0.f50697m = fieldSetFlags()[12] ? this.f50709k : ((Boolean) defaultValue(fields()[12])).booleanValue();
                c17819y0.f50698n = fieldSetFlags()[13] ? this.f50710l : (CharSequence) defaultValue(fields()[13]);
                return c17819y0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImSend\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"IM messages sent from the client and failure cases\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"imId\",\"type\":\"string\",\"doc\":\"Im id of the recipient\"},{\"name\":\"isGroup\",\"type\":\"boolean\",\"doc\":\"Denotes whether im id corresponds to a user or group\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The screen where im message was initiated\"},{\"name\":\"localId\",\"type\":\"string\",\"doc\":\"A client generated identifier for the message\"},{\"name\":\"attachmentType\",\"type\":[\"null\",\"string\"],\"doc\":\"Audio|Image|Location|VCard|Video|Emoji , Hint: base it on the suffix of protobuf name for new types\",\"default\":null},{\"name\":\"mimeType\",\"type\":[\"null\",\"string\"],\"doc\":\"Mime type of the attachment if applicable eg application/pdf, image/png\",\"default\":null},{\"name\":\"hasText\",\"type\":\"boolean\",\"doc\":\"False if the message content is media only, true if it's a text message or media message with text\"},{\"name\":\"messageId\",\"type\":[\"null\",\"string\"],\"doc\":\"Server assigned message id if sending was successful.\",\"default\":null},{\"name\":\"errorCode\",\"type\":[\"null\",\"string\"],\"doc\":\"Grpc and internal error codes in case sending of message failed\",\"default\":null},{\"name\":\"autoRetryCount\",\"type\":[\"null\",\"int\"],\"doc\":\"Number of times message was automatically tried to be sent according to retry policy in platform\",\"default\":null},{\"name\":\"isNumberHidden\",\"type\":\"boolean\",\"doc\":\"True if sender is hiding their number from the recipient\",\"default\":false},{\"name\":\"urgency\",\"type\":[\"null\",\"string\"],\"doc\":\"Denotes whether message has urgent notion, values: urgent, regular\",\"default\":null}]}");
        f50681o = m8613i0;
        SpecificData specificData = new SpecificData();
        f50682p = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50682p, m8613i0);
        f50683q = f50682p.createDatumWriter(m8613i0);
        f50684r = f50682p.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50685a = null;
            } else {
                if (this.f50685a == null) {
                    this.f50685a = new C17638l3();
                }
                this.f50685a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50686b = null;
            } else {
                if (this.f50686b == null) {
                    this.f50686b = new ClientHeaderV2();
                }
                this.f50686b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50687c;
            this.f50687c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f50688d = resolvingDecoder.readBoolean();
            Utf8 utf82 = this.f50689e;
            this.f50689e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50690f;
            this.f50690f = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50691g = null;
            } else {
                Utf8 utf84 = this.f50691g;
                this.f50691g = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50692h = null;
            } else {
                Utf8 utf85 = this.f50692h;
                this.f50692h = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            this.f50693i = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50694j = null;
            } else {
                Utf8 utf86 = this.f50694j;
                this.f50694j = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50695k = null;
            } else {
                Utf8 utf87 = this.f50695k;
                this.f50695k = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50696l = null;
            } else {
                this.f50696l = Integer.valueOf(resolvingDecoder.readInt());
            }
            this.f50697m = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50698n = null;
                return;
            }
            Utf8 utf88 = this.f50698n;
            Utf8 utf89 = null;
            if (utf88 instanceof Utf8) {
                utf89 = utf88;
            }
            this.f50698n = resolvingDecoder.readString(utf89);
            return;
        }
        for (int i = 0; i < 14; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50685a = null;
                        break;
                    } else {
                        if (this.f50685a == null) {
                            this.f50685a = new C17638l3();
                        }
                        this.f50685a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50686b = null;
                        break;
                    } else {
                        if (this.f50686b == null) {
                            this.f50686b = new ClientHeaderV2();
                        }
                        this.f50686b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf810 = this.f50687c;
                    this.f50687c = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 3:
                    this.f50688d = resolvingDecoder.readBoolean();
                    break;
                case 4:
                    Utf8 utf811 = this.f50689e;
                    this.f50689e = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 5:
                    Utf8 utf812 = this.f50690f;
                    this.f50690f = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50691g = null;
                        break;
                    } else {
                        Utf8 utf813 = this.f50691g;
                        this.f50691g = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50692h = null;
                        break;
                    } else {
                        Utf8 utf814 = this.f50692h;
                        this.f50692h = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                        break;
                    }
                case 8:
                    this.f50693i = resolvingDecoder.readBoolean();
                    break;
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50694j = null;
                        break;
                    } else {
                        Utf8 utf815 = this.f50694j;
                        this.f50694j = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                        break;
                    }
                case 10:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50695k = null;
                        break;
                    } else {
                        Utf8 utf816 = this.f50695k;
                        this.f50695k = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                        break;
                    }
                case 11:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50696l = null;
                        break;
                    } else {
                        this.f50696l = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 12:
                    this.f50697m = resolvingDecoder.readBoolean();
                    break;
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50698n = null;
                        break;
                    } else {
                        Utf8 utf817 = this.f50698n;
                        this.f50698n = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50685a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50685a.customEncode(encoder);
        }
        if (this.f50686b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50686b.customEncode(encoder);
        }
        encoder.writeString(this.f50687c);
        encoder.writeBoolean(this.f50688d);
        encoder.writeString(this.f50689e);
        encoder.writeString(this.f50690f);
        if (this.f50691g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50691g);
        }
        if (this.f50692h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50692h);
        }
        encoder.writeBoolean(this.f50693i);
        if (this.f50694j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50694j);
        }
        if (this.f50695k == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50695k);
        }
        if (this.f50696l == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f50696l.intValue());
        }
        encoder.writeBoolean(this.f50697m);
        if (this.f50698n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50698n);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50685a;
            case 1:
                return this.f50686b;
            case 2:
                return this.f50687c;
            case 3:
                return Boolean.valueOf(this.f50688d);
            case 4:
                return this.f50689e;
            case 5:
                return this.f50690f;
            case 6:
                return this.f50691g;
            case 7:
                return this.f50692h;
            case 8:
                return Boolean.valueOf(this.f50693i);
            case 9:
                return this.f50694j;
            case 10:
                return this.f50695k;
            case 11:
                return this.f50696l;
            case 12:
                return Boolean.valueOf(this.f50697m);
            case 13:
                return this.f50698n;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50681o;
    }

    public SpecificData getSpecificData() {
        return f50682p;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50685a = (C17638l3) obj;
                return;
            case 1:
                this.f50686b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50687c = (CharSequence) obj;
                return;
            case 3:
                this.f50688d = ((Boolean) obj).booleanValue();
                return;
            case 4:
                this.f50689e = (CharSequence) obj;
                return;
            case 5:
                this.f50690f = (CharSequence) obj;
                return;
            case 6:
                this.f50691g = (CharSequence) obj;
                return;
            case 7:
                this.f50692h = (CharSequence) obj;
                return;
            case 8:
                this.f50693i = ((Boolean) obj).booleanValue();
                return;
            case 9:
                this.f50694j = (CharSequence) obj;
                return;
            case 10:
                this.f50695k = (CharSequence) obj;
                return;
            case 11:
                this.f50696l = (Integer) obj;
                return;
            case 12:
                this.f50697m = ((Boolean) obj).booleanValue();
                return;
            case 13:
                this.f50698n = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50684r.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50683q.write(this, SpecificData.getEncoder(objectOutput));
    }
}
