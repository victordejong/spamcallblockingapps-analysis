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
/* renamed from: e.a.l5.a.n0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/n0.class */
public class C17660n0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49859j;

    /* renamed from: k */
    public static SpecificData f49860k;

    /* renamed from: l */
    public static final DatumWriter<C17660n0> f49861l;

    /* renamed from: m */
    public static final DatumReader<C17660n0> f49862m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49863a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49864b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49865c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49866d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49867e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49868f;
    @Deprecated

    /* renamed from: g */
    public boolean f49869g;
    @Deprecated

    /* renamed from: h */
    public boolean f49870h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49871i;

    /* renamed from: e.a.l5.a.n0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/n0$b.class */
    public static class C17662b extends SpecificRecordBuilderBase<C17660n0> implements RecordBuilder<C17660n0> {

        /* renamed from: a */
        public CharSequence f49872a;

        /* renamed from: b */
        public CharSequence f49873b;

        /* renamed from: c */
        public CharSequence f49874c;

        /* renamed from: d */
        public CharSequence f49875d;

        /* renamed from: e */
        public boolean f49876e;

        /* renamed from: f */
        public boolean f49877f;

        /* renamed from: g */
        public CharSequence f49878g;

        public C17662b(C17661a c17661a) {
            super(C17660n0.f49859j);
        }

        /* renamed from: a */
        public C17660n0 build() {
            try {
                C17660n0 c17660n0 = new C17660n0();
                c17660n0.f49863a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17660n0.f49864b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17660n0.f49865c = fieldSetFlags()[2] ? this.f49872a : (CharSequence) defaultValue(fields()[2]);
                c17660n0.f49866d = fieldSetFlags()[3] ? this.f49873b : (CharSequence) defaultValue(fields()[3]);
                c17660n0.f49867e = fieldSetFlags()[4] ? this.f49874c : (CharSequence) defaultValue(fields()[4]);
                c17660n0.f49868f = fieldSetFlags()[5] ? this.f49875d : (CharSequence) defaultValue(fields()[5]);
                c17660n0.f49869g = fieldSetFlags()[6] ? this.f49876e : ((Boolean) defaultValue(fields()[6])).booleanValue();
                c17660n0.f49870h = fieldSetFlags()[7] ? this.f49877f : ((Boolean) defaultValue(fields()[7])).booleanValue();
                c17660n0.f49871i = fieldSetFlags()[8] ? this.f49878g : (CharSequence) defaultValue(fields()[8]);
                return c17660n0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppFlashAction\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"senderId\",\"type\":\"string\"},{\"name\":\"threadId\",\"type\":\"string\"},{\"name\":\"contentType\",\"type\":\"string\"},{\"name\":\"fromPhonebook\",\"type\":\"boolean\"},{\"name\":\"missed\",\"type\":\"boolean\"},{\"name\":\"userAction\",\"type\":[\"null\",\"string\"]}]}");
        f49859j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49860k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49860k, m8613i0);
        f49861l = f49860k.createDatumWriter(m8613i0);
        f49862m = f49860k.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49863a = null;
            } else {
                if (this.f49863a == null) {
                    this.f49863a = new C17638l3();
                }
                this.f49863a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49864b = null;
            } else {
                if (this.f49864b == null) {
                    this.f49864b = new ClientHeaderV2();
                }
                this.f49864b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49865c;
            this.f49865c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49866d;
            this.f49866d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49867e;
            this.f49867e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49868f;
            this.f49868f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f49869g = resolvingDecoder.readBoolean();
            this.f49870h = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49871i = null;
                return;
            }
            Utf8 utf85 = this.f49871i;
            Utf8 utf86 = null;
            if (utf85 instanceof Utf8) {
                utf86 = utf85;
            }
            this.f49871i = resolvingDecoder.readString(utf86);
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49863a = null;
                        break;
                    } else {
                        if (this.f49863a == null) {
                            this.f49863a = new C17638l3();
                        }
                        this.f49863a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49864b = null;
                        break;
                    } else {
                        if (this.f49864b == null) {
                            this.f49864b = new ClientHeaderV2();
                        }
                        this.f49864b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf87 = this.f49865c;
                    this.f49865c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 3:
                    Utf8 utf88 = this.f49866d;
                    this.f49866d = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 4:
                    Utf8 utf89 = this.f49867e;
                    this.f49867e = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 5:
                    Utf8 utf810 = this.f49868f;
                    this.f49868f = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 6:
                    this.f49869g = resolvingDecoder.readBoolean();
                    break;
                case 7:
                    this.f49870h = resolvingDecoder.readBoolean();
                    break;
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49871i = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f49871i;
                        this.f49871i = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49863a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49863a.customEncode(encoder);
        }
        if (this.f49864b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49864b.customEncode(encoder);
        }
        encoder.writeString(this.f49865c);
        encoder.writeString(this.f49866d);
        encoder.writeString(this.f49867e);
        encoder.writeString(this.f49868f);
        encoder.writeBoolean(this.f49869g);
        encoder.writeBoolean(this.f49870h);
        if (this.f49871i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49871i);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49863a;
            case 1:
                return this.f49864b;
            case 2:
                return this.f49865c;
            case 3:
                return this.f49866d;
            case 4:
                return this.f49867e;
            case 5:
                return this.f49868f;
            case 6:
                return Boolean.valueOf(this.f49869g);
            case 7:
                return Boolean.valueOf(this.f49870h);
            case 8:
                return this.f49871i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49859j;
    }

    public SpecificData getSpecificData() {
        return f49860k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49863a = (C17638l3) obj;
                return;
            case 1:
                this.f49864b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49865c = (CharSequence) obj;
                return;
            case 3:
                this.f49866d = (CharSequence) obj;
                return;
            case 4:
                this.f49867e = (CharSequence) obj;
                return;
            case 5:
                this.f49868f = (CharSequence) obj;
                return;
            case 6:
                this.f49869g = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f49870h = ((Boolean) obj).booleanValue();
                return;
            case 8:
                this.f49871i = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49862m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49861l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
