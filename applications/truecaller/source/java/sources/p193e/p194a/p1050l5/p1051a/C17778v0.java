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
/* renamed from: e.a.l5.a.v0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/v0.class */
public class C17778v0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: i */
    public static final Schema f50492i;

    /* renamed from: j */
    public static SpecificData f50493j;

    /* renamed from: k */
    public static final DatumWriter<C17778v0> f50494k;

    /* renamed from: l */
    public static final DatumReader<C17778v0> f50495l;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50496a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50497b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50498c;
    @Deprecated

    /* renamed from: d */
    public boolean f50499d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50500e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50501f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50502g;
    @Deprecated

    /* renamed from: h */
    public boolean f50503h;

    /* renamed from: e.a.l5.a.v0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/v0$b.class */
    public static class C17780b extends SpecificRecordBuilderBase<C17778v0> implements RecordBuilder<C17778v0> {

        /* renamed from: a */
        public CharSequence f50504a;

        /* renamed from: b */
        public boolean f50505b;

        /* renamed from: c */
        public CharSequence f50506c;

        /* renamed from: d */
        public CharSequence f50507d;

        /* renamed from: e */
        public CharSequence f50508e;

        /* renamed from: f */
        public boolean f50509f;

        public C17780b(C17779a c17779a) {
            super(C17778v0.f50492i);
        }

        /* renamed from: a */
        public C17778v0 build() {
            try {
                C17778v0 c17778v0 = new C17778v0();
                c17778v0.f50496a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17778v0.f50497b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17778v0.f50498c = fieldSetFlags()[2] ? this.f50504a : (CharSequence) defaultValue(fields()[2]);
                c17778v0.f50499d = fieldSetFlags()[3] ? this.f50505b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17778v0.f50500e = fieldSetFlags()[4] ? this.f50506c : (CharSequence) defaultValue(fields()[4]);
                c17778v0.f50501f = fieldSetFlags()[5] ? this.f50507d : (CharSequence) defaultValue(fields()[5]);
                c17778v0.f50502g = fieldSetFlags()[6] ? this.f50508e : (CharSequence) defaultValue(fields()[6]);
                c17778v0.f50503h = fieldSetFlags()[7] ? this.f50509f : ((Boolean) defaultValue(fields()[7])).booleanValue();
                return c17778v0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImMessageInitiated\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Deprecated, use AppImSend instead\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"imId\",\"type\":\"string\"},{\"name\":\"isGroup\",\"type\":\"boolean\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"localId\",\"type\":\"string\"},{\"name\":\"attachmentType\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"hasText\",\"type\":\"boolean\"}]}");
        f50492i = m8613i0;
        SpecificData specificData = new SpecificData();
        f50493j = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50493j, m8613i0);
        f50494k = f50493j.createDatumWriter(m8613i0);
        f50495l = f50493j.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50496a = null;
            } else {
                if (this.f50496a == null) {
                    this.f50496a = new C17638l3();
                }
                this.f50496a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50497b = null;
            } else {
                if (this.f50497b == null) {
                    this.f50497b = new ClientHeaderV2();
                }
                this.f50497b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50498c;
            this.f50498c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f50499d = resolvingDecoder.readBoolean();
            Utf8 utf82 = this.f50500e;
            this.f50500e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50501f;
            this.f50501f = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50502g = null;
            } else {
                Utf8 utf84 = this.f50502g;
                Utf8 utf85 = null;
                if (utf84 instanceof Utf8) {
                    utf85 = utf84;
                }
                this.f50502g = resolvingDecoder.readString(utf85);
            }
            this.f50503h = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 8; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50496a = null;
                        break;
                    } else {
                        if (this.f50496a == null) {
                            this.f50496a = new C17638l3();
                        }
                        this.f50496a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50497b = null;
                        break;
                    } else {
                        if (this.f50497b == null) {
                            this.f50497b = new ClientHeaderV2();
                        }
                        this.f50497b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf86 = this.f50498c;
                    this.f50498c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 3:
                    this.f50499d = resolvingDecoder.readBoolean();
                    break;
                case 4:
                    Utf8 utf87 = this.f50500e;
                    this.f50500e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 5:
                    Utf8 utf88 = this.f50501f;
                    this.f50501f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50502g = null;
                        break;
                    } else {
                        Utf8 utf89 = this.f50502g;
                        this.f50502g = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                        break;
                    }
                case 7:
                    this.f50503h = resolvingDecoder.readBoolean();
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50496a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50496a.customEncode(encoder);
        }
        if (this.f50497b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50497b.customEncode(encoder);
        }
        encoder.writeString(this.f50498c);
        encoder.writeBoolean(this.f50499d);
        encoder.writeString(this.f50500e);
        encoder.writeString(this.f50501f);
        if (this.f50502g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50502g);
        }
        encoder.writeBoolean(this.f50503h);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50496a;
            case 1:
                return this.f50497b;
            case 2:
                return this.f50498c;
            case 3:
                return Boolean.valueOf(this.f50499d);
            case 4:
                return this.f50500e;
            case 5:
                return this.f50501f;
            case 6:
                return this.f50502g;
            case 7:
                return Boolean.valueOf(this.f50503h);
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50492i;
    }

    public SpecificData getSpecificData() {
        return f50493j;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50496a = (C17638l3) obj;
                return;
            case 1:
                this.f50497b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50498c = (CharSequence) obj;
                return;
            case 3:
                this.f50499d = ((Boolean) obj).booleanValue();
                return;
            case 4:
                this.f50500e = (CharSequence) obj;
                return;
            case 5:
                this.f50501f = (CharSequence) obj;
                return;
            case 6:
                this.f50502g = (CharSequence) obj;
                return;
            case 7:
                this.f50503h = ((Boolean) obj).booleanValue();
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50495l.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50494k.write(this, SpecificData.getEncoder(objectOutput));
    }
}
