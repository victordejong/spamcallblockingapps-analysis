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
/* renamed from: e.a.l5.a.f2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/f2.class */
public class C17529f2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49217j;

    /* renamed from: k */
    public static SpecificData f49218k;

    /* renamed from: l */
    public static final DatumWriter<C17529f2> f49219l;

    /* renamed from: m */
    public static final DatumReader<C17529f2> f49220m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49221a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49222b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49223c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49224d;
    @Deprecated

    /* renamed from: e */
    public long f49225e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49226f;
    @Deprecated

    /* renamed from: g */
    public long f49227g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49228h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49229i;

    /* renamed from: e.a.l5.a.f2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/f2$b.class */
    public static class C17531b extends SpecificRecordBuilderBase<C17529f2> implements RecordBuilder<C17529f2> {

        /* renamed from: a */
        public CharSequence f49230a;

        /* renamed from: b */
        public CharSequence f49231b;

        /* renamed from: c */
        public long f49232c;

        /* renamed from: d */
        public CharSequence f49233d;

        /* renamed from: e */
        public long f49234e;

        /* renamed from: f */
        public CharSequence f49235f;

        /* renamed from: g */
        public CharSequence f49236g;

        public C17531b(C17530a c17530a) {
            super(C17529f2.f49217j);
        }

        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* JADX WARN: Type inference failed for: r0v67, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        /* renamed from: a */
        public C17529f2 build() {
            try {
                C17529f2 c17529f2 = new C17529f2();
                c17529f2.f49221a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17529f2.f49222b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17529f2.f49223c = fieldSetFlags()[2] ? this.f49230a : (CharSequence) defaultValue(fields()[2]);
                c17529f2.f49224d = fieldSetFlags()[3] ? this.f49231b : (CharSequence) defaultValue(fields()[3]);
                c17529f2.f49225e = fieldSetFlags()[4] ? this.f49232c : ((Long) defaultValue(fields()[4])).longValue();
                c17529f2.f49226f = fieldSetFlags()[5] ? this.f49233d : (CharSequence) defaultValue(fields()[5]);
                c17529f2.f49227g = fieldSetFlags()[6] ? this.f49234e : ((Long) defaultValue(fields()[6])).longValue();
                c17529f2.f49228h = fieldSetFlags()[7] ? this.f49235f : (CharSequence) defaultValue(fields()[7]);
                c17529f2.f49229i = fieldSetFlags()[8] ? this.f49236g : (CharSequence) defaultValue(fields()[8]);
                return c17529f2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17531b m15975b(CharSequence charSequence) {
            validate(fields()[7], charSequence);
            this.f49235f = charSequence;
            fieldSetFlags()[7] = true;
            return this;
        }

        /* renamed from: c */
        public C17531b m15974c(long j) {
            validate(fields()[6], Long.valueOf(j));
            this.f49234e = j;
            fieldSetFlags()[6] = true;
            return this;
        }

        /* renamed from: d */
        public C17531b m15973d(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49230a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: e */
        public C17531b m15972e(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f49233d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: f */
        public C17531b m15971f(CharSequence charSequence) {
            validate(fields()[8], charSequence);
            this.f49236g = charSequence;
            fieldSetFlags()[8] = true;
            return this;
        }

        /* renamed from: g */
        public C17531b m15970g(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49231b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: h */
        public C17531b m15969h(long j) {
            validate(fields()[4], Long.valueOf(j));
            this.f49232c = j;
            fieldSetFlags()[4] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSmsModelUpdates\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"modelType\",\"type\":\"string\",\"doc\":\"model - categorizer / updates / parser\"},{\"name\":\"updateFile\",\"type\":\"string\",\"doc\":\"updateFile - model / seed\"},{\"name\":\"updateVersion\",\"type\":\"long\",\"doc\":\"updateVersion\"},{\"name\":\"oldVersion\",\"type\":\"string\",\"doc\":\"version of model or seed JSON currently on the device\"},{\"name\":\"downloadLatency\",\"type\":\"long\",\"doc\":\"downloadLatency - (in ms)\"},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"context - First time login vs worker download\",\"default\":null},{\"name\":\"simCountry\",\"type\":[\"null\",\"string\"],\"doc\":\"Country for the phone SIM card\",\"default\":null}]}");
        f49217j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49218k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49218k, m8613i0);
        f49219l = f49218k.createDatumWriter(m8613i0);
        f49220m = f49218k.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17531b m15977a() {
        return new C17531b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49221a = null;
            } else {
                if (this.f49221a == null) {
                    this.f49221a = new C17638l3();
                }
                this.f49221a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49222b = null;
            } else {
                if (this.f49222b == null) {
                    this.f49222b = new ClientHeaderV2();
                }
                this.f49222b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49223c;
            this.f49223c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49224d;
            this.f49224d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            this.f49225e = resolvingDecoder.readLong();
            Utf8 utf83 = this.f49226f;
            this.f49226f = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            this.f49227g = resolvingDecoder.readLong();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49228h = null;
            } else {
                Utf8 utf84 = this.f49228h;
                this.f49228h = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49229i = null;
                return;
            }
            Utf8 utf85 = this.f49229i;
            Utf8 utf86 = null;
            if (utf85 instanceof Utf8) {
                utf86 = utf85;
            }
            this.f49229i = resolvingDecoder.readString(utf86);
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49221a = null;
                        break;
                    } else {
                        if (this.f49221a == null) {
                            this.f49221a = new C17638l3();
                        }
                        this.f49221a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49222b = null;
                        break;
                    } else {
                        if (this.f49222b == null) {
                            this.f49222b = new ClientHeaderV2();
                        }
                        this.f49222b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf87 = this.f49223c;
                    this.f49223c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 3:
                    Utf8 utf88 = this.f49224d;
                    this.f49224d = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 4:
                    this.f49225e = resolvingDecoder.readLong();
                    break;
                case 5:
                    Utf8 utf89 = this.f49226f;
                    this.f49226f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 6:
                    this.f49227g = resolvingDecoder.readLong();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49228h = null;
                        break;
                    } else {
                        Utf8 utf810 = this.f49228h;
                        this.f49228h = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49229i = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f49229i;
                        this.f49229i = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49221a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49221a.customEncode(encoder);
        }
        if (this.f49222b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49222b.customEncode(encoder);
        }
        encoder.writeString(this.f49223c);
        encoder.writeString(this.f49224d);
        encoder.writeLong(this.f49225e);
        encoder.writeString(this.f49226f);
        encoder.writeLong(this.f49227g);
        if (this.f49228h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49228h);
        }
        if (this.f49229i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49229i);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49221a;
            case 1:
                return this.f49222b;
            case 2:
                return this.f49223c;
            case 3:
                return this.f49224d;
            case 4:
                return Long.valueOf(this.f49225e);
            case 5:
                return this.f49226f;
            case 6:
                return Long.valueOf(this.f49227g);
            case 7:
                return this.f49228h;
            case 8:
                return this.f49229i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49217j;
    }

    public SpecificData getSpecificData() {
        return f49218k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49221a = (C17638l3) obj;
                return;
            case 1:
                this.f49222b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49223c = (CharSequence) obj;
                return;
            case 3:
                this.f49224d = (CharSequence) obj;
                return;
            case 4:
                this.f49225e = ((Long) obj).longValue();
                return;
            case 5:
                this.f49226f = (CharSequence) obj;
                return;
            case 6:
                this.f49227g = ((Long) obj).longValue();
                return;
            case 7:
                this.f49228h = (CharSequence) obj;
                return;
            case 8:
                this.f49229i = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49220m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49219l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
