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
/* renamed from: e.a.l5.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l.class */
public class C17626l extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49709j;

    /* renamed from: k */
    public static SpecificData f49710k;

    /* renamed from: l */
    public static final DatumWriter<C17626l> f49711l;

    /* renamed from: m */
    public static final DatumReader<C17626l> f49712m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49713a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49714b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49715c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49716d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49717e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49718f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49719g;
    @Deprecated

    /* renamed from: h */
    public C17813x3 f49720h;
    @Deprecated

    /* renamed from: i */
    public Integer f49721i;

    /* renamed from: e.a.l5.a.l$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/l$b.class */
    public static class C17628b extends SpecificRecordBuilderBase<C17626l> implements RecordBuilder<C17626l> {

        /* renamed from: a */
        public CharSequence f49722a;

        /* renamed from: b */
        public CharSequence f49723b;

        /* renamed from: c */
        public CharSequence f49724c;

        /* renamed from: d */
        public CharSequence f49725d;

        /* renamed from: e */
        public CharSequence f49726e;

        /* renamed from: f */
        public C17813x3 f49727f;

        /* renamed from: g */
        public Integer f49728g;

        public C17628b(C17627a c17627a) {
            super(C17626l.f49709j);
        }

        /* renamed from: a */
        public C17626l build() {
            try {
                C17626l c17626l = new C17626l();
                c17626l.f49713a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17626l.f49714b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17626l.f49715c = fieldSetFlags()[2] ? this.f49722a : (CharSequence) defaultValue(fields()[2]);
                c17626l.f49716d = fieldSetFlags()[3] ? this.f49723b : (CharSequence) defaultValue(fields()[3]);
                c17626l.f49717e = fieldSetFlags()[4] ? this.f49724c : (CharSequence) defaultValue(fields()[4]);
                c17626l.f49718f = fieldSetFlags()[5] ? this.f49725d : (CharSequence) defaultValue(fields()[5]);
                c17626l.f49719g = fieldSetFlags()[6] ? this.f49726e : (CharSequence) defaultValue(fields()[6]);
                c17626l.f49720h = fieldSetFlags()[7] ? this.f49727f : (C17813x3) defaultValue(fields()[7]);
                c17626l.f49721i = fieldSetFlags()[8] ? this.f49728g : (Integer) defaultValue(fields()[8]);
                return c17626l;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }

        /* renamed from: b */
        public C17628b m15915b(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49724c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: c */
        public C17628b m15914c(C17813x3 c17813x3) {
            validate(fields()[7], c17813x3);
            this.f49727f = c17813x3;
            fieldSetFlags()[7] = true;
            return this;
        }

        /* renamed from: d */
        public C17628b m15913d(Integer num) {
            validate(fields()[8], num);
            this.f49728g = num;
            fieldSetFlags()[8] = true;
            return this;
        }

        /* renamed from: e */
        public C17628b m15912e(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49723b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBlockingAction\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"term\",\"type\":\"string\"},{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]},{\"name\":\"action\",\"type\":\"string\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"numberStateBeforeAction\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"NumberStateBeforeAction\",\"fields\":[{\"name\":\"inTopSpammerList\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":\"boolean\"},{\"name\":\"inUserWhiteList\",\"type\":\"boolean\"},{\"name\":\"spammerFromServer\",\"type\":\"boolean\"}]}]},{\"name\":\"spamCountShown\",\"type\":[\"null\",\"int\"]}]}");
        f49709j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49710k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49710k, m8613i0);
        f49711l = f49710k.createDatumWriter(m8613i0);
        f49712m = f49710k.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49713a = null;
            } else {
                if (this.f49713a == null) {
                    this.f49713a = new C17638l3();
                }
                this.f49713a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49714b = null;
            } else {
                if (this.f49714b == null) {
                    this.f49714b = new ClientHeaderV2();
                }
                this.f49714b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49715c;
            this.f49715c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49716d;
            this.f49716d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49717e = null;
            } else {
                Utf8 utf83 = this.f49717e;
                this.f49717e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            Utf8 utf84 = this.f49718f;
            this.f49718f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49719g;
            this.f49719g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49720h = null;
            } else {
                if (this.f49720h == null) {
                    this.f49720h = new C17813x3();
                }
                this.f49720h.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49721i = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f49721i = null;
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49713a = null;
                        break;
                    } else {
                        if (this.f49713a == null) {
                            this.f49713a = new C17638l3();
                        }
                        this.f49713a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49714b = null;
                        break;
                    } else {
                        if (this.f49714b == null) {
                            this.f49714b = new ClientHeaderV2();
                        }
                        this.f49714b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf86 = this.f49715c;
                    this.f49715c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 3:
                    Utf8 utf87 = this.f49716d;
                    this.f49716d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49717e = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49717e;
                        this.f49717e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                case 5:
                    Utf8 utf89 = this.f49718f;
                    this.f49718f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 6:
                    Utf8 utf810 = this.f49719g;
                    this.f49719g = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49720h = null;
                        break;
                    } else {
                        if (this.f49720h == null) {
                            this.f49720h = new C17813x3();
                        }
                        this.f49720h.customDecode(resolvingDecoder);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49721i = null;
                        break;
                    } else {
                        this.f49721i = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49713a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49713a.customEncode(encoder);
        }
        if (this.f49714b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49714b.customEncode(encoder);
        }
        encoder.writeString(this.f49715c);
        encoder.writeString(this.f49716d);
        if (this.f49717e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49717e);
        }
        encoder.writeString(this.f49718f);
        encoder.writeString(this.f49719g);
        if (this.f49720h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17813x3 c17813x3 = this.f49720h;
            encoder.writeBoolean(c17813x3.f50659a);
            encoder.writeBoolean(c17813x3.f50660b);
            encoder.writeBoolean(c17813x3.f50661c);
            encoder.writeBoolean(c17813x3.f50662d);
        }
        if (this.f49721i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f49721i.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49713a;
            case 1:
                return this.f49714b;
            case 2:
                return this.f49715c;
            case 3:
                return this.f49716d;
            case 4:
                return this.f49717e;
            case 5:
                return this.f49718f;
            case 6:
                return this.f49719g;
            case 7:
                return this.f49720h;
            case 8:
                return this.f49721i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49709j;
    }

    public SpecificData getSpecificData() {
        return f49710k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49713a = (C17638l3) obj;
                return;
            case 1:
                this.f49714b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49715c = (CharSequence) obj;
                return;
            case 3:
                this.f49716d = (CharSequence) obj;
                return;
            case 4:
                this.f49717e = (CharSequence) obj;
                return;
            case 5:
                this.f49718f = (CharSequence) obj;
                return;
            case 6:
                this.f49719g = (CharSequence) obj;
                return;
            case 7:
                this.f49720h = (C17813x3) obj;
                return;
            case 8:
                this.f49721i = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49712m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49711l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
