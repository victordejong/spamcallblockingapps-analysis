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
/* renamed from: e.a.l5.a.r2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/r2.class */
public class C17724r2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f50207h;

    /* renamed from: i */
    public static SpecificData f50208i;

    /* renamed from: j */
    public static final DatumWriter<C17724r2> f50209j;

    /* renamed from: k */
    public static final DatumReader<C17724r2> f50210k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50211a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50212b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50213c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50214d;
    @Deprecated

    /* renamed from: e */
    public boolean f50215e;
    @Deprecated

    /* renamed from: f */
    public Boolean f50216f;
    @Deprecated

    /* renamed from: g */
    public Long f50217g;

    /* renamed from: e.a.l5.a.r2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/r2$b.class */
    public static class C17726b extends SpecificRecordBuilderBase<C17724r2> implements RecordBuilder<C17724r2> {

        /* renamed from: a */
        public CharSequence f50218a;

        /* renamed from: b */
        public CharSequence f50219b;

        /* renamed from: c */
        public boolean f50220c;

        /* renamed from: d */
        public Boolean f50221d;

        public C17726b(C17725a c17725a) {
            super(C17724r2.f50207h);
        }

        /* renamed from: a */
        public C17724r2 build() {
            try {
                C17724r2 c17724r2 = new C17724r2();
                c17724r2.f50211a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17724r2.f50212b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17724r2.f50213c = fieldSetFlags()[2] ? this.f50218a : (CharSequence) defaultValue(fields()[2]);
                c17724r2.f50214d = fieldSetFlags()[3] ? this.f50219b : (CharSequence) defaultValue(fields()[3]);
                c17724r2.f50215e = fieldSetFlags()[4] ? this.f50220c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                c17724r2.f50216f = fieldSetFlags()[5] ? this.f50221d : (Boolean) defaultValue(fields()[5]);
                c17724r2.f50217g = fieldSetFlags()[6] ? null : (Long) defaultValue(fields()[6]);
                return c17724r2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdReceived\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track that video call id was received successfully\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoId\",\"type\":\"string\",\"doc\":\"Unique identifier for each uploaded video.\"},{\"name\":\"callId\",\"type\":\"string\",\"doc\":\"Unique identifier for each call with video call id.\"},{\"name\":\"isCached\",\"type\":\"boolean\",\"doc\":\"Track whether the video is cached or not.\"},{\"name\":\"isPhonebook\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Indicates if sender is in receivers phonebook.\",\"default\":null},{\"name\":\"serverTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"When notification was sent from backend, in epoch seconds\",\"default\":null}]}");
        f50207h = m8613i0;
        SpecificData specificData = new SpecificData();
        f50208i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50208i, m8613i0);
        f50209j = f50208i.createDatumWriter(m8613i0);
        f50210k = f50208i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50211a = null;
            } else {
                if (this.f50211a == null) {
                    this.f50211a = new C17638l3();
                }
                this.f50211a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50212b = null;
            } else {
                if (this.f50212b == null) {
                    this.f50212b = new ClientHeaderV2();
                }
                this.f50212b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50213c;
            this.f50213c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50214d;
            this.f50214d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            this.f50215e = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50216f = null;
            } else {
                this.f50216f = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f50217g = Long.valueOf(resolvingDecoder.readLong());
                return;
            }
            resolvingDecoder.readNull();
            this.f50217g = null;
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50211a = null;
                        break;
                    } else {
                        if (this.f50211a == null) {
                            this.f50211a = new C17638l3();
                        }
                        this.f50211a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50212b = null;
                        break;
                    } else {
                        if (this.f50212b == null) {
                            this.f50212b = new ClientHeaderV2();
                        }
                        this.f50212b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf83 = this.f50213c;
                    this.f50213c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    break;
                case 3:
                    Utf8 utf84 = this.f50214d;
                    this.f50214d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    break;
                case 4:
                    this.f50215e = resolvingDecoder.readBoolean();
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50216f = null;
                        break;
                    } else {
                        this.f50216f = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50217g = null;
                        break;
                    } else {
                        this.f50217g = Long.valueOf(resolvingDecoder.readLong());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50211a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50211a.customEncode(encoder);
        }
        if (this.f50212b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50212b.customEncode(encoder);
        }
        encoder.writeString(this.f50213c);
        encoder.writeString(this.f50214d);
        encoder.writeBoolean(this.f50215e);
        if (this.f50216f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50216f.booleanValue());
        }
        if (this.f50217g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeLong(this.f50217g.longValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50211a;
            case 1:
                return this.f50212b;
            case 2:
                return this.f50213c;
            case 3:
                return this.f50214d;
            case 4:
                return Boolean.valueOf(this.f50215e);
            case 5:
                return this.f50216f;
            case 6:
                return this.f50217g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50207h;
    }

    public SpecificData getSpecificData() {
        return f50208i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50211a = (C17638l3) obj;
                return;
            case 1:
                this.f50212b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50213c = (CharSequence) obj;
                return;
            case 3:
                this.f50214d = (CharSequence) obj;
                return;
            case 4:
                this.f50215e = ((Boolean) obj).booleanValue();
                return;
            case 5:
                this.f50216f = (Boolean) obj;
                return;
            case 6:
                this.f50217g = (Long) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50210k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50209j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
