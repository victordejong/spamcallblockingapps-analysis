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
/* renamed from: e.a.l5.a.c1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/c1.class */
public class C17472c1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: k */
    public static final Schema f48968k;

    /* renamed from: l */
    public static SpecificData f48969l;

    /* renamed from: m */
    public static final DatumWriter<C17472c1> f48970m;

    /* renamed from: n */
    public static final DatumReader<C17472c1> f48971n;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48972a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48973b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48974c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48975d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f48976e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f48977f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f48978g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f48979h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f48980i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f48981j;

    /* renamed from: e.a.l5.a.c1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/c1$b.class */
    public static class C17474b extends SpecificRecordBuilderBase<C17472c1> implements RecordBuilder<C17472c1> {

        /* renamed from: a */
        public CharSequence f48982a;

        /* renamed from: b */
        public CharSequence f48983b;

        /* renamed from: c */
        public CharSequence f48984c;

        /* renamed from: d */
        public CharSequence f48985d;

        /* renamed from: e */
        public CharSequence f48986e;

        /* renamed from: f */
        public CharSequence f48987f;

        /* renamed from: g */
        public CharSequence f48988g;

        /* renamed from: h */
        public CharSequence f48989h;

        public C17474b(C17473a c17473a) {
            super(C17472c1.f48968k);
        }

        /* renamed from: a */
        public C17472c1 build() {
            try {
                C17472c1 c17472c1 = new C17472c1();
                c17472c1.f48972a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17472c1.f48973b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17472c1.f48974c = fieldSetFlags()[2] ? this.f48982a : (CharSequence) defaultValue(fields()[2]);
                c17472c1.f48975d = fieldSetFlags()[3] ? this.f48983b : (CharSequence) defaultValue(fields()[3]);
                c17472c1.f48976e = fieldSetFlags()[4] ? this.f48984c : (CharSequence) defaultValue(fields()[4]);
                c17472c1.f48977f = fieldSetFlags()[5] ? this.f48985d : (CharSequence) defaultValue(fields()[5]);
                c17472c1.f48978g = fieldSetFlags()[6] ? this.f48986e : (CharSequence) defaultValue(fields()[6]);
                c17472c1.f48979h = fieldSetFlags()[7] ? this.f48987f : (CharSequence) defaultValue(fields()[7]);
                c17472c1.f48980i = fieldSetFlags()[8] ? this.f48988g : (CharSequence) defaultValue(fields()[8]);
                c17472c1.f48981j = fieldSetFlags()[9] ? this.f48989h : (CharSequence) defaultValue(fields()[9]);
                return c17472c1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppMessageMarkSpam\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Individual messages marked as spam in the client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\",\"doc\":\"Device-unique message id for sms, mms, server assigned message id for im\"},{\"name\":\"senderType\",\"type\":\"string\",\"doc\":\"Sender type as in AppMessageIncoming alphanum | phone_number | tc | email\"},{\"name\":\"senderId\",\"type\":\"string\",\"doc\":\"Sender's id/number\"},{\"name\":\"messageType\",\"type\":\"string\",\"doc\":\"Type of message, possible values: im | mms | sms\"},{\"name\":\"spamReportType\",\"type\":\"string\",\"doc\":\"Spam report type, possible values: spam | notSpam\"},{\"name\":\"originalTab\",\"type\":\"string\",\"doc\":\"The placement of the message before report: personal | business | spam\"},{\"name\":\"newTab\",\"type\":\"string\",\"doc\":\"The placement of the message after report: personal | business | spam\"},{\"name\":\"messageCategory\",\"type\":[\"null\",\"string\"],\"doc\":\"Case not spam: bank | bill | recharge | etc\\n    Case spam: offer | scam | sales | etc\"}]}");
        f48968k = m8613i0;
        SpecificData specificData = new SpecificData();
        f48969l = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48969l, m8613i0);
        f48970m = f48969l.createDatumWriter(m8613i0);
        f48971n = f48969l.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48972a = null;
            } else {
                if (this.f48972a == null) {
                    this.f48972a = new C17638l3();
                }
                this.f48972a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48973b = null;
            } else {
                if (this.f48973b == null) {
                    this.f48973b = new ClientHeaderV2();
                }
                this.f48973b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f48974c;
            this.f48974c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48975d;
            this.f48975d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f48976e;
            this.f48976e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f48977f;
            this.f48977f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f48978g;
            this.f48978g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            Utf8 utf86 = this.f48979h;
            this.f48979h = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            Utf8 utf87 = this.f48980i;
            this.f48980i = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48981j = null;
                return;
            }
            Utf8 utf88 = this.f48981j;
            Utf8 utf89 = null;
            if (utf88 instanceof Utf8) {
                utf89 = utf88;
            }
            this.f48981j = resolvingDecoder.readString(utf89);
            return;
        }
        for (int i = 0; i < 10; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f48972a = null;
                        break;
                    } else {
                        if (this.f48972a == null) {
                            this.f48972a = new C17638l3();
                        }
                        this.f48972a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f48973b = null;
                        break;
                    } else {
                        if (this.f48973b == null) {
                            this.f48973b = new ClientHeaderV2();
                        }
                        this.f48973b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf810 = this.f48974c;
                    this.f48974c = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 3:
                    Utf8 utf811 = this.f48975d;
                    this.f48975d = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 4:
                    Utf8 utf812 = this.f48976e;
                    this.f48976e = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 5:
                    Utf8 utf813 = this.f48977f;
                    this.f48977f = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 6:
                    Utf8 utf814 = this.f48978g;
                    this.f48978g = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                    break;
                case 7:
                    Utf8 utf815 = this.f48979h;
                    this.f48979h = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                    break;
                case 8:
                    Utf8 utf816 = this.f48980i;
                    this.f48980i = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                    break;
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f48981j = null;
                        break;
                    } else {
                        Utf8 utf817 = this.f48981j;
                        this.f48981j = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48972a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48972a.customEncode(encoder);
        }
        if (this.f48973b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48973b.customEncode(encoder);
        }
        encoder.writeString(this.f48974c);
        encoder.writeString(this.f48975d);
        encoder.writeString(this.f48976e);
        encoder.writeString(this.f48977f);
        encoder.writeString(this.f48978g);
        encoder.writeString(this.f48979h);
        encoder.writeString(this.f48980i);
        if (this.f48981j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f48981j);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f48972a;
            case 1:
                return this.f48973b;
            case 2:
                return this.f48974c;
            case 3:
                return this.f48975d;
            case 4:
                return this.f48976e;
            case 5:
                return this.f48977f;
            case 6:
                return this.f48978g;
            case 7:
                return this.f48979h;
            case 8:
                return this.f48980i;
            case 9:
                return this.f48981j;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f48968k;
    }

    public SpecificData getSpecificData() {
        return f48969l;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f48972a = (C17638l3) obj;
                return;
            case 1:
                this.f48973b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f48974c = (CharSequence) obj;
                return;
            case 3:
                this.f48975d = (CharSequence) obj;
                return;
            case 4:
                this.f48976e = (CharSequence) obj;
                return;
            case 5:
                this.f48977f = (CharSequence) obj;
                return;
            case 6:
                this.f48978g = (CharSequence) obj;
                return;
            case 7:
                this.f48979h = (CharSequence) obj;
                return;
            case 8:
                this.f48980i = (CharSequence) obj;
                return;
            case 9:
                this.f48981j = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48971n.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48970m.write(this, SpecificData.getEncoder(objectOutput));
    }
}
