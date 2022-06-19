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
/* renamed from: e.a.l5.a.h2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h2.class */
public class C17565h2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49426h;

    /* renamed from: i */
    public static SpecificData f49427i;

    /* renamed from: j */
    public static final DatumWriter<C17565h2> f49428j;

    /* renamed from: k */
    public static final DatumReader<C17565h2> f49429k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49430a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49431b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49432c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49433d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49434e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49435f;
    @Deprecated

    /* renamed from: g */
    public Boolean f49436g;

    /* renamed from: e.a.l5.a.h2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h2$b.class */
    public static class C17567b extends SpecificRecordBuilderBase<C17565h2> implements RecordBuilder<C17565h2> {

        /* renamed from: a */
        public CharSequence f49437a;

        /* renamed from: b */
        public CharSequence f49438b;

        /* renamed from: c */
        public CharSequence f49439c;

        /* renamed from: d */
        public CharSequence f49440d;

        /* renamed from: e */
        public Boolean f49441e;

        public C17567b(C17566a c17566a) {
            super(C17565h2.f49426h);
        }

        /* renamed from: a */
        public C17565h2 build() {
            try {
                C17565h2 c17565h2 = new C17565h2();
                c17565h2.f49430a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17565h2.f49431b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17565h2.f49432c = fieldSetFlags()[2] ? this.f49437a : (CharSequence) defaultValue(fields()[2]);
                c17565h2.f49433d = fieldSetFlags()[3] ? this.f49438b : (CharSequence) defaultValue(fields()[3]);
                c17565h2.f49434e = fieldSetFlags()[4] ? this.f49439c : (CharSequence) defaultValue(fields()[4]);
                c17565h2.f49435f = fieldSetFlags()[5] ? this.f49440d : (CharSequence) defaultValue(fields()[5]);
                c17565h2.f49436g = fieldSetFlags()[6] ? this.f49441e : (Boolean) defaultValue(fields()[6]);
                return c17565h2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSubscriptionClick\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Source of the subscription clicked\"},{\"name\":\"productKind\",\"type\":\"string\",\"doc\":\"Subscription product kind\"},{\"name\":\"sku\",\"type\":\"string\",\"doc\":\"Subscription sku\"},{\"name\":\"campaign\",\"type\":[\"null\",\"string\"],\"doc\":\"Campaign String\",\"default\":null},{\"name\":\"hadPremiumBefore\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Does user has premium in the past\",\"default\":null}]}");
        f49426h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49427i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49427i, m8613i0);
        f49428j = f49427i.createDatumWriter(m8613i0);
        f49429k = f49427i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49430a = null;
            } else {
                if (this.f49430a == null) {
                    this.f49430a = new C17638l3();
                }
                this.f49430a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49431b = null;
            } else {
                if (this.f49431b == null) {
                    this.f49431b = new ClientHeaderV2();
                }
                this.f49431b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49432c;
            this.f49432c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49433d;
            this.f49433d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49434e;
            this.f49434e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49435f = null;
            } else {
                Utf8 utf84 = this.f49435f;
                this.f49435f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49436g = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49436g = null;
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49430a = null;
                        break;
                    } else {
                        if (this.f49430a == null) {
                            this.f49430a = new C17638l3();
                        }
                        this.f49430a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49431b = null;
                        break;
                    } else {
                        if (this.f49431b == null) {
                            this.f49431b = new ClientHeaderV2();
                        }
                        this.f49431b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf85 = this.f49432c;
                    this.f49432c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 3:
                    Utf8 utf86 = this.f49433d;
                    this.f49433d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 4:
                    Utf8 utf87 = this.f49434e;
                    this.f49434e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49435f = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49435f;
                        this.f49435f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49436g = null;
                        break;
                    } else {
                        this.f49436g = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49430a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49430a.customEncode(encoder);
        }
        if (this.f49431b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49431b.customEncode(encoder);
        }
        encoder.writeString(this.f49432c);
        encoder.writeString(this.f49433d);
        encoder.writeString(this.f49434e);
        if (this.f49435f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49435f);
        }
        if (this.f49436g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49436g.booleanValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49430a;
            case 1:
                return this.f49431b;
            case 2:
                return this.f49432c;
            case 3:
                return this.f49433d;
            case 4:
                return this.f49434e;
            case 5:
                return this.f49435f;
            case 6:
                return this.f49436g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49426h;
    }

    public SpecificData getSpecificData() {
        return f49427i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49430a = (C17638l3) obj;
                return;
            case 1:
                this.f49431b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49432c = (CharSequence) obj;
                return;
            case 3:
                this.f49433d = (CharSequence) obj;
                return;
            case 4:
                this.f49434e = (CharSequence) obj;
                return;
            case 5:
                this.f49435f = (CharSequence) obj;
                return;
            case 6:
                this.f49436g = (Boolean) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49429k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49428j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
