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
/* renamed from: e.a.l5.a.r0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/r0.class */
public class C17718r0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: i */
    public static final Schema f50153i;

    /* renamed from: j */
    public static SpecificData f50154j;

    /* renamed from: k */
    public static final DatumWriter<C17718r0> f50155k;

    /* renamed from: l */
    public static final DatumReader<C17718r0> f50156l;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50157a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50158b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50159c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50160d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50161e;
    @Deprecated

    /* renamed from: f */
    public long f50162f;
    @Deprecated

    /* renamed from: g */
    public long f50163g;
    @Deprecated

    /* renamed from: h */
    public Boolean f50164h;

    /* renamed from: e.a.l5.a.r0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/r0$b.class */
    public static class C17720b extends SpecificRecordBuilderBase<C17718r0> implements RecordBuilder<C17718r0> {

        /* renamed from: a */
        public CharSequence f50165a;

        /* renamed from: b */
        public CharSequence f50166b;

        /* renamed from: c */
        public CharSequence f50167c;

        /* renamed from: d */
        public long f50168d;

        /* renamed from: e */
        public long f50169e;

        /* renamed from: f */
        public Boolean f50170f;

        public C17720b(C17719a c17719a) {
            super(C17718r0.f50153i);
        }

        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* renamed from: a */
        public C17718r0 build() {
            try {
                C17718r0 c17718r0 = new C17718r0();
                c17718r0.f50157a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17718r0.f50158b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17718r0.f50159c = fieldSetFlags()[2] ? this.f50165a : (CharSequence) defaultValue(fields()[2]);
                c17718r0.f50160d = fieldSetFlags()[3] ? this.f50166b : (CharSequence) defaultValue(fields()[3]);
                c17718r0.f50161e = fieldSetFlags()[4] ? this.f50167c : (CharSequence) defaultValue(fields()[4]);
                c17718r0.f50162f = fieldSetFlags()[5] ? this.f50168d : ((Long) defaultValue(fields()[5])).longValue();
                c17718r0.f50163g = fieldSetFlags()[6] ? this.f50169e : ((Long) defaultValue(fields()[6])).longValue();
                c17718r0.f50164h = fieldSetFlags()[7] ? this.f50170f : (Boolean) defaultValue(fields()[7]);
                return c17718r0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppHttpCall\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"* For tracking timing information in all types of Search Http calls.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"domain\",\"type\":\"string\",\"doc\":\"Server that receives the http call request\"},{\"name\":\"type\",\"type\":\"string\",\"doc\":\"Type of call: e.g. dns, connectStart, requestBody\"},{\"name\":\"sessionId\",\"type\":\"string\",\"doc\":\"uuid linked to an active http call connection\"},{\"name\":\"startTimestamp\",\"type\":\"long\",\"doc\":\"Start time of call\"},{\"name\":\"duration\",\"type\":\"long\",\"doc\":\"Duration of call\"},{\"name\":\"status\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Status of call, success or failure\",\"default\":null}]}");
        f50153i = m8613i0;
        SpecificData specificData = new SpecificData();
        f50154j = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50154j, m8613i0);
        f50155k = f50154j.createDatumWriter(m8613i0);
        f50156l = f50154j.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50157a = null;
            } else {
                if (this.f50157a == null) {
                    this.f50157a = new C17638l3();
                }
                this.f50157a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50158b = null;
            } else {
                if (this.f50158b == null) {
                    this.f50158b = new ClientHeaderV2();
                }
                this.f50158b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50159c;
            this.f50159c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50160d;
            this.f50160d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50161e;
            this.f50161e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            this.f50162f = resolvingDecoder.readLong();
            this.f50163g = resolvingDecoder.readLong();
            if (resolvingDecoder.readIndex() == 1) {
                this.f50164h = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f50164h = null;
            return;
        }
        for (int i = 0; i < 8; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50157a = null;
                        break;
                    } else {
                        if (this.f50157a == null) {
                            this.f50157a = new C17638l3();
                        }
                        this.f50157a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50158b = null;
                        break;
                    } else {
                        if (this.f50158b == null) {
                            this.f50158b = new ClientHeaderV2();
                        }
                        this.f50158b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf84 = this.f50159c;
                    this.f50159c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    break;
                case 3:
                    Utf8 utf85 = this.f50160d;
                    this.f50160d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 4:
                    Utf8 utf86 = this.f50161e;
                    this.f50161e = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 5:
                    this.f50162f = resolvingDecoder.readLong();
                    break;
                case 6:
                    this.f50163g = resolvingDecoder.readLong();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50164h = null;
                        break;
                    } else {
                        this.f50164h = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50157a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50157a.customEncode(encoder);
        }
        if (this.f50158b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50158b.customEncode(encoder);
        }
        encoder.writeString(this.f50159c);
        encoder.writeString(this.f50160d);
        encoder.writeString(this.f50161e);
        encoder.writeLong(this.f50162f);
        encoder.writeLong(this.f50163g);
        if (this.f50164h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f50164h.booleanValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50157a;
            case 1:
                return this.f50158b;
            case 2:
                return this.f50159c;
            case 3:
                return this.f50160d;
            case 4:
                return this.f50161e;
            case 5:
                return Long.valueOf(this.f50162f);
            case 6:
                return Long.valueOf(this.f50163g);
            case 7:
                return this.f50164h;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50153i;
    }

    public SpecificData getSpecificData() {
        return f50154j;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50157a = (C17638l3) obj;
                return;
            case 1:
                this.f50158b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50159c = (CharSequence) obj;
                return;
            case 3:
                this.f50160d = (CharSequence) obj;
                return;
            case 4:
                this.f50161e = (CharSequence) obj;
                return;
            case 5:
                this.f50162f = ((Long) obj).longValue();
                return;
            case 6:
                this.f50163g = ((Long) obj).longValue();
                return;
            case 7:
                this.f50164h = (Boolean) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50156l.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50155k.write(this, SpecificData.getEncoder(objectOutput));
    }
}
