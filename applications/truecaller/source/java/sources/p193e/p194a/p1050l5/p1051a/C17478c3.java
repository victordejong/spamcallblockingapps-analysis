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
/* renamed from: e.a.l5.a.c3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/c3.class */
public class C17478c3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49006d;

    /* renamed from: e */
    public static SpecificData f49007e;

    /* renamed from: f */
    public static final DatumWriter<C17478c3> f49008f;

    /* renamed from: g */
    public static final DatumReader<C17478c3> f49009g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49010a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49011b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49012c;

    /* renamed from: e.a.l5.a.c3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/c3$b.class */
    public static class C17480b extends SpecificRecordBuilderBase<C17478c3> implements RecordBuilder<C17478c3> {

        /* renamed from: a */
        public CharSequence f49013a;

        public C17480b(C17479a c17479a) {
            super(C17478c3.f49006d);
        }

        /* renamed from: a */
        public C17478c3 build() {
            try {
                C17478c3 c17478c3 = new C17478c3();
                c17478c3.f49010a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17478c3.f49011b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17478c3.f49012c = fieldSetFlags()[2] ? this.f49013a : (CharSequence) defaultValue(fields()[2]);
                return c17478c3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWCNotificationShown\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"appName\",\"type\":\"string\",\"doc\":\"Name of the app notification was received from (WhatsApp, Telegram, Viber etc) log app names not package name\"}]}");
        f49006d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49007e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49007e, m8613i0);
        f49008f = f49007e.createDatumWriter(m8613i0);
        f49009g = f49007e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49010a = null;
            } else {
                if (this.f49010a == null) {
                    this.f49010a = new C17638l3();
                }
                this.f49010a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49011b = null;
            } else {
                if (this.f49011b == null) {
                    this.f49011b = new ClientHeaderV2();
                }
                this.f49011b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49012c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49012c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f49012c;
                    this.f49012c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49011b = null;
                } else {
                    if (this.f49011b == null) {
                        this.f49011b = new ClientHeaderV2();
                    }
                    this.f49011b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49010a = null;
            } else {
                if (this.f49010a == null) {
                    this.f49010a = new C17638l3();
                }
                this.f49010a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49010a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49010a.customEncode(encoder);
        }
        if (this.f49011b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49011b.customEncode(encoder);
        }
        encoder.writeString(this.f49012c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49011b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49012c;
        }
        return this.f49010a;
    }

    public Schema getSchema() {
        return f49006d;
    }

    public SpecificData getSpecificData() {
        return f49007e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49010a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49011b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49012c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49009g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49008f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
