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
/* renamed from: e.a.l5.a.u2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/u2.class */
public class C17769u2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f50423h;

    /* renamed from: i */
    public static SpecificData f50424i;

    /* renamed from: j */
    public static final DatumWriter<C17769u2> f50425j;

    /* renamed from: k */
    public static final DatumReader<C17769u2> f50426k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50427a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50428b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50429c;
    @Deprecated

    /* renamed from: d */
    public int f50430d;
    @Deprecated

    /* renamed from: e */
    public int f50431e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50432f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50433g;

    /* renamed from: e.a.l5.a.u2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/u2$b.class */
    public static class C17771b extends SpecificRecordBuilderBase<C17769u2> implements RecordBuilder<C17769u2> {

        /* renamed from: a */
        public CharSequence f50434a;

        /* renamed from: b */
        public int f50435b;

        /* renamed from: c */
        public int f50436c;

        /* renamed from: d */
        public CharSequence f50437d;

        /* renamed from: e */
        public CharSequence f50438e;

        public C17771b(C17770a c17770a) {
            super(C17769u2.f50423h);
        }

        /* renamed from: a */
        public C17769u2 build() {
            try {
                C17769u2 c17769u2 = new C17769u2();
                c17769u2.f50427a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17769u2.f50428b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17769u2.f50429c = fieldSetFlags()[2] ? this.f50434a : (CharSequence) defaultValue(fields()[2]);
                c17769u2.f50430d = fieldSetFlags()[3] ? this.f50435b : ((Integer) defaultValue(fields()[3])).intValue();
                c17769u2.f50431e = fieldSetFlags()[4] ? this.f50436c : ((Integer) defaultValue(fields()[4])).intValue();
                c17769u2.f50432f = fieldSetFlags()[5] ? this.f50437d : (CharSequence) defaultValue(fields()[5]);
                c17769u2.f50433g = fieldSetFlags()[6] ? this.f50438e : (CharSequence) defaultValue(fields()[6]);
                return c17769u2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdUploadResult\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track video status after upload of the video to the cloud\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Where call recording was triggered.\"},{\"name\":\"duration\",\"type\":\"int\",\"doc\":\"Recording file duration, in milliseconds.\"},{\"name\":\"size\",\"type\":\"int\",\"doc\":\"Size of the recorded file in KB.\"},{\"name\":\"result\",\"type\":\"string\",\"doc\":\"Result of uploading the video success or reason of failure.\"},{\"name\":\"videoId\",\"type\":\"string\",\"doc\":\"Unique identifier for each uploaded video.\"}]}");
        f50423h = m8613i0;
        SpecificData specificData = new SpecificData();
        f50424i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50424i, m8613i0);
        f50425j = f50424i.createDatumWriter(m8613i0);
        f50426k = f50424i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50427a = null;
            } else {
                if (this.f50427a == null) {
                    this.f50427a = new C17638l3();
                }
                this.f50427a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50428b = null;
            } else {
                if (this.f50428b == null) {
                    this.f50428b = new ClientHeaderV2();
                }
                this.f50428b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50429c;
            this.f50429c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f50430d = resolvingDecoder.readInt();
            this.f50431e = resolvingDecoder.readInt();
            Utf8 utf82 = this.f50432f;
            this.f50432f = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50433g;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50433g = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50427a = null;
                        break;
                    } else {
                        if (this.f50427a == null) {
                            this.f50427a = new C17638l3();
                        }
                        this.f50427a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50428b = null;
                        break;
                    } else {
                        if (this.f50428b == null) {
                            this.f50428b = new ClientHeaderV2();
                        }
                        this.f50428b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf85 = this.f50429c;
                    this.f50429c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 3:
                    this.f50430d = resolvingDecoder.readInt();
                    break;
                case 4:
                    this.f50431e = resolvingDecoder.readInt();
                    break;
                case 5:
                    Utf8 utf86 = this.f50432f;
                    this.f50432f = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 6:
                    Utf8 utf87 = this.f50433g;
                    this.f50433g = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50427a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50427a.customEncode(encoder);
        }
        if (this.f50428b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50428b.customEncode(encoder);
        }
        encoder.writeString(this.f50429c);
        encoder.writeInt(this.f50430d);
        encoder.writeInt(this.f50431e);
        encoder.writeString(this.f50432f);
        encoder.writeString(this.f50433g);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50427a;
            case 1:
                return this.f50428b;
            case 2:
                return this.f50429c;
            case 3:
                return Integer.valueOf(this.f50430d);
            case 4:
                return Integer.valueOf(this.f50431e);
            case 5:
                return this.f50432f;
            case 6:
                return this.f50433g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50423h;
    }

    public SpecificData getSpecificData() {
        return f50424i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50427a = (C17638l3) obj;
                return;
            case 1:
                this.f50428b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50429c = (CharSequence) obj;
                return;
            case 3:
                this.f50430d = ((Integer) obj).intValue();
                return;
            case 4:
                this.f50431e = ((Integer) obj).intValue();
                return;
            case 5:
                this.f50432f = (CharSequence) obj;
                return;
            case 6:
                this.f50433g = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50426k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50425j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
