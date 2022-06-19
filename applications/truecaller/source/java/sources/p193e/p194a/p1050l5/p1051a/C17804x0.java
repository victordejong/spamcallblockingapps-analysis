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
/* renamed from: e.a.l5.a.x0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/x0.class */
public class C17804x0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50619g;

    /* renamed from: h */
    public static SpecificData f50620h;

    /* renamed from: i */
    public static final DatumWriter<C17804x0> f50621i;

    /* renamed from: j */
    public static final DatumReader<C17804x0> f50622j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50623a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50624b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50625c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50626d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50627e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50628f;

    /* renamed from: e.a.l5.a.x0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/x0$b.class */
    public static class C17806b extends SpecificRecordBuilderBase<C17804x0> implements RecordBuilder<C17804x0> {

        /* renamed from: a */
        public CharSequence f50629a;

        /* renamed from: b */
        public CharSequence f50630b;

        /* renamed from: c */
        public CharSequence f50631c;

        /* renamed from: d */
        public CharSequence f50632d;

        public C17806b(C17805a c17805a) {
            super(C17804x0.f50619g);
        }

        /* renamed from: a */
        public C17804x0 build() {
            try {
                C17804x0 c17804x0 = new C17804x0();
                c17804x0.f50623a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17804x0.f50624b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17804x0.f50625c = fieldSetFlags()[2] ? this.f50629a : (CharSequence) defaultValue(fields()[2]);
                c17804x0.f50626d = fieldSetFlags()[3] ? this.f50630b : (CharSequence) defaultValue(fields()[3]);
                c17804x0.f50627e = fieldSetFlags()[4] ? this.f50631c : (CharSequence) defaultValue(fields()[4]);
                c17804x0.f50628f = fieldSetFlags()[5] ? this.f50632d : (CharSequence) defaultValue(fields()[5]);
                return c17804x0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImReaction\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Emoji reaction made to an IM message\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"imId\",\"type\":\"string\"},{\"name\":\"emoji\",\"type\":\"string\"},{\"name\":\"direction\",\"type\":\"string\"},{\"name\":\"initiatedVia\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f50619g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50620h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50620h, m8613i0);
        f50621i = f50620h.createDatumWriter(m8613i0);
        f50622j = f50620h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50623a = null;
            } else {
                if (this.f50623a == null) {
                    this.f50623a = new C17638l3();
                }
                this.f50623a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50624b = null;
            } else {
                if (this.f50624b == null) {
                    this.f50624b = new ClientHeaderV2();
                }
                this.f50624b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50625c;
            this.f50625c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50626d;
            this.f50626d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50627e;
            this.f50627e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50628f = null;
                return;
            }
            Utf8 utf84 = this.f50628f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f50628f = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf86 = this.f50625c;
                        this.f50625c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 3) {
                        Utf8 utf87 = this.f50626d;
                        this.f50626d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos == 4) {
                        Utf8 utf88 = this.f50627e;
                        this.f50627e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50628f = null;
                        } else {
                            Utf8 utf89 = this.f50628f;
                            this.f50628f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50624b = null;
                } else {
                    if (this.f50624b == null) {
                        this.f50624b = new ClientHeaderV2();
                    }
                    this.f50624b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50623a = null;
            } else {
                if (this.f50623a == null) {
                    this.f50623a = new C17638l3();
                }
                this.f50623a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50623a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50623a.customEncode(encoder);
        }
        if (this.f50624b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50624b.customEncode(encoder);
        }
        encoder.writeString(this.f50625c);
        encoder.writeString(this.f50626d);
        encoder.writeString(this.f50627e);
        if (this.f50628f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50628f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50624b;
            }
            if (i == 2) {
                return this.f50625c;
            }
            if (i == 3) {
                return this.f50626d;
            }
            if (i == 4) {
                return this.f50627e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50628f;
        }
        return this.f50623a;
    }

    public Schema getSchema() {
        return f50619g;
    }

    public SpecificData getSpecificData() {
        return f50620h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50623a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50624b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50625c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50626d = (CharSequence) obj;
        } else if (i == 4) {
            this.f50627e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50628f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50622j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50621i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
