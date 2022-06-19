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
/* renamed from: e.a.l5.a.a0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a0.class */
public class C17433a0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f48818e;

    /* renamed from: f */
    public static SpecificData f48819f;

    /* renamed from: g */
    public static final DatumWriter<C17433a0> f48820g;

    /* renamed from: h */
    public static final DatumReader<C17433a0> f48821h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48822a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48823b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48824c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48825d;

    /* renamed from: e.a.l5.a.a0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/a0$b.class */
    public static class C17435b extends SpecificRecordBuilderBase<C17433a0> implements RecordBuilder<C17433a0> {

        /* renamed from: a */
        public CharSequence f48826a;

        /* renamed from: b */
        public CharSequence f48827b;

        public C17435b(C17434a c17434a) {
            super(C17433a0.f48818e);
        }

        /* renamed from: a */
        public C17433a0 build() {
            try {
                C17433a0 c17433a0 = new C17433a0();
                c17433a0.f48822a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17433a0.f48823b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17433a0.f48824c = fieldSetFlags()[2] ? this.f48826a : (CharSequence) defaultValue(fields()[2]);
                c17433a0.f48825d = fieldSetFlags()[3] ? this.f48827b : (CharSequence) defaultValue(fields()[3]);
                return c17433a0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallRecordingOnboarding\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track the result of user on-boarding.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Where the call recording on-boarding was triggered from.\"},{\"name\":\"result\",\"type\":\"string\",\"doc\":\"The outcome of the on-boarding.\"}]}");
        f48818e = m8613i0;
        SpecificData specificData = new SpecificData();
        f48819f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48819f, m8613i0);
        f48820g = f48819f.createDatumWriter(m8613i0);
        f48821h = f48819f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48822a = null;
            } else {
                if (this.f48822a == null) {
                    this.f48822a = new C17638l3();
                }
                this.f48822a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48823b = null;
            } else {
                if (this.f48823b == null) {
                    this.f48823b = new ClientHeaderV2();
                }
                this.f48823b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f48824c;
            this.f48824c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48825d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48825d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f48824c;
                        this.f48824c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f48825d;
                        this.f48825d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48823b = null;
                } else {
                    if (this.f48823b == null) {
                        this.f48823b = new ClientHeaderV2();
                    }
                    this.f48823b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48822a = null;
            } else {
                if (this.f48822a == null) {
                    this.f48822a = new C17638l3();
                }
                this.f48822a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48822a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48822a.customEncode(encoder);
        }
        if (this.f48823b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48823b.customEncode(encoder);
        }
        encoder.writeString(this.f48824c);
        encoder.writeString(this.f48825d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48823b;
            }
            if (i == 2) {
                return this.f48824c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48825d;
        }
        return this.f48822a;
    }

    public Schema getSchema() {
        return f48818e;
    }

    public SpecificData getSpecificData() {
        return f48819f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48822a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48823b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48824c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48825d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48821h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48820g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
