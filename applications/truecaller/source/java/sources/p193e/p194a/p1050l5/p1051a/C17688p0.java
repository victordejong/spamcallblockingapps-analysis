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
/* renamed from: e.a.l5.a.p0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/p0.class */
public class C17688p0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: k */
    public static final Schema f50011k;

    /* renamed from: l */
    public static SpecificData f50012l;

    /* renamed from: m */
    public static final DatumWriter<C17688p0> f50013m;

    /* renamed from: n */
    public static final DatumReader<C17688p0> f50014n;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50015a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50016b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50017c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50018d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50019e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50020f;
    @Deprecated

    /* renamed from: g */
    public boolean f50021g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50022h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50023i;
    @Deprecated

    /* renamed from: j */
    public int f50024j;

    /* renamed from: e.a.l5.a.p0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/p0$b.class */
    public static class C17690b extends SpecificRecordBuilderBase<C17688p0> implements RecordBuilder<C17688p0> {

        /* renamed from: a */
        public CharSequence f50025a;

        /* renamed from: b */
        public CharSequence f50026b;

        /* renamed from: c */
        public CharSequence f50027c;

        /* renamed from: d */
        public CharSequence f50028d;

        /* renamed from: e */
        public boolean f50029e;

        /* renamed from: f */
        public CharSequence f50030f;

        /* renamed from: g */
        public CharSequence f50031g;

        /* renamed from: h */
        public int f50032h;

        public C17690b(C17689a c17689a) {
            super(C17688p0.f50011k);
        }

        /* renamed from: a */
        public C17688p0 build() {
            try {
                C17688p0 c17688p0 = new C17688p0();
                c17688p0.f50015a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17688p0.f50016b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17688p0.f50017c = fieldSetFlags()[2] ? this.f50025a : (CharSequence) defaultValue(fields()[2]);
                c17688p0.f50018d = fieldSetFlags()[3] ? this.f50026b : (CharSequence) defaultValue(fields()[3]);
                c17688p0.f50019e = fieldSetFlags()[4] ? this.f50027c : (CharSequence) defaultValue(fields()[4]);
                c17688p0.f50020f = fieldSetFlags()[5] ? this.f50028d : (CharSequence) defaultValue(fields()[5]);
                c17688p0.f50021g = fieldSetFlags()[6] ? this.f50029e : ((Boolean) defaultValue(fields()[6])).booleanValue();
                c17688p0.f50022h = fieldSetFlags()[7] ? this.f50030f : (CharSequence) defaultValue(fields()[7]);
                c17688p0.f50023i = fieldSetFlags()[8] ? this.f50031g : (CharSequence) defaultValue(fields()[8]);
                c17688p0.f50024j = fieldSetFlags()[9] ? this.f50032h : ((Integer) defaultValue(fields()[9])).intValue();
                return c17688p0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppFlashInitiated\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"receiverId\",\"type\":\"string\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"contentType\",\"type\":\"string\"},{\"name\":\"fromPhonebook\",\"type\":\"boolean\"},{\"name\":\"replyId\",\"type\":[\"null\",\"string\"]},{\"name\":\"threadId\",\"type\":\"string\"},{\"name\":\"threadLength\",\"type\":\"int\"}]}");
        f50011k = m8613i0;
        SpecificData specificData = new SpecificData();
        f50012l = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50012l, m8613i0);
        f50013m = f50012l.createDatumWriter(m8613i0);
        f50014n = f50012l.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50015a = null;
            } else {
                if (this.f50015a == null) {
                    this.f50015a = new C17638l3();
                }
                this.f50015a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50016b = null;
            } else {
                if (this.f50016b == null) {
                    this.f50016b = new ClientHeaderV2();
                }
                this.f50016b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50017c;
            this.f50017c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50018d;
            this.f50018d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50019e;
            this.f50019e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50020f;
            this.f50020f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f50021g = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50022h = null;
            } else {
                Utf8 utf85 = this.f50022h;
                this.f50022h = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            Utf8 utf86 = this.f50023i;
            Utf8 utf87 = null;
            if (utf86 instanceof Utf8) {
                utf87 = utf86;
            }
            this.f50023i = resolvingDecoder.readString(utf87);
            this.f50024j = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 10; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50015a = null;
                        break;
                    } else {
                        if (this.f50015a == null) {
                            this.f50015a = new C17638l3();
                        }
                        this.f50015a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50016b = null;
                        break;
                    } else {
                        if (this.f50016b == null) {
                            this.f50016b = new ClientHeaderV2();
                        }
                        this.f50016b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf88 = this.f50017c;
                    this.f50017c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 3:
                    Utf8 utf89 = this.f50018d;
                    this.f50018d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 4:
                    Utf8 utf810 = this.f50019e;
                    this.f50019e = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 5:
                    Utf8 utf811 = this.f50020f;
                    this.f50020f = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 6:
                    this.f50021g = resolvingDecoder.readBoolean();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50022h = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f50022h;
                        this.f50022h = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 8:
                    Utf8 utf813 = this.f50023i;
                    this.f50023i = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 9:
                    this.f50024j = resolvingDecoder.readInt();
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50015a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50015a.customEncode(encoder);
        }
        if (this.f50016b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50016b.customEncode(encoder);
        }
        encoder.writeString(this.f50017c);
        encoder.writeString(this.f50018d);
        encoder.writeString(this.f50019e);
        encoder.writeString(this.f50020f);
        encoder.writeBoolean(this.f50021g);
        if (this.f50022h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50022h);
        }
        encoder.writeString(this.f50023i);
        encoder.writeInt(this.f50024j);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50015a;
            case 1:
                return this.f50016b;
            case 2:
                return this.f50017c;
            case 3:
                return this.f50018d;
            case 4:
                return this.f50019e;
            case 5:
                return this.f50020f;
            case 6:
                return Boolean.valueOf(this.f50021g);
            case 7:
                return this.f50022h;
            case 8:
                return this.f50023i;
            case 9:
                return Integer.valueOf(this.f50024j);
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50011k;
    }

    public SpecificData getSpecificData() {
        return f50012l;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50015a = (C17638l3) obj;
                return;
            case 1:
                this.f50016b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50017c = (CharSequence) obj;
                return;
            case 3:
                this.f50018d = (CharSequence) obj;
                return;
            case 4:
                this.f50019e = (CharSequence) obj;
                return;
            case 5:
                this.f50020f = (CharSequence) obj;
                return;
            case 6:
                this.f50021g = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f50022h = (CharSequence) obj;
                return;
            case 8:
                this.f50023i = (CharSequence) obj;
                return;
            case 9:
                this.f50024j = ((Integer) obj).intValue();
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50014n.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50013m.write(this, SpecificData.getEncoder(objectOutput));
    }
}
