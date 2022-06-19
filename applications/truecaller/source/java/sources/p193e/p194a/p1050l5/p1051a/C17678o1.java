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
/* renamed from: e.a.l5.a.o1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/o1.class */
public class C17678o1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49947d;

    /* renamed from: e */
    public static SpecificData f49948e;

    /* renamed from: f */
    public static final DatumWriter<C17678o1> f49949f;

    /* renamed from: g */
    public static final DatumReader<C17678o1> f49950g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49951a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49952b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49953c;

    /* renamed from: e.a.l5.a.o1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/o1$b.class */
    public static class C17680b extends SpecificRecordBuilderBase<C17678o1> implements RecordBuilder<C17678o1> {

        /* renamed from: a */
        public CharSequence f49954a;

        public C17680b(C17679a c17679a) {
            super(C17678o1.f49947d);
        }

        /* renamed from: a */
        public C17678o1 build() {
            try {
                C17678o1 c17678o1 = new C17678o1();
                c17678o1.f49951a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17678o1.f49952b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17678o1.f49953c = fieldSetFlags()[2] ? this.f49954a : (CharSequence) defaultValue(fields()[2]);
                return c17678o1;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppPCNameNumberEmpty\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"}]}");
        f49947d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49948e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49948e, m8613i0);
        f49949f = f49948e.createDatumWriter(m8613i0);
        f49950g = f49948e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49951a = null;
            } else {
                if (this.f49951a == null) {
                    this.f49951a = new C17638l3();
                }
                this.f49951a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49952b = null;
            } else {
                if (this.f49952b == null) {
                    this.f49952b = new ClientHeaderV2();
                }
                this.f49952b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49953c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49953c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f49953c;
                    this.f49953c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49952b = null;
                } else {
                    if (this.f49952b == null) {
                        this.f49952b = new ClientHeaderV2();
                    }
                    this.f49952b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49951a = null;
            } else {
                if (this.f49951a == null) {
                    this.f49951a = new C17638l3();
                }
                this.f49951a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49951a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49951a.customEncode(encoder);
        }
        if (this.f49952b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49952b.customEncode(encoder);
        }
        encoder.writeString(this.f49953c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49952b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49953c;
        }
        return this.f49951a;
    }

    public Schema getSchema() {
        return f49947d;
    }

    public SpecificData getSpecificData() {
        return f49948e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49951a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49952b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49953c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49950g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49949f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
