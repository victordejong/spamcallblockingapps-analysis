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
/* renamed from: e.a.l5.a.l2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l2.class */
public class C17635l2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49749e;

    /* renamed from: f */
    public static SpecificData f49750f;

    /* renamed from: g */
    public static final DatumWriter<C17635l2> f49751g;

    /* renamed from: h */
    public static final DatumReader<C17635l2> f49752h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49753a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49754b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49755c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49756d;

    /* renamed from: e.a.l5.a.l2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/l2$b.class */
    public static class C17637b extends SpecificRecordBuilderBase<C17635l2> implements RecordBuilder<C17635l2> {

        /* renamed from: a */
        public CharSequence f49757a;

        /* renamed from: b */
        public CharSequence f49758b;

        public C17637b(C17636a c17636a) {
            super(C17635l2.f49749e);
        }

        /* renamed from: a */
        public C17635l2 build() {
            try {
                C17635l2 c17635l2 = new C17635l2();
                c17635l2.f49753a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17635l2.f49754b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17635l2.f49755c = fieldSetFlags()[2] ? this.f49757a : (CharSequence) defaultValue(fields()[2]);
                c17635l2.f49756d = fieldSetFlags()[3] ? this.f49758b : (CharSequence) defaultValue(fields()[3]);
                return c17635l2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17637b m15904b(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49758b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: c */
        public C17637b m15903c(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49757a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppUserInteraction\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"action\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f49749e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49750f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49750f, m8613i0);
        f49751g = f49750f.createDatumWriter(m8613i0);
        f49752h = f49750f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17637b m15906a() {
        return new C17637b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49753a = null;
            } else {
                if (this.f49753a == null) {
                    this.f49753a = new C17638l3();
                }
                this.f49753a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49754b = null;
            } else {
                if (this.f49754b == null) {
                    this.f49754b = new ClientHeaderV2();
                }
                this.f49754b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49755c = null;
            } else {
                Utf8 utf8 = this.f49755c;
                this.f49755c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49756d = null;
                return;
            }
            Utf8 utf82 = this.f49756d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49756d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        if (pos != 3) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49756d = null;
                        } else {
                            Utf8 utf84 = this.f49756d;
                            this.f49756d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49755c = null;
                    } else {
                        Utf8 utf85 = this.f49755c;
                        this.f49755c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49754b = null;
                } else {
                    if (this.f49754b == null) {
                        this.f49754b = new ClientHeaderV2();
                    }
                    this.f49754b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49753a = null;
            } else {
                if (this.f49753a == null) {
                    this.f49753a = new C17638l3();
                }
                this.f49753a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49753a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49753a.customEncode(encoder);
        }
        if (this.f49754b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49754b.customEncode(encoder);
        }
        if (this.f49755c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49755c);
        }
        if (this.f49756d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49756d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49754b;
            }
            if (i == 2) {
                return this.f49755c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49756d;
        }
        return this.f49753a;
    }

    public Schema getSchema() {
        return f49749e;
    }

    public SpecificData getSpecificData() {
        return f49750f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49753a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49754b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49755c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49756d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49752h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49751g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
