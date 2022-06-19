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
/* renamed from: e.a.l5.a.e1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e1.class */
public class C17508e1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49132e;

    /* renamed from: f */
    public static SpecificData f49133f;

    /* renamed from: g */
    public static final DatumWriter<C17508e1> f49134g;

    /* renamed from: h */
    public static final DatumReader<C17508e1> f49135h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49136a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49137b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49138c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49139d;

    /* renamed from: e.a.l5.a.e1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e1$b.class */
    public static class C17510b extends SpecificRecordBuilderBase<C17508e1> implements RecordBuilder<C17508e1> {

        /* renamed from: a */
        public CharSequence f49140a;

        /* renamed from: b */
        public CharSequence f49141b;

        public C17510b(C17509a c17509a) {
            super(C17508e1.f49132e);
        }

        /* renamed from: a */
        public C17508e1 build() {
            try {
                C17508e1 c17508e1 = new C17508e1();
                c17508e1.f49136a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17508e1.f49137b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17508e1.f49138c = fieldSetFlags()[2] ? this.f49140a : (CharSequence) defaultValue(fields()[2]);
                c17508e1.f49139d = fieldSetFlags()[3] ? this.f49141b : (CharSequence) defaultValue(fields()[3]);
                return c17508e1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppMessageSent\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Deprecated, use AppImSend instead.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"localId\",\"type\":\"string\"}]}");
        f49132e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49133f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49133f, m8613i0);
        f49134g = f49133f.createDatumWriter(m8613i0);
        f49135h = f49133f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49136a = null;
            } else {
                if (this.f49136a == null) {
                    this.f49136a = new C17638l3();
                }
                this.f49136a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49137b = null;
            } else {
                if (this.f49137b == null) {
                    this.f49137b = new ClientHeaderV2();
                }
                this.f49137b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49138c;
            this.f49138c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49139d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49139d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f49138c;
                        this.f49138c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49139d;
                        this.f49139d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49137b = null;
                } else {
                    if (this.f49137b == null) {
                        this.f49137b = new ClientHeaderV2();
                    }
                    this.f49137b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49136a = null;
            } else {
                if (this.f49136a == null) {
                    this.f49136a = new C17638l3();
                }
                this.f49136a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49136a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49136a.customEncode(encoder);
        }
        if (this.f49137b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49137b.customEncode(encoder);
        }
        encoder.writeString(this.f49138c);
        encoder.writeString(this.f49139d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49137b;
            }
            if (i == 2) {
                return this.f49138c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49139d;
        }
        return this.f49136a;
    }

    public Schema getSchema() {
        return f49132e;
    }

    public SpecificData getSpecificData() {
        return f49133f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49136a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49137b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49138c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49139d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49135h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49134g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
