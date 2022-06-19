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
/* renamed from: e.a.l5.a.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e0.class */
public class C17505e0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49120f;

    /* renamed from: g */
    public static SpecificData f49121g;

    /* renamed from: h */
    public static final DatumWriter<C17505e0> f49122h;

    /* renamed from: i */
    public static final DatumReader<C17505e0> f49123i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49124a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49125b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49126c;
    @Deprecated

    /* renamed from: d */
    public long f49127d;
    @Deprecated

    /* renamed from: e */
    public long f49128e;

    /* renamed from: e.a.l5.a.e0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e0$b.class */
    public static class C17507b extends SpecificRecordBuilderBase<C17505e0> implements RecordBuilder<C17505e0> {

        /* renamed from: a */
        public CharSequence f49129a;

        /* renamed from: b */
        public long f49130b;

        /* renamed from: c */
        public long f49131c;

        public C17507b(C17506a c17506a) {
            super(C17505e0.f49120f);
        }

        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* renamed from: a */
        public C17505e0 build() {
            try {
                C17505e0 c17505e0 = new C17505e0();
                c17505e0.f49124a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17505e0.f49125b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17505e0.f49126c = fieldSetFlags()[2] ? this.f49129a : (CharSequence) defaultValue(fields()[2]);
                c17505e0.f49127d = fieldSetFlags()[3] ? this.f49130b : ((Long) defaultValue(fields()[3])).longValue();
                c17505e0.f49128e = fieldSetFlags()[4] ? this.f49131c : ((Long) defaultValue(fields()[4])).longValue();
                return c17505e0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17507b m15991b(long j) {
            validate(fields()[4], Long.valueOf(j));
            this.f49131c = j;
            fieldSetFlags()[4] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallerIdNotificationUsed\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"pushId\",\"type\":\"string\"},{\"name\":\"pushDelay\",\"type\":\"long\"},{\"name\":\"otherDelay\",\"type\":\"long\"}]}");
        f49120f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49121g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49121g, m8613i0);
        f49122h = f49121g.createDatumWriter(m8613i0);
        f49123i = f49121g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49124a = null;
            } else {
                if (this.f49124a == null) {
                    this.f49124a = new C17638l3();
                }
                this.f49124a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49125b = null;
            } else {
                if (this.f49125b == null) {
                    this.f49125b = new ClientHeaderV2();
                }
                this.f49125b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49126c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49126c = resolvingDecoder.readString(utf8);
            this.f49127d = resolvingDecoder.readLong();
            this.f49128e = resolvingDecoder.readLong();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f49126c;
                        this.f49126c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f49127d = resolvingDecoder.readLong();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f49128e = resolvingDecoder.readLong();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49125b = null;
                } else {
                    if (this.f49125b == null) {
                        this.f49125b = new ClientHeaderV2();
                    }
                    this.f49125b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49124a = null;
            } else {
                if (this.f49124a == null) {
                    this.f49124a = new C17638l3();
                }
                this.f49124a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49124a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49124a.customEncode(encoder);
        }
        if (this.f49125b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49125b.customEncode(encoder);
        }
        encoder.writeString(this.f49126c);
        encoder.writeLong(this.f49127d);
        encoder.writeLong(this.f49128e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49125b;
            }
            if (i == 2) {
                return this.f49126c;
            }
            if (i == 3) {
                return Long.valueOf(this.f49127d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Long.valueOf(this.f49128e);
        }
        return this.f49124a;
    }

    public Schema getSchema() {
        return f49120f;
    }

    public SpecificData getSpecificData() {
        return f49121g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49124a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49125b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49126c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49127d = ((Long) obj).longValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49128e = ((Long) obj).longValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49123i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49122h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
