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
/* renamed from: e.a.l5.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/g.class */
public class C17538g extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49261e;

    /* renamed from: f */
    public static SpecificData f49262f;

    /* renamed from: g */
    public static final DatumWriter<C17538g> f49263g;

    /* renamed from: h */
    public static final DatumReader<C17538g> f49264h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49265a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49266b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49267c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49268d;

    /* renamed from: e.a.l5.a.g$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/g$b.class */
    public static class C17540b extends SpecificRecordBuilderBase<C17538g> implements RecordBuilder<C17538g> {

        /* renamed from: a */
        public CharSequence f49269a;

        /* renamed from: b */
        public CharSequence f49270b;

        public C17540b(C17539a c17539a) {
            super(C17538g.f49261e);
        }

        /* renamed from: a */
        public C17538g build() {
            try {
                C17538g c17538g = new C17538g();
                c17538g.f49265a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17538g.f49266b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17538g.f49267c = fieldSetFlags()[2] ? this.f49269a : (CharSequence) defaultValue(fields()[2]);
                c17538g.f49268d = fieldSetFlags()[3] ? this.f49270b : (CharSequence) defaultValue(fields()[3]);
                return c17538g;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACTTSInitializeError\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"reason\",\"type\":\"string\",\"doc\":\"Reason for the error\"},{\"name\":\"language\",\"type\":\"string\",\"doc\":\"Language - Two digit ISO Language code we used to initilize Text To Speech engine\"}]}");
        f49261e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49262f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49262f, m8613i0);
        f49263g = f49262f.createDatumWriter(m8613i0);
        f49264h = f49262f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49265a = null;
            } else {
                if (this.f49265a == null) {
                    this.f49265a = new C17638l3();
                }
                this.f49265a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49266b = null;
            } else {
                if (this.f49266b == null) {
                    this.f49266b = new ClientHeaderV2();
                }
                this.f49266b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49267c;
            this.f49267c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49268d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49268d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f49267c;
                        this.f49267c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49268d;
                        this.f49268d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49266b = null;
                } else {
                    if (this.f49266b == null) {
                        this.f49266b = new ClientHeaderV2();
                    }
                    this.f49266b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49265a = null;
            } else {
                if (this.f49265a == null) {
                    this.f49265a = new C17638l3();
                }
                this.f49265a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49265a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49265a.customEncode(encoder);
        }
        if (this.f49266b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49266b.customEncode(encoder);
        }
        encoder.writeString(this.f49267c);
        encoder.writeString(this.f49268d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49266b;
            }
            if (i == 2) {
                return this.f49267c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49268d;
        }
        return this.f49265a;
    }

    public Schema getSchema() {
        return f49261e;
    }

    public SpecificData getSpecificData() {
        return f49262f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49265a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49266b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49267c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49268d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49264h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49263g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
