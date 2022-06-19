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
/* renamed from: e.a.l5.a.m0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/m0.class */
public class C17645m0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49791d;

    /* renamed from: e */
    public static SpecificData f49792e;

    /* renamed from: f */
    public static final DatumWriter<C17645m0> f49793f;

    /* renamed from: g */
    public static final DatumReader<C17645m0> f49794g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49795a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49796b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49797c;

    /* renamed from: e.a.l5.a.m0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/m0$b.class */
    public static class C17647b extends SpecificRecordBuilderBase<C17645m0> implements RecordBuilder<C17645m0> {

        /* renamed from: a */
        public CharSequence f49798a;

        public C17647b(C17646a c17646a) {
            super(C17645m0.f49791d);
        }

        /* renamed from: a */
        public C17645m0 build() {
            try {
                C17645m0 c17645m0 = new C17645m0();
                c17645m0.f49795a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17645m0.f49796b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17645m0.f49797c = fieldSetFlags()[2] ? this.f49798a : (CharSequence) defaultValue(fields()[2]);
                return c17645m0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppDauInteraction\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Client event based on UI interaction aiming to replace Heartbeat for calculating DAU (do not use for any other purposes)\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"context\",\"type\":\"string\"}]}");
        f49791d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49792e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49792e, m8613i0);
        f49793f = f49792e.createDatumWriter(m8613i0);
        f49794g = f49792e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49795a = null;
            } else {
                if (this.f49795a == null) {
                    this.f49795a = new C17638l3();
                }
                this.f49795a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49796b = null;
            } else {
                if (this.f49796b == null) {
                    this.f49796b = new ClientHeaderV2();
                }
                this.f49796b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49797c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49797c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f49797c;
                    this.f49797c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49796b = null;
                } else {
                    if (this.f49796b == null) {
                        this.f49796b = new ClientHeaderV2();
                    }
                    this.f49796b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49795a = null;
            } else {
                if (this.f49795a == null) {
                    this.f49795a = new C17638l3();
                }
                this.f49795a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49795a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49795a.customEncode(encoder);
        }
        if (this.f49796b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49796b.customEncode(encoder);
        }
        encoder.writeString(this.f49797c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49796b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49797c;
        }
        return this.f49795a;
    }

    public Schema getSchema() {
        return f49791d;
    }

    public SpecificData getSpecificData() {
        return f49792e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49795a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49796b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49797c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49794g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49793f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
