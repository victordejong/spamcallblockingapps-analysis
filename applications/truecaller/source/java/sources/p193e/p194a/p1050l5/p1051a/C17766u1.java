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
/* renamed from: e.a.l5.a.u1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/u1.class */
public class C17766u1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50415d;

    /* renamed from: e */
    public static SpecificData f50416e;

    /* renamed from: f */
    public static final DatumWriter<C17766u1> f50417f;

    /* renamed from: g */
    public static final DatumReader<C17766u1> f50418g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50419a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50420b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50421c;

    /* renamed from: e.a.l5.a.u1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/u1$b.class */
    public static class C17768b extends SpecificRecordBuilderBase<C17766u1> implements RecordBuilder<C17766u1> {

        /* renamed from: a */
        public CharSequence f50422a;

        public C17768b(C17767a c17767a) {
            super(C17766u1.f50415d);
        }

        /* renamed from: a */
        public C17766u1 build() {
            try {
                C17766u1 c17766u1 = new C17766u1();
                c17766u1.f50419a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17766u1.f50420b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17766u1.f50421c = fieldSetFlags()[2] ? this.f50422a : (CharSequence) defaultValue(fields()[2]);
                return c17766u1;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppProfileViewReceived\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Where in the app profile view was generated\"}]}");
        f50415d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50416e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50416e, m8613i0);
        f50417f = f50416e.createDatumWriter(m8613i0);
        f50418g = f50416e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50419a = null;
            } else {
                if (this.f50419a == null) {
                    this.f50419a = new C17638l3();
                }
                this.f50419a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50420b = null;
            } else {
                if (this.f50420b == null) {
                    this.f50420b = new ClientHeaderV2();
                }
                this.f50420b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f50421c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f50421c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f50421c;
                    this.f50421c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50420b = null;
                } else {
                    if (this.f50420b == null) {
                        this.f50420b = new ClientHeaderV2();
                    }
                    this.f50420b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50419a = null;
            } else {
                if (this.f50419a == null) {
                    this.f50419a = new C17638l3();
                }
                this.f50419a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50419a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50419a.customEncode(encoder);
        }
        if (this.f50420b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50420b.customEncode(encoder);
        }
        encoder.writeString(this.f50421c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50420b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50421c;
        }
        return this.f50419a;
    }

    public Schema getSchema() {
        return f50415d;
    }

    public SpecificData getSpecificData() {
        return f50416e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50419a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50420b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50421c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50418g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50417f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
