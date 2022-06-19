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
/* renamed from: e.a.l5.a.j2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j2.class */
public class C17601j2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: k */
    public static final Schema f49569k;

    /* renamed from: l */
    public static SpecificData f49570l;

    /* renamed from: m */
    public static final DatumWriter<C17601j2> f49571m;

    /* renamed from: n */
    public static final DatumReader<C17601j2> f49572n;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49573a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49574b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49575c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49576d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49577e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49578f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49579g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49580h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49581i;
    @Deprecated

    /* renamed from: j */
    public Boolean f49582j;

    /* renamed from: e.a.l5.a.j2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j2$b.class */
    public static class C17603b extends SpecificRecordBuilderBase<C17601j2> implements RecordBuilder<C17601j2> {

        /* renamed from: a */
        public CharSequence f49583a;

        /* renamed from: b */
        public CharSequence f49584b;

        /* renamed from: c */
        public CharSequence f49585c;

        /* renamed from: d */
        public CharSequence f49586d;

        /* renamed from: e */
        public CharSequence f49587e;

        /* renamed from: f */
        public CharSequence f49588f;

        /* renamed from: g */
        public CharSequence f49589g;

        /* renamed from: h */
        public Boolean f49590h;

        public C17603b(C17602a c17602a) {
            super(C17601j2.f49569k);
        }

        /* renamed from: a */
        public C17601j2 build() {
            try {
                C17601j2 c17601j2 = new C17601j2();
                c17601j2.f49573a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17601j2.f49574b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17601j2.f49575c = fieldSetFlags()[2] ? this.f49583a : (CharSequence) defaultValue(fields()[2]);
                c17601j2.f49576d = fieldSetFlags()[3] ? this.f49584b : (CharSequence) defaultValue(fields()[3]);
                c17601j2.f49577e = fieldSetFlags()[4] ? this.f49585c : (CharSequence) defaultValue(fields()[4]);
                c17601j2.f49578f = fieldSetFlags()[5] ? this.f49586d : (CharSequence) defaultValue(fields()[5]);
                c17601j2.f49579g = fieldSetFlags()[6] ? this.f49587e : (CharSequence) defaultValue(fields()[6]);
                c17601j2.f49580h = fieldSetFlags()[7] ? this.f49588f : (CharSequence) defaultValue(fields()[7]);
                c17601j2.f49581i = fieldSetFlags()[8] ? this.f49589g : (CharSequence) defaultValue(fields()[8]);
                c17601j2.f49582j = fieldSetFlags()[9] ? this.f49590h : (Boolean) defaultValue(fields()[9]);
                return c17601j2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSubscriptionPurchased\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Source of the purchase\"},{\"name\":\"productKind\",\"type\":\"string\",\"doc\":\"Purchased product kind\"},{\"name\":\"sku\",\"type\":\"string\",\"doc\":\"Purchased product\"},{\"name\":\"oldSku\",\"type\":[\"null\",\"string\"],\"doc\":\"On upgrade the old product\"},{\"name\":\"type\",\"type\":\"string\",\"doc\":\"Purchase type\"},{\"name\":\"campaign\",\"type\":[\"null\",\"string\"],\"doc\":\"Campaign String\",\"default\":null},{\"name\":\"personalizedPromo\",\"type\":[\"null\",\"string\"],\"doc\":\"Personalized promo value\",\"default\":null},{\"name\":\"hadPremiumBefore\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Does user has premium in the past\",\"default\":null}]}");
        f49569k = m8613i0;
        SpecificData specificData = new SpecificData();
        f49570l = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49570l, m8613i0);
        f49571m = f49570l.createDatumWriter(m8613i0);
        f49572n = f49570l.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49573a = null;
            } else {
                if (this.f49573a == null) {
                    this.f49573a = new C17638l3();
                }
                this.f49573a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49574b = null;
            } else {
                if (this.f49574b == null) {
                    this.f49574b = new ClientHeaderV2();
                }
                this.f49574b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49575c;
            this.f49575c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49576d;
            this.f49576d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49577e;
            this.f49577e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49578f = null;
            } else {
                Utf8 utf84 = this.f49578f;
                this.f49578f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            Utf8 utf85 = this.f49579g;
            this.f49579g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49580h = null;
            } else {
                Utf8 utf86 = this.f49580h;
                this.f49580h = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49581i = null;
            } else {
                Utf8 utf87 = this.f49581i;
                this.f49581i = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49582j = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49582j = null;
            return;
        }
        for (int i = 0; i < 10; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49573a = null;
                        break;
                    } else {
                        if (this.f49573a == null) {
                            this.f49573a = new C17638l3();
                        }
                        this.f49573a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49574b = null;
                        break;
                    } else {
                        if (this.f49574b == null) {
                            this.f49574b = new ClientHeaderV2();
                        }
                        this.f49574b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf88 = this.f49575c;
                    this.f49575c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 3:
                    Utf8 utf89 = this.f49576d;
                    this.f49576d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 4:
                    Utf8 utf810 = this.f49577e;
                    this.f49577e = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49578f = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f49578f;
                        this.f49578f = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                case 6:
                    Utf8 utf812 = this.f49579g;
                    this.f49579g = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49580h = null;
                        break;
                    } else {
                        Utf8 utf813 = this.f49580h;
                        this.f49580h = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49581i = null;
                        break;
                    } else {
                        Utf8 utf814 = this.f49581i;
                        this.f49581i = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49582j = null;
                        break;
                    } else {
                        this.f49582j = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49573a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49573a.customEncode(encoder);
        }
        if (this.f49574b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49574b.customEncode(encoder);
        }
        encoder.writeString(this.f49575c);
        encoder.writeString(this.f49576d);
        encoder.writeString(this.f49577e);
        if (this.f49578f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49578f);
        }
        encoder.writeString(this.f49579g);
        if (this.f49580h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49580h);
        }
        if (this.f49581i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49581i);
        }
        if (this.f49582j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49582j.booleanValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49573a;
            case 1:
                return this.f49574b;
            case 2:
                return this.f49575c;
            case 3:
                return this.f49576d;
            case 4:
                return this.f49577e;
            case 5:
                return this.f49578f;
            case 6:
                return this.f49579g;
            case 7:
                return this.f49580h;
            case 8:
                return this.f49581i;
            case 9:
                return this.f49582j;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49569k;
    }

    public SpecificData getSpecificData() {
        return f49570l;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49573a = (C17638l3) obj;
                return;
            case 1:
                this.f49574b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49575c = (CharSequence) obj;
                return;
            case 3:
                this.f49576d = (CharSequence) obj;
                return;
            case 4:
                this.f49577e = (CharSequence) obj;
                return;
            case 5:
                this.f49578f = (CharSequence) obj;
                return;
            case 6:
                this.f49579g = (CharSequence) obj;
                return;
            case 7:
                this.f49580h = (CharSequence) obj;
                return;
            case 8:
                this.f49581i = (CharSequence) obj;
                return;
            case 9:
                this.f49582j = (Boolean) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49572n.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49571m.write(this, SpecificData.getEncoder(objectOutput));
    }
}
