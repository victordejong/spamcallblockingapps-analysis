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
/* renamed from: e.a.l5.a.x */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/x.class */
public class C17801x extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50611d;

    /* renamed from: e */
    public static SpecificData f50612e;

    /* renamed from: f */
    public static final DatumWriter<C17801x> f50613f;

    /* renamed from: g */
    public static final DatumReader<C17801x> f50614g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50615a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50616b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50617c;

    /* renamed from: e.a.l5.a.x$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/x$b.class */
    public static class C17803b extends SpecificRecordBuilderBase<C17801x> implements RecordBuilder<C17801x> {

        /* renamed from: a */
        public CharSequence f50618a;

        public C17803b(C17802a c17802a) {
            super(C17801x.f50611d);
        }

        /* renamed from: a */
        public C17801x build() {
            try {
                C17801x c17801x = new C17801x();
                c17801x.f50615a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17801x.f50616b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17801x.f50617c = fieldSetFlags()[2] ? this.f50618a : (CharSequence) defaultValue(fields()[2]);
                return c17801x;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallNotificationUpdateReceived\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track that received call update notification was received *\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"callContextMessageId\",\"type\":\"string\",\"doc\":\"Call context message id\"}]}");
        f50611d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50612e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50612e, m8613i0);
        f50613f = f50612e.createDatumWriter(m8613i0);
        f50614g = f50612e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50615a = null;
            } else {
                if (this.f50615a == null) {
                    this.f50615a = new C17638l3();
                }
                this.f50615a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50616b = null;
            } else {
                if (this.f50616b == null) {
                    this.f50616b = new ClientHeaderV2();
                }
                this.f50616b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f50617c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f50617c = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    Utf8 utf83 = this.f50617c;
                    this.f50617c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50616b = null;
                } else {
                    if (this.f50616b == null) {
                        this.f50616b = new ClientHeaderV2();
                    }
                    this.f50616b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50615a = null;
            } else {
                if (this.f50615a == null) {
                    this.f50615a = new C17638l3();
                }
                this.f50615a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50615a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50615a.customEncode(encoder);
        }
        if (this.f50616b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50616b.customEncode(encoder);
        }
        encoder.writeString(this.f50617c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50616b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50617c;
        }
        return this.f50615a;
    }

    public Schema getSchema() {
        return f50611d;
    }

    public SpecificData getSpecificData() {
        return f50612e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50615a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50616b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50617c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50614g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50613f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
