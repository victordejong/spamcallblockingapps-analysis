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
/* renamed from: e.a.l5.a.o2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/o2.class */
public class C17681o2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49955h;

    /* renamed from: i */
    public static SpecificData f49956i;

    /* renamed from: j */
    public static final DatumWriter<C17681o2> f49957j;

    /* renamed from: k */
    public static final DatumReader<C17681o2> f49958k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49959a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49960b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49961c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49962d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49963e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49964f;
    @Deprecated

    /* renamed from: g */
    public int f49965g;

    /* renamed from: e.a.l5.a.o2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/o2$b.class */
    public static class C17683b extends SpecificRecordBuilderBase<C17681o2> implements RecordBuilder<C17681o2> {

        /* renamed from: a */
        public CharSequence f49966a;

        /* renamed from: b */
        public CharSequence f49967b;

        /* renamed from: c */
        public CharSequence f49968c;

        /* renamed from: d */
        public CharSequence f49969d;

        /* renamed from: e */
        public int f49970e;

        public C17683b(C17682a c17682a) {
            super(C17681o2.f49955h);
        }

        /* renamed from: a */
        public C17681o2 build() {
            try {
                C17681o2 c17681o2 = new C17681o2();
                c17681o2.f49959a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17681o2.f49960b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17681o2.f49961c = fieldSetFlags()[2] ? this.f49966a : (CharSequence) defaultValue(fields()[2]);
                c17681o2.f49962d = fieldSetFlags()[3] ? this.f49967b : (CharSequence) defaultValue(fields()[3]);
                c17681o2.f49963e = fieldSetFlags()[4] ? this.f49968c : (CharSequence) defaultValue(fields()[4]);
                c17681o2.f49964f = fieldSetFlags()[5] ? this.f49969d : (CharSequence) defaultValue(fields()[5]);
                c17681o2.f49965g = fieldSetFlags()[6] ? this.f49970e : ((Integer) defaultValue(fields()[6])).intValue();
                return c17681o2;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdNotShown\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track that video call id was not shown\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoId\",\"type\":\"string\",\"doc\":\"Unique identifier for each uploaded video.\"},{\"name\":\"callId\",\"type\":\"string\",\"doc\":\"Unique identifier for each call with video call id.\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"Context where the video should have been shown.\"},{\"name\":\"reason\",\"type\":\"string\",\"doc\":\"Reason why video is not shown.\"},{\"name\":\"downloaded\",\"type\":\"int\",\"doc\":\"Track how much of the video is downloaded.\"}]}");
        f49955h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49956i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49956i, m8613i0);
        f49957j = f49956i.createDatumWriter(m8613i0);
        f49958k = f49956i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49959a = null;
            } else {
                if (this.f49959a == null) {
                    this.f49959a = new C17638l3();
                }
                this.f49959a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49960b = null;
            } else {
                if (this.f49960b == null) {
                    this.f49960b = new ClientHeaderV2();
                }
                this.f49960b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49961c;
            this.f49961c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49962d;
            this.f49962d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49963e;
            this.f49963e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49964f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f49964f = resolvingDecoder.readString(utf85);
            this.f49965g = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49959a = null;
                        break;
                    } else {
                        if (this.f49959a == null) {
                            this.f49959a = new C17638l3();
                        }
                        this.f49959a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49960b = null;
                        break;
                    } else {
                        if (this.f49960b == null) {
                            this.f49960b = new ClientHeaderV2();
                        }
                        this.f49960b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf86 = this.f49961c;
                    this.f49961c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 3:
                    Utf8 utf87 = this.f49962d;
                    this.f49962d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 4:
                    Utf8 utf88 = this.f49963e;
                    this.f49963e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 5:
                    Utf8 utf89 = this.f49964f;
                    this.f49964f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 6:
                    this.f49965g = resolvingDecoder.readInt();
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49959a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49959a.customEncode(encoder);
        }
        if (this.f49960b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49960b.customEncode(encoder);
        }
        encoder.writeString(this.f49961c);
        encoder.writeString(this.f49962d);
        encoder.writeString(this.f49963e);
        encoder.writeString(this.f49964f);
        encoder.writeInt(this.f49965g);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49959a;
            case 1:
                return this.f49960b;
            case 2:
                return this.f49961c;
            case 3:
                return this.f49962d;
            case 4:
                return this.f49963e;
            case 5:
                return this.f49964f;
            case 6:
                return Integer.valueOf(this.f49965g);
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49955h;
    }

    public SpecificData getSpecificData() {
        return f49956i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49959a = (C17638l3) obj;
                return;
            case 1:
                this.f49960b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49961c = (CharSequence) obj;
                return;
            case 3:
                this.f49962d = (CharSequence) obj;
                return;
            case 4:
                this.f49963e = (CharSequence) obj;
                return;
            case 5:
                this.f49964f = (CharSequence) obj;
                return;
            case 6:
                this.f49965g = ((Integer) obj).intValue();
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49958k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49957j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
