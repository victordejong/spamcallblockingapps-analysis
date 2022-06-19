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
/* renamed from: e.a.l5.a.z1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/z1.class */
public class C17837z1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50769f;

    /* renamed from: g */
    public static SpecificData f50770g;

    /* renamed from: h */
    public static final DatumWriter<C17837z1> f50771h;

    /* renamed from: i */
    public static final DatumReader<C17837z1> f50772i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50773a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50774b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50775c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50776d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50777e;

    /* renamed from: e.a.l5.a.z1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/z1$b.class */
    public static class C17839b extends SpecificRecordBuilderBase<C17837z1> implements RecordBuilder<C17837z1> {

        /* renamed from: a */
        public CharSequence f50778a;

        /* renamed from: b */
        public CharSequence f50779b;

        /* renamed from: c */
        public CharSequence f50780c;

        public C17839b(C17838a c17838a) {
            super(C17837z1.f50769f);
        }

        /* renamed from: a */
        public C17837z1 build() {
            try {
                C17837z1 c17837z1 = new C17837z1();
                c17837z1.f50773a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17837z1.f50774b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17837z1.f50775c = fieldSetFlags()[2] ? this.f50778a : (CharSequence) defaultValue(fields()[2]);
                c17837z1.f50776d = fieldSetFlags()[3] ? this.f50779b : (CharSequence) defaultValue(fields()[3]);
                c17837z1.f50777e = fieldSetFlags()[4] ? this.f50780c : (CharSequence) defaultValue(fields()[4]);
                return c17837z1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17839b m15766b(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f50780c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: c */
        public C17839b m15765c(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50778a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: d */
        public C17839b m15764d(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f50779b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSettingChanged\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"setting\",\"type\":\"string\"},{\"name\":\"value\",\"type\":\"string\"},{\"name\":\"context\",\"type\":\"string\"}]}");
        f50769f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50770g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50770g, m8613i0);
        f50771h = f50770g.createDatumWriter(m8613i0);
        f50772i = f50770g.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17839b m15768a() {
        return new C17839b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50773a = null;
            } else {
                if (this.f50773a == null) {
                    this.f50773a = new C17638l3();
                }
                this.f50773a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50774b = null;
            } else {
                if (this.f50774b == null) {
                    this.f50774b = new ClientHeaderV2();
                }
                this.f50774b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50775c;
            this.f50775c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50776d;
            this.f50776d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50777e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50777e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f50775c;
                        this.f50775c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 3) {
                        Utf8 utf86 = this.f50776d;
                        this.f50776d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf87 = this.f50777e;
                        this.f50777e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50774b = null;
                } else {
                    if (this.f50774b == null) {
                        this.f50774b = new ClientHeaderV2();
                    }
                    this.f50774b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50773a = null;
            } else {
                if (this.f50773a == null) {
                    this.f50773a = new C17638l3();
                }
                this.f50773a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50773a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50773a.customEncode(encoder);
        }
        if (this.f50774b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50774b.customEncode(encoder);
        }
        encoder.writeString(this.f50775c);
        encoder.writeString(this.f50776d);
        encoder.writeString(this.f50777e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50774b;
            }
            if (i == 2) {
                return this.f50775c;
            }
            if (i == 3) {
                return this.f50776d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50777e;
        }
        return this.f50773a;
    }

    public Schema getSchema() {
        return f50769f;
    }

    public SpecificData getSpecificData() {
        return f50770g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50773a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50774b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50775c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50776d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50777e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50772i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50771h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
