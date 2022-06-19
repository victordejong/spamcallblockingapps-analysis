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
/* renamed from: e.a.l5.a.x1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/x1.class */
public class C17807x1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50633e;

    /* renamed from: f */
    public static SpecificData f50634f;

    /* renamed from: g */
    public static final DatumWriter<C17807x1> f50635g;

    /* renamed from: h */
    public static final DatumReader<C17807x1> f50636h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50637a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50638b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50639c;
    @Deprecated

    /* renamed from: d */
    public long f50640d;

    /* renamed from: e.a.l5.a.x1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/x1$b.class */
    public static class C17809b extends SpecificRecordBuilderBase<C17807x1> implements RecordBuilder<C17807x1> {

        /* renamed from: a */
        public CharSequence f50641a;

        /* renamed from: b */
        public long f50642b;

        public C17809b(C17808a c17808a) {
            super(C17807x1.f50633e);
        }

        /* JADX WARN: Type inference failed for: r0v26, types: [long] */
        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* renamed from: a */
        public C17807x1 build() {
            try {
                C17807x1 c17807x1 = new C17807x1();
                c17807x1.f50637a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17807x1.f50638b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17807x1.f50639c = fieldSetFlags()[2] ? this.f50641a : (CharSequence) defaultValue(fields()[2]);
                c17807x1.f50640d = fieldSetFlags()[3] ? this.f50642b : ((Long) defaultValue(fields()[3])).longValue();
                return c17807x1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppScreenDuration\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"screen\",\"type\":\"string\",\"doc\":\"The screen the user was on\"},{\"name\":\"duration\",\"type\":\"long\",\"doc\":\"The amount of time the user spent there, in milliseconds\"}]}");
        f50633e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50634f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50634f, m8613i0);
        f50635g = f50634f.createDatumWriter(m8613i0);
        f50636h = f50634f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50637a = null;
            } else {
                if (this.f50637a == null) {
                    this.f50637a = new C17638l3();
                }
                this.f50637a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50638b = null;
            } else {
                if (this.f50638b == null) {
                    this.f50638b = new ClientHeaderV2();
                }
                this.f50638b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f50639c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f50639c = resolvingDecoder.readString(utf8);
            this.f50640d = resolvingDecoder.readLong();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f50639c;
                        this.f50639c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f50640d = resolvingDecoder.readLong();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50638b = null;
                } else {
                    if (this.f50638b == null) {
                        this.f50638b = new ClientHeaderV2();
                    }
                    this.f50638b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50637a = null;
            } else {
                if (this.f50637a == null) {
                    this.f50637a = new C17638l3();
                }
                this.f50637a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50637a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50637a.customEncode(encoder);
        }
        if (this.f50638b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50638b.customEncode(encoder);
        }
        encoder.writeString(this.f50639c);
        encoder.writeLong(this.f50640d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50638b;
            }
            if (i == 2) {
                return this.f50639c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Long.valueOf(this.f50640d);
        }
        return this.f50637a;
    }

    public Schema getSchema() {
        return f50633e;
    }

    public SpecificData getSpecificData() {
        return f50634f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50637a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50638b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50639c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50640d = ((Long) obj).longValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50636h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50635g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
