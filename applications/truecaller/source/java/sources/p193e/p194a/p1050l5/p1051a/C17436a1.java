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
/* renamed from: e.a.l5.a.a1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a1.class */
public class C17436a1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f48828g;

    /* renamed from: h */
    public static SpecificData f48829h;

    /* renamed from: i */
    public static final DatumWriter<C17436a1> f48830i;

    /* renamed from: j */
    public static final DatumReader<C17436a1> f48831j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48832a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48833b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f48834c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48835d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f48836e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f48837f;

    /* renamed from: e.a.l5.a.a1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/a1$b.class */
    public static class C17438b extends SpecificRecordBuilderBase<C17436a1> implements RecordBuilder<C17436a1> {

        /* renamed from: a */
        public CharSequence f48838a;

        /* renamed from: b */
        public CharSequence f48839b;

        /* renamed from: c */
        public CharSequence f48840c;

        /* renamed from: d */
        public CharSequence f48841d;

        public C17438b(C17437a c17437a) {
            super(C17436a1.f48828g);
        }

        /* renamed from: a */
        public C17436a1 build() {
            try {
                C17436a1 c17436a1 = new C17436a1();
                c17436a1.f48832a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17436a1.f48833b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17436a1.f48834c = fieldSetFlags()[2] ? this.f48838a : (CharSequence) defaultValue(fields()[2]);
                c17436a1.f48835d = fieldSetFlags()[3] ? this.f48839b : (CharSequence) defaultValue(fields()[3]);
                c17436a1.f48836e = fieldSetFlags()[4] ? this.f48840c : (CharSequence) defaultValue(fields()[4]);
                c17436a1.f48837f = fieldSetFlags()[5] ? this.f48841d : (CharSequence) defaultValue(fields()[5]);
                return c17436a1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17438b m16035b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f48838a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17438b m16034c(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f48841d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: d */
        public C17438b m16033d(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f48839b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: e */
        public C17438b m16032e(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f48840c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppMessageIncoming\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"SMS & MMS received by Android client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"senderId\",\"type\":\"string\"},{\"name\":\"senderType\",\"type\":\"string\"},{\"name\":\"messageType\",\"type\":\"string\"}]}");
        f48828g = m8613i0;
        SpecificData specificData = new SpecificData();
        f48829h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48829h, m8613i0);
        f48830i = f48829h.createDatumWriter(m8613i0);
        f48831j = f48829h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48832a = null;
            } else {
                if (this.f48832a == null) {
                    this.f48832a = new C17638l3();
                }
                this.f48832a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48833b = null;
            } else {
                if (this.f48833b == null) {
                    this.f48833b = new ClientHeaderV2();
                }
                this.f48833b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f48834c;
            this.f48834c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48835d;
            this.f48835d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f48836e;
            this.f48836e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f48837f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f48837f = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf86 = this.f48834c;
                        this.f48834c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 3) {
                        Utf8 utf87 = this.f48835d;
                        this.f48835d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos == 4) {
                        Utf8 utf88 = this.f48836e;
                        this.f48836e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf89 = this.f48837f;
                        this.f48837f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48833b = null;
                } else {
                    if (this.f48833b == null) {
                        this.f48833b = new ClientHeaderV2();
                    }
                    this.f48833b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48832a = null;
            } else {
                if (this.f48832a == null) {
                    this.f48832a = new C17638l3();
                }
                this.f48832a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48832a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48832a.customEncode(encoder);
        }
        if (this.f48833b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48833b.customEncode(encoder);
        }
        encoder.writeString(this.f48834c);
        encoder.writeString(this.f48835d);
        encoder.writeString(this.f48836e);
        encoder.writeString(this.f48837f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48833b;
            }
            if (i == 2) {
                return this.f48834c;
            }
            if (i == 3) {
                return this.f48835d;
            }
            if (i == 4) {
                return this.f48836e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48837f;
        }
        return this.f48832a;
    }

    public Schema getSchema() {
        return f48828g;
    }

    public SpecificData getSpecificData() {
        return f48829h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48832a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48833b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48834c = (CharSequence) obj;
        } else if (i == 3) {
            this.f48835d = (CharSequence) obj;
        } else if (i == 4) {
            this.f48836e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48837f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48831j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48830i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
