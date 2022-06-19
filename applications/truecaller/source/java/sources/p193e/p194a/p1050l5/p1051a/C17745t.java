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
/* renamed from: e.a.l5.a.t */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/t.class */
public class C17745t extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50300e;

    /* renamed from: f */
    public static SpecificData f50301f;

    /* renamed from: g */
    public static final DatumWriter<C17745t> f50302g;

    /* renamed from: h */
    public static final DatumReader<C17745t> f50303h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50304a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50305b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50306c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50307d;

    /* renamed from: e.a.l5.a.t$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/t$b.class */
    public static class C17747b extends SpecificRecordBuilderBase<C17745t> implements RecordBuilder<C17745t> {

        /* renamed from: a */
        public CharSequence f50308a;

        /* renamed from: b */
        public CharSequence f50309b;

        public C17747b(C17746a c17746a) {
            super(C17745t.f50300e);
        }

        /* renamed from: a */
        public C17745t build() {
            try {
                C17745t c17745t = new C17745t();
                c17745t.f50304a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17745t.f50305b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17745t.f50306c = fieldSetFlags()[2] ? this.f50308a : (CharSequence) defaultValue(fields()[2]);
                c17745t.f50307d = fieldSetFlags()[3] ? this.f50309b : (CharSequence) defaultValue(fields()[3]);
                return c17745t;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallContextShown\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track call context message was shown successfully *\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"callContextMessageId\",\"type\":\"string\",\"doc\":\"Call context message id\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"context in which the call reason message is shown *\"}]}");
        f50300e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50301f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50301f, m8613i0);
        f50302g = f50301f.createDatumWriter(m8613i0);
        f50303h = f50301f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50304a = null;
            } else {
                if (this.f50304a == null) {
                    this.f50304a = new C17638l3();
                }
                this.f50304a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50305b = null;
            } else {
                if (this.f50305b == null) {
                    this.f50305b = new ClientHeaderV2();
                }
                this.f50305b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50306c;
            this.f50306c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50307d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f50307d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f50306c;
                        this.f50306c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f50307d;
                        this.f50307d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50305b = null;
                } else {
                    if (this.f50305b == null) {
                        this.f50305b = new ClientHeaderV2();
                    }
                    this.f50305b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50304a = null;
            } else {
                if (this.f50304a == null) {
                    this.f50304a = new C17638l3();
                }
                this.f50304a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50304a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50304a.customEncode(encoder);
        }
        if (this.f50305b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50305b.customEncode(encoder);
        }
        encoder.writeString(this.f50306c);
        encoder.writeString(this.f50307d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50305b;
            }
            if (i == 2) {
                return this.f50306c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50307d;
        }
        return this.f50304a;
    }

    public Schema getSchema() {
        return f50300e;
    }

    public SpecificData getSpecificData() {
        return f50301f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50304a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50305b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50306c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50307d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50303h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50302g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
