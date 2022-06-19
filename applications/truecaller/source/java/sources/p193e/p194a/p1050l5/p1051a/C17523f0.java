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
/* renamed from: e.a.l5.a.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/f0.class */
public class C17523f0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49197d;

    /* renamed from: e */
    public static SpecificData f49198e;

    /* renamed from: f */
    public static final DatumWriter<C17523f0> f49199f;

    /* renamed from: g */
    public static final DatumReader<C17523f0> f49200g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49201a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49202b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49203c;

    /* renamed from: e.a.l5.a.f0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/f0$b.class */
    public static class C17525b extends SpecificRecordBuilderBase<C17523f0> implements RecordBuilder<C17523f0> {

        /* renamed from: a */
        public CharSequence f49204a;

        public C17525b(C17524a c17524a) {
            super(C17523f0.f49197d);
        }

        /* renamed from: a */
        public C17523f0 build() {
            try {
                C17523f0 c17523f0 = new C17523f0();
                c17523f0.f49201a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17523f0.f49202b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17523f0.f49203c = fieldSetFlags()[2] ? this.f49204a : (CharSequence) defaultValue(fields()[2]);
                return c17523f0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppClose\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"}]}");
        f49197d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49198e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49198e, m8613i0);
        f49199f = f49198e.createDatumWriter(m8613i0);
        f49200g = f49198e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49201a = null;
            } else {
                if (this.f49201a == null) {
                    this.f49201a = new C17638l3();
                }
                this.f49201a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49202b = null;
            } else {
                if (this.f49202b == null) {
                    this.f49202b = new ClientHeaderV2();
                }
                this.f49202b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49203c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49203c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f49203c;
                    this.f49203c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49202b = null;
                } else {
                    if (this.f49202b == null) {
                        this.f49202b = new ClientHeaderV2();
                    }
                    this.f49202b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49201a = null;
            } else {
                if (this.f49201a == null) {
                    this.f49201a = new C17638l3();
                }
                this.f49201a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49201a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49201a.customEncode(encoder);
        }
        if (this.f49202b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49202b.customEncode(encoder);
        }
        encoder.writeString(this.f49203c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49202b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49203c;
        }
        return this.f49201a;
    }

    public Schema getSchema() {
        return f49197d;
    }

    public SpecificData getSpecificData() {
        return f49198e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49201a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49202b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49203c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49200g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49199f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
