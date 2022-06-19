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
/* renamed from: e.a.l5.a.o0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/o0.class */
public class C17675o0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49931h;

    /* renamed from: i */
    public static SpecificData f49932i;

    /* renamed from: j */
    public static final DatumWriter<C17675o0> f49933j;

    /* renamed from: k */
    public static final DatumReader<C17675o0> f49934k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49935a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49936b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49937c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49938d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49939e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49940f;
    @Deprecated

    /* renamed from: g */
    public boolean f49941g;

    /* renamed from: e.a.l5.a.o0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/o0$b.class */
    public static class C17677b extends SpecificRecordBuilderBase<C17675o0> implements RecordBuilder<C17675o0> {

        /* renamed from: a */
        public CharSequence f49942a;

        /* renamed from: b */
        public CharSequence f49943b;

        /* renamed from: c */
        public CharSequence f49944c;

        /* renamed from: d */
        public CharSequence f49945d;

        /* renamed from: e */
        public boolean f49946e;

        public C17677b(C17676a c17676a) {
            super(C17675o0.f49931h);
        }

        /* renamed from: a */
        public C17675o0 build() {
            try {
                C17675o0 c17675o0 = new C17675o0();
                c17675o0.f49935a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17675o0.f49936b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17675o0.f49937c = fieldSetFlags()[2] ? this.f49942a : (CharSequence) defaultValue(fields()[2]);
                c17675o0.f49938d = fieldSetFlags()[3] ? this.f49943b : (CharSequence) defaultValue(fields()[3]);
                c17675o0.f49939e = fieldSetFlags()[4] ? this.f49944c : (CharSequence) defaultValue(fields()[4]);
                c17675o0.f49940f = fieldSetFlags()[5] ? this.f49945d : (CharSequence) defaultValue(fields()[5]);
                c17675o0.f49941g = fieldSetFlags()[6] ? this.f49946e : ((Boolean) defaultValue(fields()[6])).booleanValue();
                return c17675o0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppFlashIncoming\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"senderId\",\"type\":\"string\"},{\"name\":\"threadId\",\"type\":\"string\"},{\"name\":\"contentType\",\"type\":\"string\"},{\"name\":\"fromPhonebook\",\"type\":\"boolean\"}]}");
        f49931h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49932i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49932i, m8613i0);
        f49933j = f49932i.createDatumWriter(m8613i0);
        f49934k = f49932i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49935a = null;
            } else {
                if (this.f49935a == null) {
                    this.f49935a = new C17638l3();
                }
                this.f49935a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49936b = null;
            } else {
                if (this.f49936b == null) {
                    this.f49936b = new ClientHeaderV2();
                }
                this.f49936b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49937c;
            this.f49937c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49938d;
            this.f49938d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49939e;
            this.f49939e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49940f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f49940f = resolvingDecoder.readString(utf85);
            this.f49941g = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49935a = null;
                        break;
                    } else {
                        if (this.f49935a == null) {
                            this.f49935a = new C17638l3();
                        }
                        this.f49935a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49936b = null;
                        break;
                    } else {
                        if (this.f49936b == null) {
                            this.f49936b = new ClientHeaderV2();
                        }
                        this.f49936b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf86 = this.f49937c;
                    this.f49937c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 3:
                    Utf8 utf87 = this.f49938d;
                    this.f49938d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 4:
                    Utf8 utf88 = this.f49939e;
                    this.f49939e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 5:
                    Utf8 utf89 = this.f49940f;
                    this.f49940f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 6:
                    this.f49941g = resolvingDecoder.readBoolean();
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49935a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49935a.customEncode(encoder);
        }
        if (this.f49936b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49936b.customEncode(encoder);
        }
        encoder.writeString(this.f49937c);
        encoder.writeString(this.f49938d);
        encoder.writeString(this.f49939e);
        encoder.writeString(this.f49940f);
        encoder.writeBoolean(this.f49941g);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49935a;
            case 1:
                return this.f49936b;
            case 2:
                return this.f49937c;
            case 3:
                return this.f49938d;
            case 4:
                return this.f49939e;
            case 5:
                return this.f49940f;
            case 6:
                return Boolean.valueOf(this.f49941g);
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49931h;
    }

    public SpecificData getSpecificData() {
        return f49932i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49935a = (C17638l3) obj;
                return;
            case 1:
                this.f49936b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49937c = (CharSequence) obj;
                return;
            case 3:
                this.f49938d = (CharSequence) obj;
                return;
            case 4:
                this.f49939e = (CharSequence) obj;
                return;
            case 5:
                this.f49940f = (CharSequence) obj;
                return;
            case 6:
                this.f49941g = ((Boolean) obj).booleanValue();
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49934k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49933j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
