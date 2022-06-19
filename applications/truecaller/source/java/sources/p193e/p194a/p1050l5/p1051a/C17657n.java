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
/* renamed from: e.a.l5.a.n */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/n.class */
public class C17657n extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49843h;

    /* renamed from: i */
    public static SpecificData f49844i;

    /* renamed from: j */
    public static final DatumWriter<C17657n> f49845j;

    /* renamed from: k */
    public static final DatumReader<C17657n> f49846k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49847a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49848b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49849c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49850d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49851e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49852f;
    @Deprecated

    /* renamed from: g */
    public C17604j3 f49853g;

    /* renamed from: e.a.l5.a.n$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/n$b.class */
    public static class C17659b extends SpecificRecordBuilderBase<C17657n> implements RecordBuilder<C17657n> {

        /* renamed from: a */
        public CharSequence f49854a;

        /* renamed from: b */
        public CharSequence f49855b;

        /* renamed from: c */
        public CharSequence f49856c;

        /* renamed from: d */
        public CharSequence f49857d;

        /* renamed from: e */
        public C17604j3 f49858e;

        public C17659b(C17658a c17658a) {
            super(C17657n.f49843h);
        }

        /* renamed from: a */
        public C17657n build() {
            try {
                C17657n c17657n = new C17657n();
                c17657n.f49847a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17657n.f49848b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17657n.f49849c = fieldSetFlags()[2] ? this.f49854a : (CharSequence) defaultValue(fields()[2]);
                c17657n.f49850d = fieldSetFlags()[3] ? this.f49855b : (CharSequence) defaultValue(fields()[3]);
                c17657n.f49851e = fieldSetFlags()[4] ? this.f49856c : (CharSequence) defaultValue(fields()[4]);
                c17657n.f49852f = fieldSetFlags()[5] ? this.f49857d : (CharSequence) defaultValue(fields()[5]);
                c17657n.f49853g = fieldSetFlags()[6] ? this.f49858e : (C17604j3) defaultValue(fields()[6]);
                return c17657n;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17659b m15880b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49854a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17659b m15879c(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49856c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: d */
        public C17659b m15878d(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49855b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBusinessCallActivity\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"action is truecaller Enterprise Event name corresponding to a feature\\nsource is entry point to the feature or where it's shown etc Profile view, Calling screens etc\\ncontext is for the badge info or any other context (SHOWN, CLICK etc)\\nextraInfo is Meta-info (This can have any extra info that we might need to log in future)\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"action\",\"type\":\"string\"},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Biz event source, e.g. \\\"aftercall/callerid/incallui\\\"\"},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Biz event context, e.g. \\\"verified/priority business\\\"\"},{\"name\":\"extraInfo\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"businessDetails\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"BusinessDetails\",\"doc\":\"Track business details\",\"fields\":[{\"name\":\"businessCountryCode\",\"type\":[\"null\",\"string\"],\"doc\":\"Country code of business\",\"default\":null},{\"name\":\"businessNumber\",\"type\":[\"null\",\"string\"],\"doc\":\"Business phone number\",\"default\":null},{\"name\":\"partnerAccountIid\",\"type\":\"string\",\"doc\":\"partner account id of the partner\"},{\"name\":\"displayName\",\"type\":[\"null\",\"string\"],\"doc\":\"name displayed for the context\",\"default\":null},{\"name\":\"badge\",\"type\":[\"null\",\"string\"],\"doc\":\"badge displayed\",\"default\":null},{\"name\":\"callReason\",\"type\":[\"null\",\"string\"],\"doc\":\"call reason text shown\",\"default\":null},{\"name\":\"spamScoreShown\",\"type\":[\"null\",\"int\"],\"doc\":\"spam score (if displayed)\",\"default\":null}]}],\"default\":null}]}");
        f49843h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49844i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49844i, m8613i0);
        f49845j = f49844i.createDatumWriter(m8613i0);
        f49846k = f49844i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49847a = null;
            } else {
                if (this.f49847a == null) {
                    this.f49847a = new C17638l3();
                }
                this.f49847a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49848b = null;
            } else {
                if (this.f49848b == null) {
                    this.f49848b = new ClientHeaderV2();
                }
                this.f49848b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49849c;
            this.f49849c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49850d;
            this.f49850d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49851e = null;
            } else {
                Utf8 utf83 = this.f49851e;
                this.f49851e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49852f = null;
            } else {
                Utf8 utf84 = this.f49852f;
                this.f49852f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49853g = null;
                return;
            }
            if (this.f49853g == null) {
                this.f49853g = new C17604j3();
            }
            this.f49853g.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49847a = null;
                        break;
                    } else {
                        if (this.f49847a == null) {
                            this.f49847a = new C17638l3();
                        }
                        this.f49847a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49848b = null;
                        break;
                    } else {
                        if (this.f49848b == null) {
                            this.f49848b = new ClientHeaderV2();
                        }
                        this.f49848b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf85 = this.f49849c;
                    this.f49849c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 3:
                    Utf8 utf86 = this.f49850d;
                    this.f49850d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49851e = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49851e;
                        this.f49851e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49852f = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49852f;
                        this.f49852f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49853g = null;
                        break;
                    } else {
                        if (this.f49853g == null) {
                            this.f49853g = new C17604j3();
                        }
                        this.f49853g.customDecode(resolvingDecoder);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49847a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49847a.customEncode(encoder);
        }
        if (this.f49848b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49848b.customEncode(encoder);
        }
        encoder.writeString(this.f49849c);
        encoder.writeString(this.f49850d);
        if (this.f49851e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49851e);
        }
        if (this.f49852f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49852f);
        }
        if (this.f49853g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        this.f49853g.customEncode(encoder);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49847a;
            case 1:
                return this.f49848b;
            case 2:
                return this.f49849c;
            case 3:
                return this.f49850d;
            case 4:
                return this.f49851e;
            case 5:
                return this.f49852f;
            case 6:
                return this.f49853g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49843h;
    }

    public SpecificData getSpecificData() {
        return f49844i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49847a = (C17638l3) obj;
                return;
            case 1:
                this.f49848b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49849c = (CharSequence) obj;
                return;
            case 3:
                this.f49850d = (CharSequence) obj;
                return;
            case 4:
                this.f49851e = (CharSequence) obj;
                return;
            case 5:
                this.f49852f = (CharSequence) obj;
                return;
            case 6:
                this.f49853g = (C17604j3) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49846k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49845j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
