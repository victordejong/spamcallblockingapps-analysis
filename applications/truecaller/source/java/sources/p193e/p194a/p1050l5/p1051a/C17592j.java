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
/* renamed from: e.a.l5.a.j */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j.class */
public class C17592j extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49533h;

    /* renamed from: i */
    public static SpecificData f49534i;

    /* renamed from: j */
    public static final DatumWriter<C17592j> f49535j;

    /* renamed from: k */
    public static final DatumReader<C17592j> f49536k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49537a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49538b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49539c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49540d;
    @Deprecated

    /* renamed from: e */
    public Integer f49541e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49542f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49543g;

    /* renamed from: e.a.l5.a.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j$b.class */
    public static class C17594b extends SpecificRecordBuilderBase<C17592j> implements RecordBuilder<C17592j> {

        /* renamed from: a */
        public CharSequence f49544a;

        /* renamed from: b */
        public CharSequence f49545b;

        /* renamed from: c */
        public Integer f49546c;

        /* renamed from: d */
        public CharSequence f49547d;

        /* renamed from: e */
        public CharSequence f49548e;

        public C17594b(C17593a c17593a) {
            super(C17592j.f49533h);
        }

        /* renamed from: a */
        public C17592j build() {
            try {
                C17592j c17592j = new C17592j();
                c17592j.f49537a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17592j.f49538b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17592j.f49539c = fieldSetFlags()[2] ? this.f49544a : (CharSequence) defaultValue(fields()[2]);
                c17592j.f49540d = fieldSetFlags()[3] ? this.f49545b : (CharSequence) defaultValue(fields()[3]);
                c17592j.f49541e = fieldSetFlags()[4] ? this.f49546c : (Integer) defaultValue(fields()[4]);
                c17592j.f49542f = fieldSetFlags()[5] ? this.f49547d : (CharSequence) defaultValue(fields()[5]);
                c17592j.f49543g = fieldSetFlags()[6] ? this.f49548e : (CharSequence) defaultValue(fields()[6]);
                return c17592j;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppAdClickedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"adUnitId\",\"type\":\"string\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"position\",\"type\":[\"null\",\"int\"],\"default\":null},{\"name\":\"adType\",\"type\":\"string\"},{\"name\":\"adSubType\",\"type\":\"string\"}]}");
        f49533h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49534i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49534i, m8613i0);
        f49535j = f49534i.createDatumWriter(m8613i0);
        f49536k = f49534i.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49537a = null;
            } else {
                if (this.f49537a == null) {
                    this.f49537a = new C17638l3();
                }
                this.f49537a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49538b = null;
            } else {
                if (this.f49538b == null) {
                    this.f49538b = new ClientHeaderV2();
                }
                this.f49538b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49539c;
            this.f49539c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49540d;
            this.f49540d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49541e = null;
            } else {
                this.f49541e = Integer.valueOf(resolvingDecoder.readInt());
            }
            Utf8 utf83 = this.f49542f;
            this.f49542f = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49543g;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f49543g = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49537a = null;
                        break;
                    } else {
                        if (this.f49537a == null) {
                            this.f49537a = new C17638l3();
                        }
                        this.f49537a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49538b = null;
                        break;
                    } else {
                        if (this.f49538b == null) {
                            this.f49538b = new ClientHeaderV2();
                        }
                        this.f49538b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf86 = this.f49539c;
                    this.f49539c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 3:
                    Utf8 utf87 = this.f49540d;
                    this.f49540d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49541e = null;
                        break;
                    } else {
                        this.f49541e = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 5:
                    Utf8 utf88 = this.f49542f;
                    this.f49542f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 6:
                    Utf8 utf89 = this.f49543g;
                    this.f49543g = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49537a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49537a.customEncode(encoder);
        }
        if (this.f49538b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49538b.customEncode(encoder);
        }
        encoder.writeString(this.f49539c);
        encoder.writeString(this.f49540d);
        if (this.f49541e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49541e.intValue());
        }
        encoder.writeString(this.f49542f);
        encoder.writeString(this.f49543g);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49537a;
            case 1:
                return this.f49538b;
            case 2:
                return this.f49539c;
            case 3:
                return this.f49540d;
            case 4:
                return this.f49541e;
            case 5:
                return this.f49542f;
            case 6:
                return this.f49543g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49533h;
    }

    public SpecificData getSpecificData() {
        return f49534i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49537a = (C17638l3) obj;
                return;
            case 1:
                this.f49538b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49539c = (CharSequence) obj;
                return;
            case 3:
                this.f49540d = (CharSequence) obj;
                return;
            case 4:
                this.f49541e = (Integer) obj;
                return;
            case 5:
                this.f49542f = (CharSequence) obj;
                return;
            case 6:
                this.f49543g = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49536k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49535j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
