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
/* renamed from: e.a.l5.a.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/c0.class */
public class C17469c0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f48956f;

    /* renamed from: g */
    public static SpecificData f48957g;

    /* renamed from: h */
    public static final DatumWriter<C17469c0> f48958h;

    /* renamed from: i */
    public static final DatumReader<C17469c0> f48959i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48960a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48961b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48962c;
    @Deprecated

    /* renamed from: d */
    public int f48963d;
    @Deprecated

    /* renamed from: e */
    public int f48964e;

    /* renamed from: e.a.l5.a.c0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/c0$b.class */
    public static class C17471b extends SpecificRecordBuilderBase<C17469c0> implements RecordBuilder<C17469c0> {

        /* renamed from: a */
        public CharSequence f48965a;

        /* renamed from: b */
        public int f48966b;

        /* renamed from: c */
        public int f48967c;

        public C17471b(C17470a c17470a) {
            super(C17469c0.f48956f);
        }

        /* renamed from: a */
        public C17469c0 build() {
            try {
                C17469c0 c17469c0 = new C17469c0();
                c17469c0.f48960a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17469c0.f48961b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17469c0.f48962c = fieldSetFlags()[2] ? this.f48965a : (CharSequence) defaultValue(fields()[2]);
                c17469c0.f48963d = fieldSetFlags()[3] ? this.f48966b : ((Integer) defaultValue(fields()[3])).intValue();
                c17469c0.f48964e = fieldSetFlags()[4] ? this.f48967c : ((Integer) defaultValue(fields()[4])).intValue();
                return c17469c0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallRecordingSuccessful\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track when call recorded has done successfully. Calls have ended and file stored locally.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Where call recording was triggered.\"},{\"name\":\"duration\",\"type\":\"int\",\"doc\":\"Recording file duration, in seconds.\"},{\"name\":\"size\",\"type\":\"int\",\"doc\":\"Size of the recorded file in KB.\"}]}");
        f48956f = m8613i0;
        SpecificData specificData = new SpecificData();
        f48957g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48957g, m8613i0);
        f48958h = f48957g.createDatumWriter(m8613i0);
        f48959i = f48957g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48960a = null;
            } else {
                if (this.f48960a == null) {
                    this.f48960a = new C17638l3();
                }
                this.f48960a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48961b = null;
            } else {
                if (this.f48961b == null) {
                    this.f48961b = new ClientHeaderV2();
                }
                this.f48961b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f48962c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f48962c = resolvingDecoder.readString(utf8);
            this.f48963d = resolvingDecoder.readInt();
            this.f48964e = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f48962c;
                        this.f48962c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f48963d = resolvingDecoder.readInt();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f48964e = resolvingDecoder.readInt();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48961b = null;
                } else {
                    if (this.f48961b == null) {
                        this.f48961b = new ClientHeaderV2();
                    }
                    this.f48961b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48960a = null;
            } else {
                if (this.f48960a == null) {
                    this.f48960a = new C17638l3();
                }
                this.f48960a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48960a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48960a.customEncode(encoder);
        }
        if (this.f48961b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48961b.customEncode(encoder);
        }
        encoder.writeString(this.f48962c);
        encoder.writeInt(this.f48963d);
        encoder.writeInt(this.f48964e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48961b;
            }
            if (i == 2) {
                return this.f48962c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f48963d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f48964e);
        }
        return this.f48960a;
    }

    public Schema getSchema() {
        return f48956f;
    }

    public SpecificData getSpecificData() {
        return f48957g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48960a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48961b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48962c = (CharSequence) obj;
        } else if (i == 3) {
            this.f48963d = ((Integer) obj).intValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48964e = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48959i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48958h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
