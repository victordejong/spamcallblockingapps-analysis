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
/* renamed from: e.a.l5.a.e3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e3.class */
public class C17514e3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49165d;

    /* renamed from: e */
    public static SpecificData f49166e;

    /* renamed from: f */
    public static final DatumWriter<C17514e3> f49167f;

    /* renamed from: g */
    public static final DatumReader<C17514e3> f49168g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49169a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49170b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49171c;

    /* renamed from: e.a.l5.a.e3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e3$b.class */
    public static class C17516b extends SpecificRecordBuilderBase<C17514e3> implements RecordBuilder<C17514e3> {

        /* renamed from: a */
        public CharSequence f49172a;

        public C17516b(C17515a c17515a) {
            super(C17514e3.f49165d);
        }

        /* renamed from: a */
        public C17514e3 build() {
            try {
                C17514e3 c17514e3 = new C17514e3();
                c17514e3.f49169a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17514e3.f49170b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17514e3.f49171c = fieldSetFlags()[2] ? this.f49172a : (CharSequence) defaultValue(fields()[2]);
                return c17514e3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWCNumberLookupFailure\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"appName\",\"type\":\"string\",\"doc\":\"Name of the app notification was received from (WhatsApp, Telegram, Viber etc) log app names not package name\"}]}");
        f49165d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49166e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49166e, m8613i0);
        f49167f = f49166e.createDatumWriter(m8613i0);
        f49168g = f49166e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49169a = null;
            } else {
                if (this.f49169a == null) {
                    this.f49169a = new C17638l3();
                }
                this.f49169a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49170b = null;
            } else {
                if (this.f49170b == null) {
                    this.f49170b = new ClientHeaderV2();
                }
                this.f49170b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49171c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49171c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f49171c;
                    this.f49171c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49170b = null;
                } else {
                    if (this.f49170b == null) {
                        this.f49170b = new ClientHeaderV2();
                    }
                    this.f49170b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49169a = null;
            } else {
                if (this.f49169a == null) {
                    this.f49169a = new C17638l3();
                }
                this.f49169a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49169a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49169a.customEncode(encoder);
        }
        if (this.f49170b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49170b.customEncode(encoder);
        }
        encoder.writeString(this.f49171c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49170b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49171c;
        }
        return this.f49169a;
    }

    public Schema getSchema() {
        return f49165d;
    }

    public SpecificData getSpecificData() {
        return f49166e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49169a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49170b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49171c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49168g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49167f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
