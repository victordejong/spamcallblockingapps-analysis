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
/* renamed from: e.a.l5.a.s */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/s.class */
public class C17730s extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f50232j;

    /* renamed from: k */
    public static SpecificData f50233k;

    /* renamed from: l */
    public static final DatumWriter<C17730s> f50234l;

    /* renamed from: m */
    public static final DatumReader<C17730s> f50235m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50236a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50237b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50238c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50239d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50240e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50241f;
    @Deprecated

    /* renamed from: g */
    public int f50242g;
    @Deprecated

    /* renamed from: h */
    public Integer f50243h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50244i;

    /* renamed from: e.a.l5.a.s$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/s$b.class */
    public static class C17732b extends SpecificRecordBuilderBase<C17730s> implements RecordBuilder<C17730s> {

        /* renamed from: a */
        public CharSequence f50245a;

        /* renamed from: b */
        public CharSequence f50246b;

        /* renamed from: c */
        public CharSequence f50247c;

        /* renamed from: d */
        public CharSequence f50248d;

        /* renamed from: e */
        public int f50249e;

        /* renamed from: f */
        public Integer f50250f;

        /* renamed from: g */
        public CharSequence f50251g;

        public C17732b(C17731a c17731a) {
            super(C17730s.f50232j);
        }

        /* renamed from: a */
        public C17730s build() {
            try {
                C17730s c17730s = new C17730s();
                c17730s.f50236a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17730s.f50237b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17730s.f50238c = fieldSetFlags()[2] ? this.f50245a : (CharSequence) defaultValue(fields()[2]);
                c17730s.f50239d = fieldSetFlags()[3] ? this.f50246b : (CharSequence) defaultValue(fields()[3]);
                c17730s.f50240e = fieldSetFlags()[4] ? this.f50247c : (CharSequence) defaultValue(fields()[4]);
                c17730s.f50241f = fieldSetFlags()[5] ? this.f50248d : (CharSequence) defaultValue(fields()[5]);
                c17730s.f50242g = fieldSetFlags()[6] ? this.f50249e : ((Integer) defaultValue(fields()[6])).intValue();
                c17730s.f50243h = fieldSetFlags()[7] ? this.f50250f : (Integer) defaultValue(fields()[7]);
                c17730s.f50244i = fieldSetFlags()[8] ? this.f50251g : (CharSequence) defaultValue(fields()[8]);
                return c17730s;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallContextSent\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"User sent call alert notification with a call context message\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"callContextMessageId\",\"type\":\"string\",\"doc\":\"Call context message id\"},{\"name\":\"featureType\",\"type\":\"string\",\"doc\":\"Feature type: e.g. 'on-demand' or 'on-boarded'\"},{\"name\":\"messageType\",\"type\":\"string\",\"doc\":\"Type of message, e.g. 'preset' or 'custom'\"},{\"name\":\"response\",\"type\":\"string\",\"doc\":\"The gRPC status returned from the server, whether failed or successful\"},{\"name\":\"messageLength\",\"type\":\"int\",\"doc\":\"Length of the sent message, after trimming\"},{\"name\":\"presetMessageId\",\"type\":[\"null\",\"int\"],\"doc\":\"If the message type is 'preset', the id of the message, null otherwise.\",\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Context from which the notification was sent.\",\"default\":null}]}");
        f50232j = m8613i0;
        SpecificData specificData = new SpecificData();
        f50233k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50233k, m8613i0);
        f50234l = f50233k.createDatumWriter(m8613i0);
        f50235m = f50233k.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50236a = null;
            } else {
                if (this.f50236a == null) {
                    this.f50236a = new C17638l3();
                }
                this.f50236a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50237b = null;
            } else {
                if (this.f50237b == null) {
                    this.f50237b = new ClientHeaderV2();
                }
                this.f50237b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50238c;
            this.f50238c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50239d;
            this.f50239d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50240e;
            this.f50240e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50241f;
            this.f50241f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f50242g = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50243h = null;
            } else {
                this.f50243h = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50244i = null;
                return;
            }
            Utf8 utf85 = this.f50244i;
            Utf8 utf86 = null;
            if (utf85 instanceof Utf8) {
                utf86 = utf85;
            }
            this.f50244i = resolvingDecoder.readString(utf86);
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50236a = null;
                        break;
                    } else {
                        if (this.f50236a == null) {
                            this.f50236a = new C17638l3();
                        }
                        this.f50236a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50237b = null;
                        break;
                    } else {
                        if (this.f50237b == null) {
                            this.f50237b = new ClientHeaderV2();
                        }
                        this.f50237b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf87 = this.f50238c;
                    this.f50238c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 3:
                    Utf8 utf88 = this.f50239d;
                    this.f50239d = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 4:
                    Utf8 utf89 = this.f50240e;
                    this.f50240e = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 5:
                    Utf8 utf810 = this.f50241f;
                    this.f50241f = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 6:
                    this.f50242g = resolvingDecoder.readInt();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50243h = null;
                        break;
                    } else {
                        this.f50243h = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50244i = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f50244i;
                        this.f50244i = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50236a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50236a.customEncode(encoder);
        }
        if (this.f50237b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50237b.customEncode(encoder);
        }
        encoder.writeString(this.f50238c);
        encoder.writeString(this.f50239d);
        encoder.writeString(this.f50240e);
        encoder.writeString(this.f50241f);
        encoder.writeInt(this.f50242g);
        if (this.f50243h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f50243h.intValue());
        }
        if (this.f50244i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50244i);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50236a;
            case 1:
                return this.f50237b;
            case 2:
                return this.f50238c;
            case 3:
                return this.f50239d;
            case 4:
                return this.f50240e;
            case 5:
                return this.f50241f;
            case 6:
                return Integer.valueOf(this.f50242g);
            case 7:
                return this.f50243h;
            case 8:
                return this.f50244i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50232j;
    }

    public SpecificData getSpecificData() {
        return f50233k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50236a = (C17638l3) obj;
                return;
            case 1:
                this.f50237b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50238c = (CharSequence) obj;
                return;
            case 3:
                this.f50239d = (CharSequence) obj;
                return;
            case 4:
                this.f50240e = (CharSequence) obj;
                return;
            case 5:
                this.f50241f = (CharSequence) obj;
                return;
            case 6:
                this.f50242g = ((Integer) obj).intValue();
                return;
            case 7:
                this.f50243h = (Integer) obj;
                return;
            case 8:
                this.f50244i = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50235m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50234l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
