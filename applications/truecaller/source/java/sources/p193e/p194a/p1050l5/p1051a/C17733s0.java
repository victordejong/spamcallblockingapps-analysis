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
/* renamed from: e.a.l5.a.s0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/s0.class */
public class C17733s0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: i */
    public static final Schema f50252i;

    /* renamed from: j */
    public static SpecificData f50253j;

    /* renamed from: k */
    public static final DatumWriter<C17733s0> f50254k;

    /* renamed from: l */
    public static final DatumReader<C17733s0> f50255l;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50256a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50257b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50258c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50259d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50260e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50261f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50262g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50263h;

    /* renamed from: e.a.l5.a.s0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/s0$b.class */
    public static class C17735b extends SpecificRecordBuilderBase<C17733s0> implements RecordBuilder<C17733s0> {

        /* renamed from: a */
        public CharSequence f50264a;

        /* renamed from: b */
        public CharSequence f50265b;

        /* renamed from: c */
        public CharSequence f50266c;

        /* renamed from: d */
        public CharSequence f50267d;

        /* renamed from: e */
        public CharSequence f50268e;

        /* renamed from: f */
        public CharSequence f50269f;

        public C17735b(C17734a c17734a) {
            super(C17733s0.f50252i);
        }

        /* renamed from: a */
        public C17733s0 build() {
            try {
                C17733s0 c17733s0 = new C17733s0();
                c17733s0.f50256a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17733s0.f50257b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17733s0.f50258c = fieldSetFlags()[2] ? this.f50264a : (CharSequence) defaultValue(fields()[2]);
                c17733s0.f50259d = fieldSetFlags()[3] ? this.f50265b : (CharSequence) defaultValue(fields()[3]);
                c17733s0.f50260e = fieldSetFlags()[4] ? this.f50266c : (CharSequence) defaultValue(fields()[4]);
                c17733s0.f50261f = fieldSetFlags()[5] ? this.f50267d : (CharSequence) defaultValue(fields()[5]);
                c17733s0.f50262g = fieldSetFlags()[6] ? this.f50268e : (CharSequence) defaultValue(fields()[6]);
                c17733s0.f50263h = fieldSetFlags()[7] ? this.f50269f : (CharSequence) defaultValue(fields()[7]);
                return c17733s0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17735b m15822b(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f50267d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: c */
        public C17735b m15821c(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50264a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: d */
        public C17735b m15820d(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f50266c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: e */
        public C17735b m15819e(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f50265b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppIMGroupInvite\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Invitations sent in existing groups and all received, accepted and declined\\n  invitation\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"groupId\",\"type\":\"string\",\"doc\":\"Group's IM id\"},{\"name\":\"senderId\",\"type\":\"string\",\"doc\":\"IM id of sender\"},{\"name\":\"receiverId\",\"type\":\"string\",\"doc\":\"IM id of receiver\"},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"possible values send|receive|accept|decline\"},{\"name\":\"inviteType\",\"type\":[\"null\",\"string\"],\"doc\":\"possible values: link | addressed\",\"default\":null},{\"name\":\"failureReason\",\"type\":[\"null\",\"string\"],\"doc\":\"Failure reason for group links and invitations\",\"default\":null}]}");
        f50252i = m8613i0;
        SpecificData specificData = new SpecificData();
        f50253j = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50253j, m8613i0);
        f50254k = f50253j.createDatumWriter(m8613i0);
        f50255l = f50253j.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17735b m15824a() {
        return new C17735b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50256a = null;
            } else {
                if (this.f50256a == null) {
                    this.f50256a = new C17638l3();
                }
                this.f50256a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50257b = null;
            } else {
                if (this.f50257b == null) {
                    this.f50257b = new ClientHeaderV2();
                }
                this.f50257b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50258c;
            this.f50258c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50259d;
            this.f50259d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50260e;
            this.f50260e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50261f;
            this.f50261f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50262g = null;
            } else {
                Utf8 utf85 = this.f50262g;
                this.f50262g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50263h = null;
                return;
            }
            Utf8 utf86 = this.f50263h;
            Utf8 utf87 = null;
            if (utf86 instanceof Utf8) {
                utf87 = utf86;
            }
            this.f50263h = resolvingDecoder.readString(utf87);
            return;
        }
        for (int i = 0; i < 8; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50256a = null;
                        break;
                    } else {
                        if (this.f50256a == null) {
                            this.f50256a = new C17638l3();
                        }
                        this.f50256a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50257b = null;
                        break;
                    } else {
                        if (this.f50257b == null) {
                            this.f50257b = new ClientHeaderV2();
                        }
                        this.f50257b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf88 = this.f50258c;
                    this.f50258c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 3:
                    Utf8 utf89 = this.f50259d;
                    this.f50259d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 4:
                    Utf8 utf810 = this.f50260e;
                    this.f50260e = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 5:
                    Utf8 utf811 = this.f50261f;
                    this.f50261f = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50262g = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f50262g;
                        this.f50262g = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50263h = null;
                        break;
                    } else {
                        Utf8 utf813 = this.f50263h;
                        this.f50263h = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50256a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50256a.customEncode(encoder);
        }
        if (this.f50257b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50257b.customEncode(encoder);
        }
        encoder.writeString(this.f50258c);
        encoder.writeString(this.f50259d);
        encoder.writeString(this.f50260e);
        encoder.writeString(this.f50261f);
        if (this.f50262g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50262g);
        }
        if (this.f50263h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50263h);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50256a;
            case 1:
                return this.f50257b;
            case 2:
                return this.f50258c;
            case 3:
                return this.f50259d;
            case 4:
                return this.f50260e;
            case 5:
                return this.f50261f;
            case 6:
                return this.f50262g;
            case 7:
                return this.f50263h;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50252i;
    }

    public SpecificData getSpecificData() {
        return f50253j;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50256a = (C17638l3) obj;
                return;
            case 1:
                this.f50257b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50258c = (CharSequence) obj;
                return;
            case 3:
                this.f50259d = (CharSequence) obj;
                return;
            case 4:
                this.f50260e = (CharSequence) obj;
                return;
            case 5:
                this.f50261f = (CharSequence) obj;
                return;
            case 6:
                this.f50262g = (CharSequence) obj;
                return;
            case 7:
                this.f50263h = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50255l.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50254k.write(this, SpecificData.getEncoder(objectOutput));
    }
}
