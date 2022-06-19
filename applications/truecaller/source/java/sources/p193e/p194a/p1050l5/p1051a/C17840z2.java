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
/* renamed from: e.a.l5.a.z2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/z2.class */
public class C17840z2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: k */
    public static final Schema f50781k;

    /* renamed from: l */
    public static SpecificData f50782l;

    /* renamed from: m */
    public static final DatumWriter<C17840z2> f50783m;

    /* renamed from: n */
    public static final DatumReader<C17840z2> f50784n;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50785a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50786b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50787c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50788d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50789e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50790f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50791g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50792h;
    @Deprecated

    /* renamed from: i */
    public Integer f50793i;
    @Deprecated

    /* renamed from: j */
    public Integer f50794j;

    /* renamed from: e.a.l5.a.z2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/z2$b.class */
    public static class C17842b extends SpecificRecordBuilderBase<C17840z2> implements RecordBuilder<C17840z2> {

        /* renamed from: a */
        public CharSequence f50795a;

        /* renamed from: b */
        public CharSequence f50796b;

        /* renamed from: c */
        public CharSequence f50797c;

        /* renamed from: d */
        public CharSequence f50798d;

        /* renamed from: e */
        public CharSequence f50799e;

        /* renamed from: f */
        public CharSequence f50800f;

        /* renamed from: g */
        public Integer f50801g;

        /* renamed from: h */
        public Integer f50802h;

        public C17842b(C17841a c17841a) {
            super(C17840z2.f50781k);
        }

        /* renamed from: a */
        public C17840z2 build() {
            try {
                C17840z2 c17840z2 = new C17840z2();
                c17840z2.f50785a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17840z2.f50786b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17840z2.f50787c = fieldSetFlags()[2] ? this.f50795a : (CharSequence) defaultValue(fields()[2]);
                c17840z2.f50788d = fieldSetFlags()[3] ? this.f50796b : (CharSequence) defaultValue(fields()[3]);
                c17840z2.f50789e = fieldSetFlags()[4] ? this.f50797c : (CharSequence) defaultValue(fields()[4]);
                c17840z2.f50790f = fieldSetFlags()[5] ? this.f50798d : (CharSequence) defaultValue(fields()[5]);
                c17840z2.f50791g = fieldSetFlags()[6] ? this.f50799e : (CharSequence) defaultValue(fields()[6]);
                c17840z2.f50792h = fieldSetFlags()[7] ? this.f50800f : (CharSequence) defaultValue(fields()[7]);
                c17840z2.f50793i = fieldSetFlags()[8] ? this.f50801g : (Integer) defaultValue(fields()[8]);
                c17840z2.f50794j = fieldSetFlags()[9] ? this.f50802h : (Integer) defaultValue(fields()[9]);
                return c17840z2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVoipStateChanged\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"* Voip call funnel, for tracking call flow and failures. Where possible, the voip ids and call ids should be passed.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"direction\",\"type\":\"string\",\"doc\":\"* Whether the call was Ingoing or Outgoing.\"},{\"name\":\"state\",\"type\":\"string\",\"doc\":\"* Indicates the point\"},{\"name\":\"reason\",\"type\":[\"null\",\"string\"],\"doc\":\"* Extra context for some states.\",\"default\":null},{\"name\":\"channel\",\"type\":\"string\",\"doc\":\"* The name of the channel. Used to cross-reference calls.\"},{\"name\":\"voipId\",\"type\":[\"null\",\"string\"],\"doc\":\"* Voip id of the user.\",\"default\":null},{\"name\":\"remoteVoipId\",\"type\":[\"null\",\"string\"],\"doc\":\"* Voip id of the remote party on the call.\",\"default\":null},{\"name\":\"rtcUid\",\"type\":[\"null\",\"int\"],\"doc\":\"* RTC user id of the user,\",\"default\":null},{\"name\":\"remoteRtcUid\",\"type\":[\"null\",\"int\"],\"doc\":\"* RTC user id of the remote party on the call.\",\"default\":null}]}");
        f50781k = m8613i0;
        SpecificData specificData = new SpecificData();
        f50782l = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50782l, m8613i0);
        f50783m = f50782l.createDatumWriter(m8613i0);
        f50784n = f50782l.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50785a = null;
            } else {
                if (this.f50785a == null) {
                    this.f50785a = new C17638l3();
                }
                this.f50785a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50786b = null;
            } else {
                if (this.f50786b == null) {
                    this.f50786b = new ClientHeaderV2();
                }
                this.f50786b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50787c;
            this.f50787c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50788d;
            this.f50788d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50789e = null;
            } else {
                Utf8 utf83 = this.f50789e;
                this.f50789e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            Utf8 utf84 = this.f50790f;
            this.f50790f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50791g = null;
            } else {
                Utf8 utf85 = this.f50791g;
                this.f50791g = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50792h = null;
            } else {
                Utf8 utf86 = this.f50792h;
                this.f50792h = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50793i = null;
            } else {
                this.f50793i = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f50794j = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f50794j = null;
            return;
        }
        for (int i = 0; i < 10; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50785a = null;
                        break;
                    } else {
                        if (this.f50785a == null) {
                            this.f50785a = new C17638l3();
                        }
                        this.f50785a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50786b = null;
                        break;
                    } else {
                        if (this.f50786b == null) {
                            this.f50786b = new ClientHeaderV2();
                        }
                        this.f50786b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf87 = this.f50787c;
                    this.f50787c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 3:
                    Utf8 utf88 = this.f50788d;
                    this.f50788d = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50789e = null;
                        break;
                    } else {
                        Utf8 utf89 = this.f50789e;
                        this.f50789e = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                        break;
                    }
                case 5:
                    Utf8 utf810 = this.f50790f;
                    this.f50790f = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50791g = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f50791g;
                        this.f50791g = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50792h = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f50792h;
                        this.f50792h = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50793i = null;
                        break;
                    } else {
                        this.f50793i = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50794j = null;
                        break;
                    } else {
                        this.f50794j = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50785a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50785a.customEncode(encoder);
        }
        if (this.f50786b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50786b.customEncode(encoder);
        }
        encoder.writeString(this.f50787c);
        encoder.writeString(this.f50788d);
        if (this.f50789e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50789e);
        }
        encoder.writeString(this.f50790f);
        if (this.f50791g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50791g);
        }
        if (this.f50792h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50792h);
        }
        if (this.f50793i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f50793i.intValue());
        }
        if (this.f50794j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f50794j.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50785a;
            case 1:
                return this.f50786b;
            case 2:
                return this.f50787c;
            case 3:
                return this.f50788d;
            case 4:
                return this.f50789e;
            case 5:
                return this.f50790f;
            case 6:
                return this.f50791g;
            case 7:
                return this.f50792h;
            case 8:
                return this.f50793i;
            case 9:
                return this.f50794j;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50781k;
    }

    public SpecificData getSpecificData() {
        return f50782l;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50785a = (C17638l3) obj;
                return;
            case 1:
                this.f50786b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50787c = (CharSequence) obj;
                return;
            case 3:
                this.f50788d = (CharSequence) obj;
                return;
            case 4:
                this.f50789e = (CharSequence) obj;
                return;
            case 5:
                this.f50790f = (CharSequence) obj;
                return;
            case 6:
                this.f50791g = (CharSequence) obj;
                return;
            case 7:
                this.f50792h = (CharSequence) obj;
                return;
            case 8:
                this.f50793i = (Integer) obj;
                return;
            case 9:
                this.f50794j = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50784n.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50783m.write(this, SpecificData.getEncoder(objectOutput));
    }
}
