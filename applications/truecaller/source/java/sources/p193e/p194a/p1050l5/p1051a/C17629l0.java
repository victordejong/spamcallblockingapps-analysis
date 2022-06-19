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
/* renamed from: e.a.l5.a.l0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l0.class */
public class C17629l0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49729e;

    /* renamed from: f */
    public static SpecificData f49730f;

    /* renamed from: g */
    public static final DatumWriter<C17629l0> f49731g;

    /* renamed from: h */
    public static final DatumReader<C17629l0> f49732h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49733a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49734b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49735c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49736d;

    /* renamed from: e.a.l5.a.l0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/l0$b.class */
    public static class C17631b extends SpecificRecordBuilderBase<C17629l0> implements RecordBuilder<C17629l0> {

        /* renamed from: a */
        public CharSequence f49737a;

        /* renamed from: b */
        public CharSequence f49738b;

        public C17631b(C17630a c17630a) {
            super(C17629l0.f49729e);
        }

        /* renamed from: a */
        public C17629l0 build() {
            try {
                C17629l0 c17629l0 = new C17629l0();
                c17629l0.f49733a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17629l0.f49734b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17629l0.f49735c = fieldSetFlags()[2] ? this.f49737a : (CharSequence) defaultValue(fields()[2]);
                c17629l0.f49736d = fieldSetFlags()[3] ? this.f49738b : (CharSequence) defaultValue(fields()[3]);
                return c17629l0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17631b m15909b(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49738b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: c */
        public C17631b m15908c(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49737a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCustomEvent\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"eventType\",\"type\":\"string\"},{\"name\":\"eventContent\",\"type\":\"string\"}]}");
        f49729e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49730f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49730f, m8613i0);
        f49731g = f49730f.createDatumWriter(m8613i0);
        f49732h = f49730f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17631b m15911a() {
        return new C17631b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49733a = null;
            } else {
                if (this.f49733a == null) {
                    this.f49733a = new C17638l3();
                }
                this.f49733a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49734b = null;
            } else {
                if (this.f49734b == null) {
                    this.f49734b = new ClientHeaderV2();
                }
                this.f49734b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49735c;
            this.f49735c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49736d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49736d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f49735c;
                        this.f49735c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf85 = this.f49736d;
                        this.f49736d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49734b = null;
                } else {
                    if (this.f49734b == null) {
                        this.f49734b = new ClientHeaderV2();
                    }
                    this.f49734b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49733a = null;
            } else {
                if (this.f49733a == null) {
                    this.f49733a = new C17638l3();
                }
                this.f49733a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49733a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49733a.customEncode(encoder);
        }
        if (this.f49734b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49734b.customEncode(encoder);
        }
        encoder.writeString(this.f49735c);
        encoder.writeString(this.f49736d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49734b;
            }
            if (i == 2) {
                return this.f49735c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49736d;
        }
        return this.f49733a;
    }

    public Schema getSchema() {
        return f49729e;
    }

    public SpecificData getSpecificData() {
        return f49730f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49733a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49734b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49735c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49736d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49732h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49731g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
