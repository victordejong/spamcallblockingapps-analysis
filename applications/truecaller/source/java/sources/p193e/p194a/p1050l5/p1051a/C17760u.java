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
/* renamed from: e.a.l5.a.u */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/u.class */
public class C17760u extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: p */
    public static final Schema f50358p;

    /* renamed from: q */
    public static SpecificData f50359q;

    /* renamed from: r */
    public static final DatumWriter<C17760u> f50360r;

    /* renamed from: s */
    public static final DatumReader<C17760u> f50361s;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50362a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50363b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50364c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50365d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50366e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50367f;
    @Deprecated

    /* renamed from: g */
    public boolean f50368g;
    @Deprecated

    /* renamed from: h */
    public long f50369h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50370i;
    @Deprecated

    /* renamed from: j */
    public boolean f50371j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f50372k;
    @Deprecated

    /* renamed from: l */
    public long f50373l;
    @Deprecated

    /* renamed from: m */
    public CharSequence f50374m;
    @Deprecated

    /* renamed from: n */
    public C17589i4 f50375n;
    @Deprecated

    /* renamed from: o */
    public Integer f50376o;

    /* renamed from: e.a.l5.a.u$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/u$b.class */
    public static class C17762b extends SpecificRecordBuilderBase<C17760u> implements RecordBuilder<C17760u> {

        /* renamed from: a */
        public CharSequence f50377a;

        /* renamed from: b */
        public CharSequence f50378b;

        /* renamed from: c */
        public CharSequence f50379c;

        /* renamed from: d */
        public CharSequence f50380d;

        /* renamed from: e */
        public boolean f50381e;

        /* renamed from: f */
        public long f50382f;

        /* renamed from: g */
        public CharSequence f50383g;

        /* renamed from: h */
        public boolean f50384h;

        /* renamed from: i */
        public CharSequence f50385i;

        /* renamed from: j */
        public long f50386j;

        /* renamed from: k */
        public CharSequence f50387k;

        /* renamed from: l */
        public C17589i4 f50388l;

        public C17762b(C17761a c17761a) {
            super(C17760u.f50358p);
        }

        /* JADX WARN: Type inference failed for: r0v106, types: [long] */
        /* JADX WARN: Type inference failed for: r0v108, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        /* JADX WARN: Type inference failed for: r0v86, types: [long] */
        /* renamed from: a */
        public C17760u build() {
            try {
                C17760u c17760u = new C17760u();
                c17760u.f50362a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17760u.f50363b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17760u.f50364c = fieldSetFlags()[2] ? this.f50377a : (CharSequence) defaultValue(fields()[2]);
                c17760u.f50365d = fieldSetFlags()[3] ? this.f50378b : (CharSequence) defaultValue(fields()[3]);
                c17760u.f50366e = fieldSetFlags()[4] ? this.f50379c : (CharSequence) defaultValue(fields()[4]);
                c17760u.f50367f = fieldSetFlags()[5] ? this.f50380d : (CharSequence) defaultValue(fields()[5]);
                c17760u.f50368g = fieldSetFlags()[6] ? this.f50381e : ((Boolean) defaultValue(fields()[6])).booleanValue();
                c17760u.f50369h = fieldSetFlags()[7] ? this.f50382f : ((Long) defaultValue(fields()[7])).longValue();
                c17760u.f50370i = fieldSetFlags()[8] ? this.f50383g : (CharSequence) defaultValue(fields()[8]);
                c17760u.f50371j = fieldSetFlags()[9] ? this.f50384h : ((Boolean) defaultValue(fields()[9])).booleanValue();
                c17760u.f50372k = fieldSetFlags()[10] ? this.f50385i : (CharSequence) defaultValue(fields()[10]);
                c17760u.f50373l = fieldSetFlags()[11] ? this.f50386j : ((Long) defaultValue(fields()[11])).longValue();
                c17760u.f50374m = fieldSetFlags()[12] ? this.f50387k : (CharSequence) defaultValue(fields()[12]);
                c17760u.f50375n = fieldSetFlags()[13] ? this.f50388l : (C17589i4) defaultValue(fields()[13]);
                c17760u.f50376o = fieldSetFlags()[14] ? null : (Integer) defaultValue(fields()[14]);
                return c17760u;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17762b m15808b(CharSequence charSequence) {
            validate(fields()[10], charSequence);
            this.f50385i = charSequence;
            fieldSetFlags()[10] = true;
            return this;
        }

        /* renamed from: c */
        public C17762b m15807c(CharSequence charSequence) {
            validate(fields()[12], charSequence);
            this.f50387k = charSequence;
            fieldSetFlags()[12] = true;
            return this;
        }

        /* renamed from: d */
        public C17762b m15806d(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f50380d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: e */
        public C17762b m15805e(C17589i4 c17589i4) {
            validate(fields()[13], c17589i4);
            this.f50388l = c17589i4;
            fieldSetFlags()[13] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallFinishedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"normalizedPhoneNumber\",\"type\":\"string\"},{\"name\":\"searchCountryCode\",\"type\":\"string\"},{\"name\":\"direction\",\"type\":\"string\"},{\"name\":\"status\",\"type\":\"string\"},{\"name\":\"afterCallShown\",\"type\":\"boolean\"},{\"name\":\"callDuration\",\"type\":\"long\"},{\"name\":\"searchResult\",\"type\":\"string\"},{\"name\":\"identifiedAsSpam\",\"type\":\"boolean\"},{\"name\":\"blockingAction\",\"type\":\"string\"},{\"name\":\"latency\",\"type\":\"long\"},{\"name\":\"callId\",\"type\":[\"null\",\"string\"]},{\"name\":\"tags\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"TagsServed\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}]},{\"name\":\"blockReason\",\"type\":[\"null\",\"int\"],\"default\":null}]}");
        f50358p = m8613i0;
        SpecificData specificData = new SpecificData();
        f50359q = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50359q, m8613i0);
        f50360r = f50359q.createDatumWriter(m8613i0);
        f50361s = f50359q.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50362a = null;
            } else {
                if (this.f50362a == null) {
                    this.f50362a = new C17638l3();
                }
                this.f50362a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50363b = null;
            } else {
                if (this.f50363b == null) {
                    this.f50363b = new ClientHeaderV2();
                }
                this.f50363b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50364c;
            this.f50364c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50365d;
            this.f50365d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50366e;
            this.f50366e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50367f;
            this.f50367f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f50368g = resolvingDecoder.readBoolean();
            this.f50369h = resolvingDecoder.readLong();
            Utf8 utf85 = this.f50370i;
            this.f50370i = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            this.f50371j = resolvingDecoder.readBoolean();
            Utf8 utf86 = this.f50372k;
            this.f50372k = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            this.f50373l = resolvingDecoder.readLong();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50374m = null;
            } else {
                Utf8 utf87 = this.f50374m;
                this.f50374m = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50375n = null;
            } else {
                if (this.f50375n == null) {
                    this.f50375n = new C17589i4();
                }
                this.f50375n.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f50376o = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f50376o = null;
            return;
        }
        for (int i = 0; i < 15; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50362a = null;
                        break;
                    } else {
                        if (this.f50362a == null) {
                            this.f50362a = new C17638l3();
                        }
                        this.f50362a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50363b = null;
                        break;
                    } else {
                        if (this.f50363b == null) {
                            this.f50363b = new ClientHeaderV2();
                        }
                        this.f50363b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf88 = this.f50364c;
                    this.f50364c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 3:
                    Utf8 utf89 = this.f50365d;
                    this.f50365d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 4:
                    Utf8 utf810 = this.f50366e;
                    this.f50366e = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 5:
                    Utf8 utf811 = this.f50367f;
                    this.f50367f = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 6:
                    this.f50368g = resolvingDecoder.readBoolean();
                    break;
                case 7:
                    this.f50369h = resolvingDecoder.readLong();
                    break;
                case 8:
                    Utf8 utf812 = this.f50370i;
                    this.f50370i = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 9:
                    this.f50371j = resolvingDecoder.readBoolean();
                    break;
                case 10:
                    Utf8 utf813 = this.f50372k;
                    this.f50372k = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 11:
                    this.f50373l = resolvingDecoder.readLong();
                    break;
                case 12:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50374m = null;
                        break;
                    } else {
                        Utf8 utf814 = this.f50374m;
                        this.f50374m = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                        break;
                    }
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50375n = null;
                        break;
                    } else {
                        if (this.f50375n == null) {
                            this.f50375n = new C17589i4();
                        }
                        this.f50375n.customDecode(resolvingDecoder);
                        break;
                    }
                case 14:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50376o = null;
                        break;
                    } else {
                        this.f50376o = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50362a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50362a.customEncode(encoder);
        }
        if (this.f50363b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50363b.customEncode(encoder);
        }
        encoder.writeString(this.f50364c);
        encoder.writeString(this.f50365d);
        encoder.writeString(this.f50366e);
        encoder.writeString(this.f50367f);
        encoder.writeBoolean(this.f50368g);
        encoder.writeLong(this.f50369h);
        encoder.writeString(this.f50370i);
        encoder.writeBoolean(this.f50371j);
        encoder.writeString(this.f50372k);
        encoder.writeLong(this.f50373l);
        if (this.f50374m == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50374m);
        }
        if (this.f50375n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50375n.customEncode(encoder);
        }
        if (this.f50376o == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f50376o.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50362a;
            case 1:
                return this.f50363b;
            case 2:
                return this.f50364c;
            case 3:
                return this.f50365d;
            case 4:
                return this.f50366e;
            case 5:
                return this.f50367f;
            case 6:
                return Boolean.valueOf(this.f50368g);
            case 7:
                return Long.valueOf(this.f50369h);
            case 8:
                return this.f50370i;
            case 9:
                return Boolean.valueOf(this.f50371j);
            case 10:
                return this.f50372k;
            case 11:
                return Long.valueOf(this.f50373l);
            case 12:
                return this.f50374m;
            case 13:
                return this.f50375n;
            case 14:
                return this.f50376o;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50358p;
    }

    public SpecificData getSpecificData() {
        return f50359q;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50362a = (C17638l3) obj;
                return;
            case 1:
                this.f50363b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50364c = (CharSequence) obj;
                return;
            case 3:
                this.f50365d = (CharSequence) obj;
                return;
            case 4:
                this.f50366e = (CharSequence) obj;
                return;
            case 5:
                this.f50367f = (CharSequence) obj;
                return;
            case 6:
                this.f50368g = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f50369h = ((Long) obj).longValue();
                return;
            case 8:
                this.f50370i = (CharSequence) obj;
                return;
            case 9:
                this.f50371j = ((Boolean) obj).booleanValue();
                return;
            case 10:
                this.f50372k = (CharSequence) obj;
                return;
            case 11:
                this.f50373l = ((Long) obj).longValue();
                return;
            case 12:
                this.f50374m = (CharSequence) obj;
                return;
            case 13:
                this.f50375n = (C17589i4) obj;
                return;
            case 14:
                this.f50376o = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50361s.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50360r.write(this, SpecificData.getEncoder(objectOutput));
    }
}
