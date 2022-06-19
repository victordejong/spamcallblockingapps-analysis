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
/* renamed from: e.a.l5.a.y */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/y.class */
public class C17816y extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50667g;

    /* renamed from: h */
    public static SpecificData f50668h;

    /* renamed from: i */
    public static final DatumWriter<C17816y> f50669i;

    /* renamed from: j */
    public static final DatumReader<C17816y> f50670j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50671a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50672b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50673c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50674d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50675e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50676f;

    /* renamed from: e.a.l5.a.y$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/y$b.class */
    public static class C17818b extends SpecificRecordBuilderBase<C17816y> implements RecordBuilder<C17816y> {

        /* renamed from: a */
        public CharSequence f50677a;

        /* renamed from: b */
        public CharSequence f50678b;

        /* renamed from: c */
        public CharSequence f50679c;

        /* renamed from: d */
        public CharSequence f50680d;

        public C17818b(C17817a c17817a) {
            super(C17816y.f50667g);
        }

        /* renamed from: a */
        public C17816y build() {
            try {
                C17816y c17816y = new C17816y();
                c17816y.f50671a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17816y.f50672b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17816y.f50673c = fieldSetFlags()[2] ? this.f50677a : (CharSequence) defaultValue(fields()[2]);
                c17816y.f50674d = fieldSetFlags()[3] ? this.f50678b : (CharSequence) defaultValue(fields()[3]);
                c17816y.f50675e = fieldSetFlags()[4] ? this.f50679c : (CharSequence) defaultValue(fields()[4]);
                c17816y.f50676f = fieldSetFlags()[5] ? this.f50680d : (CharSequence) defaultValue(fields()[5]);
                return c17816y;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallOutgoing\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"dialedPhoneNumber\",\"type\":\"string\"},{\"name\":\"normalizedPhoneNumber\",\"type\":\"string\"},{\"name\":\"searchCountryCode\",\"type\":\"string\"},{\"name\":\"callId\",\"type\":[\"null\",\"string\"]}]}");
        f50667g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50668h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50668h, m8613i0);
        f50669i = f50668h.createDatumWriter(m8613i0);
        f50670j = f50668h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50671a = null;
            } else {
                if (this.f50671a == null) {
                    this.f50671a = new C17638l3();
                }
                this.f50671a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50672b = null;
            } else {
                if (this.f50672b == null) {
                    this.f50672b = new ClientHeaderV2();
                }
                this.f50672b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50673c;
            this.f50673c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50674d;
            this.f50674d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50675e;
            this.f50675e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50676f = null;
                return;
            }
            Utf8 utf84 = this.f50676f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f50676f = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf86 = this.f50673c;
                        this.f50673c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 3) {
                        Utf8 utf87 = this.f50674d;
                        this.f50674d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos == 4) {
                        Utf8 utf88 = this.f50675e;
                        this.f50675e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50676f = null;
                        } else {
                            Utf8 utf89 = this.f50676f;
                            this.f50676f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50672b = null;
                } else {
                    if (this.f50672b == null) {
                        this.f50672b = new ClientHeaderV2();
                    }
                    this.f50672b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50671a = null;
            } else {
                if (this.f50671a == null) {
                    this.f50671a = new C17638l3();
                }
                this.f50671a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50671a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50671a.customEncode(encoder);
        }
        if (this.f50672b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50672b.customEncode(encoder);
        }
        encoder.writeString(this.f50673c);
        encoder.writeString(this.f50674d);
        encoder.writeString(this.f50675e);
        if (this.f50676f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50676f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50672b;
            }
            if (i == 2) {
                return this.f50673c;
            }
            if (i == 3) {
                return this.f50674d;
            }
            if (i == 4) {
                return this.f50675e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50676f;
        }
        return this.f50671a;
    }

    public Schema getSchema() {
        return f50667g;
    }

    public SpecificData getSpecificData() {
        return f50668h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50671a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50672b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50673c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50674d = (CharSequence) obj;
        } else if (i == 4) {
            this.f50675e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50676f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50670j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50669i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
