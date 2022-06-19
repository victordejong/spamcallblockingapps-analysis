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
/* renamed from: e.a.l5.a.t2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/t2.class */
public class C17754t2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50332g;

    /* renamed from: h */
    public static SpecificData f50333h;

    /* renamed from: i */
    public static final DatumWriter<C17754t2> f50334i;

    /* renamed from: j */
    public static final DatumReader<C17754t2> f50335j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50336a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50337b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50338c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50339d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50340e;
    @Deprecated

    /* renamed from: f */
    public int f50341f;

    /* renamed from: e.a.l5.a.t2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/t2$b.class */
    public static class C17756b extends SpecificRecordBuilderBase<C17754t2> implements RecordBuilder<C17754t2> {

        /* renamed from: a */
        public CharSequence f50342a;

        /* renamed from: b */
        public CharSequence f50343b;

        /* renamed from: c */
        public CharSequence f50344c;

        /* renamed from: d */
        public int f50345d;

        public C17756b(C17755a c17755a) {
            super(C17754t2.f50332g);
        }

        /* renamed from: a */
        public C17754t2 build() {
            try {
                C17754t2 c17754t2 = new C17754t2();
                c17754t2.f50336a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17754t2.f50337b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17754t2.f50338c = fieldSetFlags()[2] ? this.f50342a : (CharSequence) defaultValue(fields()[2]);
                c17754t2.f50339d = fieldSetFlags()[3] ? this.f50343b : (CharSequence) defaultValue(fields()[3]);
                c17754t2.f50340e = fieldSetFlags()[4] ? this.f50344c : (CharSequence) defaultValue(fields()[4]);
                c17754t2.f50341f = fieldSetFlags()[5] ? this.f50345d : ((Integer) defaultValue(fields()[5])).intValue();
                return c17754t2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdShown\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track that video call id was shown successfully\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoId\",\"type\":\"string\",\"doc\":\"Unique identifier for each uploaded video.\"},{\"name\":\"callId\",\"type\":\"string\",\"doc\":\"Unique identifier for each call with video call id.\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"Context where the video was shown.\"},{\"name\":\"shown\",\"type\":\"int\",\"doc\":\"Track the video percentage shown to the user.\"}]}");
        f50332g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50333h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50333h, m8613i0);
        f50334i = f50333h.createDatumWriter(m8613i0);
        f50335j = f50333h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50336a = null;
            } else {
                if (this.f50336a == null) {
                    this.f50336a = new C17638l3();
                }
                this.f50336a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50337b = null;
            } else {
                if (this.f50337b == null) {
                    this.f50337b = new ClientHeaderV2();
                }
                this.f50337b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50338c;
            this.f50338c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50339d;
            this.f50339d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50340e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50340e = resolvingDecoder.readString(utf84);
            this.f50341f = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f50338c;
                        this.f50338c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 3) {
                        Utf8 utf86 = this.f50339d;
                        this.f50339d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 4) {
                        Utf8 utf87 = this.f50340e;
                        this.f50340e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f50341f = resolvingDecoder.readInt();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50337b = null;
                } else {
                    if (this.f50337b == null) {
                        this.f50337b = new ClientHeaderV2();
                    }
                    this.f50337b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50336a = null;
            } else {
                if (this.f50336a == null) {
                    this.f50336a = new C17638l3();
                }
                this.f50336a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50336a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50336a.customEncode(encoder);
        }
        if (this.f50337b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50337b.customEncode(encoder);
        }
        encoder.writeString(this.f50338c);
        encoder.writeString(this.f50339d);
        encoder.writeString(this.f50340e);
        encoder.writeInt(this.f50341f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50337b;
            }
            if (i == 2) {
                return this.f50338c;
            }
            if (i == 3) {
                return this.f50339d;
            }
            if (i == 4) {
                return this.f50340e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f50341f);
        }
        return this.f50336a;
    }

    public Schema getSchema() {
        return f50332g;
    }

    public SpecificData getSpecificData() {
        return f50333h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50336a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50337b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50338c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50339d = (CharSequence) obj;
        } else if (i == 4) {
            this.f50340e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50341f = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50335j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50334i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
