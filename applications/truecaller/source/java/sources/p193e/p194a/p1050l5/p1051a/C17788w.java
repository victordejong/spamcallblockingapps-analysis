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
/* renamed from: e.a.l5.a.w */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/w.class */
public class C17788w extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50538f;

    /* renamed from: g */
    public static SpecificData f50539g;

    /* renamed from: h */
    public static final DatumWriter<C17788w> f50540h;

    /* renamed from: i */
    public static final DatumReader<C17788w> f50541i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50542a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50543b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50544c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50545d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50546e;

    /* renamed from: e.a.l5.a.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/w$b.class */
    public static class C17790b extends SpecificRecordBuilderBase<C17788w> implements RecordBuilder<C17788w> {

        /* renamed from: a */
        public CharSequence f50547a;

        /* renamed from: b */
        public CharSequence f50548b;

        /* renamed from: c */
        public CharSequence f50549c;

        public C17790b(C17789a c17789a) {
            super(C17788w.f50538f);
        }

        /* renamed from: a */
        public C17788w build() {
            try {
                C17788w c17788w = new C17788w();
                c17788w.f50542a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17788w.f50543b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17788w.f50544c = fieldSetFlags()[2] ? this.f50547a : (CharSequence) defaultValue(fields()[2]);
                c17788w.f50545d = fieldSetFlags()[3] ? this.f50548b : (CharSequence) defaultValue(fields()[3]);
                c17788w.f50546e = fieldSetFlags()[4] ? this.f50549c : (CharSequence) defaultValue(fields()[4]);
                return c17788w;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallInitiatedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"normalizedPhoneNumber\",\"type\":\"string\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"callId\",\"type\":\"string\"}]}");
        f50538f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50539g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50539g, m8613i0);
        f50540h = f50539g.createDatumWriter(m8613i0);
        f50541i = f50539g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50542a = null;
            } else {
                if (this.f50542a == null) {
                    this.f50542a = new C17638l3();
                }
                this.f50542a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50543b = null;
            } else {
                if (this.f50543b == null) {
                    this.f50543b = new ClientHeaderV2();
                }
                this.f50543b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50544c;
            this.f50544c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50545d;
            this.f50545d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50546e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50546e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f50544c;
                        this.f50544c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 3) {
                        Utf8 utf86 = this.f50545d;
                        this.f50545d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf87 = this.f50546e;
                        this.f50546e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50543b = null;
                } else {
                    if (this.f50543b == null) {
                        this.f50543b = new ClientHeaderV2();
                    }
                    this.f50543b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50542a = null;
            } else {
                if (this.f50542a == null) {
                    this.f50542a = new C17638l3();
                }
                this.f50542a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50542a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50542a.customEncode(encoder);
        }
        if (this.f50543b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50543b.customEncode(encoder);
        }
        encoder.writeString(this.f50544c);
        encoder.writeString(this.f50545d);
        encoder.writeString(this.f50546e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50543b;
            }
            if (i == 2) {
                return this.f50544c;
            }
            if (i == 3) {
                return this.f50545d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50546e;
        }
        return this.f50542a;
    }

    public Schema getSchema() {
        return f50538f;
    }

    public SpecificData getSpecificData() {
        return f50539g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50542a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50543b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50544c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50545d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50546e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50541i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50540h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
