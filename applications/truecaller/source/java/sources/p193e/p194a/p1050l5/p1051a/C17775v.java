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
/* renamed from: e.a.l5.a.v */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/v.class */
public class C17775v extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: v */
    public static final Schema f50449v;

    /* renamed from: w */
    public static SpecificData f50450w;

    /* renamed from: x */
    public static final DatumWriter<C17775v> f50451x;

    /* renamed from: y */
    public static final DatumReader<C17775v> f50452y;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50453a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50454b;
    @Deprecated

    /* renamed from: c */
    public long f50455c;
    @Deprecated

    /* renamed from: d */
    public boolean f50456d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50457e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50458f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f50459g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f50460h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f50461i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f50462j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f50463k;
    @Deprecated

    /* renamed from: l */
    public CharSequence f50464l;
    @Deprecated

    /* renamed from: m */
    public CharSequence f50465m;
    @Deprecated

    /* renamed from: n */
    public long f50466n;
    @Deprecated

    /* renamed from: o */
    public long f50467o;
    @Deprecated

    /* renamed from: p */
    public CharSequence f50468p;
    @Deprecated

    /* renamed from: q */
    public boolean f50469q;
    @Deprecated

    /* renamed from: r */
    public CharSequence f50470r;
    @Deprecated

    /* renamed from: s */
    public C17607j4 f50471s;
    @Deprecated

    /* renamed from: t */
    public CharSequence f50472t;
    @Deprecated

    /* renamed from: u */
    public Integer f50473u;

    /* renamed from: e.a.l5.a.v$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/v$b.class */
    public static class C17777b extends SpecificRecordBuilderBase<C17775v> implements RecordBuilder<C17775v> {

        /* renamed from: a */
        public long f50474a;

        /* renamed from: b */
        public boolean f50475b;

        /* renamed from: c */
        public CharSequence f50476c;

        /* renamed from: d */
        public CharSequence f50477d;

        /* renamed from: e */
        public CharSequence f50478e;

        /* renamed from: f */
        public CharSequence f50479f;

        /* renamed from: g */
        public CharSequence f50480g;

        /* renamed from: h */
        public CharSequence f50481h;

        /* renamed from: i */
        public CharSequence f50482i;

        /* renamed from: j */
        public CharSequence f50483j;

        /* renamed from: k */
        public CharSequence f50484k;

        /* renamed from: l */
        public long f50485l;

        /* renamed from: m */
        public long f50486m;

        /* renamed from: n */
        public CharSequence f50487n;

        /* renamed from: o */
        public boolean f50488o;

        /* renamed from: p */
        public CharSequence f50489p;

        /* renamed from: q */
        public C17607j4 f50490q;

        /* renamed from: r */
        public CharSequence f50491r;

        public C17777b() {
            super(C17775v.f50449v);
        }

        public C17777b(C17776a c17776a) {
            super(C17775v.f50449v);
        }

        /* JADX WARN: Type inference failed for: r0v124, types: [long] */
        /* JADX WARN: Type inference failed for: r0v126, types: [long] */
        /* JADX WARN: Type inference failed for: r0v130, types: [long] */
        /* JADX WARN: Type inference failed for: r0v132, types: [long] */
        /* JADX WARN: Type inference failed for: r0v187, types: [long] */
        /* JADX WARN: Type inference failed for: r0v189, types: [long] */
        /* renamed from: a */
        public C17775v build() {
            try {
                C17775v c17775v = new C17775v();
                c17775v.f50453a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17775v.f50454b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17775v.f50455c = fieldSetFlags()[2] ? this.f50474a : ((Long) defaultValue(fields()[2])).longValue();
                c17775v.f50456d = fieldSetFlags()[3] ? this.f50475b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17775v.f50457e = fieldSetFlags()[4] ? this.f50476c : (CharSequence) defaultValue(fields()[4]);
                c17775v.f50458f = fieldSetFlags()[5] ? this.f50477d : (CharSequence) defaultValue(fields()[5]);
                c17775v.f50459g = fieldSetFlags()[6] ? this.f50478e : (CharSequence) defaultValue(fields()[6]);
                c17775v.f50460h = fieldSetFlags()[7] ? this.f50479f : (CharSequence) defaultValue(fields()[7]);
                c17775v.f50461i = fieldSetFlags()[8] ? this.f50480g : (CharSequence) defaultValue(fields()[8]);
                c17775v.f50462j = fieldSetFlags()[9] ? this.f50481h : (CharSequence) defaultValue(fields()[9]);
                c17775v.f50463k = fieldSetFlags()[10] ? this.f50482i : (CharSequence) defaultValue(fields()[10]);
                c17775v.f50464l = fieldSetFlags()[11] ? this.f50483j : (CharSequence) defaultValue(fields()[11]);
                c17775v.f50465m = fieldSetFlags()[12] ? this.f50484k : (CharSequence) defaultValue(fields()[12]);
                c17775v.f50466n = fieldSetFlags()[13] ? this.f50485l : ((Long) defaultValue(fields()[13])).longValue();
                c17775v.f50467o = fieldSetFlags()[14] ? this.f50486m : ((Long) defaultValue(fields()[14])).longValue();
                c17775v.f50468p = fieldSetFlags()[15] ? this.f50487n : (CharSequence) defaultValue(fields()[15]);
                c17775v.f50469q = fieldSetFlags()[16] ? this.f50488o : ((Boolean) defaultValue(fields()[16])).booleanValue();
                c17775v.f50470r = fieldSetFlags()[17] ? this.f50489p : (CharSequence) defaultValue(fields()[17]);
                c17775v.f50471s = fieldSetFlags()[18] ? this.f50490q : (C17607j4) defaultValue(fields()[18]);
                c17775v.f50472t = fieldSetFlags()[19] ? this.f50491r : (CharSequence) defaultValue(fields()[19]);
                c17775v.f50473u = fieldSetFlags()[20] ? null : (Integer) defaultValue(fields()[20]);
                return c17775v;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallFinishedV3\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"phoneNumber\",\"type\":\"long\",\"doc\":\"The phone number of the other party on the call (i.e. not the user reporting the event), in E.64 format if possible. If parsing failed, the number won't be in E.164 format and the parsingSuccessful flag will be false.\"},{\"name\":\"parsingSuccess\",\"type\":\"boolean\",\"doc\":\"Whether parsing the other party's phone number was successful.\"},{\"name\":\"countryCode\",\"type\":\"string\",\"doc\":\"The other party's phone number's 2-letter country code. If unknown, we pass 'unknown'.\"},{\"name\":\"region\",\"type\":\"string\",\"doc\":\"The other party's phone number's region. If unknown, we pass 'unknown'.\"},{\"name\":\"myCountryCode\",\"type\":\"string\",\"doc\":\"The 2-letter country code of the phone number the user used to make the call. If unknown, we pass 'unknown'.\"},{\"name\":\"myRegion\",\"type\":\"string\",\"doc\":\"The region of the phone number the user used to make the call. If unknown, we pass 'unknown'.\"},{\"name\":\"initiatedFrom\",\"type\":\"string\",\"doc\":\"Where the call was initiated from inside the app, or 'outside' for external launches. Empty string if the call was incoming instead of outgoing, and 'unknown' if we don't know.\",\"default\":\"unknown\"},{\"name\":\"callProvider\",\"type\":\"string\",\"doc\":\"The calling UI used for the call. Used to differentiate between different versions of Truecaller's own incall UI, and others.\"},{\"name\":\"direction\",\"type\":\"string\",\"doc\":\"Whether the reporter of the event was the caller (outgoing) or callee (incoming).\"},{\"name\":\"answered\",\"type\":\"string\",\"doc\":\"Whether the call was answered. Always known for incoming calls and, when using our own incall UI, for incoming and outgoing calls. Otherwise, we pass 'unknown'.\",\"default\":\"unknown\"},{\"name\":\"afterCallScreen\",\"type\":\"string\",\"doc\":\"What happened with the aftercall screen, or ACS. We track whether it was shown or not, and why. 'otherCall' means no ACS was shown because there was an on hold call to switch to instead.\"},{\"name\":\"callDuration\",\"type\":\"long\",\"doc\":\"Duration of the call in milliseconds, including ringing time. 0 if the call wasn't picked up.\"},{\"name\":\"callDurationNoRing\",\"type\":\"long\",\"doc\":\"Duration of the call in milliseconds, minus ringing time. Only available in our own in-call UI (see the callProvider field). 0 if we don't have access to the information.\",\"default\":0},{\"name\":\"searchResult\",\"type\":\"string\",\"doc\":\"Where the search result was served from. Can be 'noHit' for no result.\"},{\"name\":\"identifiedAsSpam\",\"type\":\"boolean\",\"doc\":\"Whether the number was identified as spam or not in the context of the call.\",\"default\":false},{\"name\":\"blockingAction\",\"type\":\"string\",\"doc\":\"The action taken by Truecaller to block this call. Empty string if none.\",\"default\":\"\"},{\"name\":\"tags\",\"type\":{\"type\":\"record\",\"name\":\"TagsServedV2\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All tag ids that client received, e.g. [\\\"9\\\",\\\"129\\\"]\"},{\"name\":\"manualTagsAvailable\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All manual tag ids that the client has available for this number\"},{\"name\":\"shownTags\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"The list of tag ids that the client displayed to the user for this search result\"}]},\"doc\":\"Tags for the other party on the call, if they were served.\"},{\"name\":\"callContextMessageId\",\"type\":[\"null\",\"string\"],\"doc\":\"Possible call context message id, if it was passed in the call alert.\",\"default\":null},{\"name\":\"blockReason\",\"type\":[\"null\",\"int\"],\"doc\":\"The reason why the call was blocked. See values in https://confluence.truecaller.net/display/BUCS/Block+reason+in+AppCallFinished\",\"default\":null}]}");
        f50449v = m8613i0;
        SpecificData specificData = new SpecificData();
        f50450w = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50450w, m8613i0);
        f50451x = f50450w.createDatumWriter(m8613i0);
        f50452y = f50450w.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50453a = null;
            } else {
                if (this.f50453a == null) {
                    this.f50453a = new C17638l3();
                }
                this.f50453a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50454b = null;
            } else {
                if (this.f50454b == null) {
                    this.f50454b = new ClientHeaderV2();
                }
                this.f50454b.customDecode(resolvingDecoder);
            }
            this.f50455c = resolvingDecoder.readLong();
            this.f50456d = resolvingDecoder.readBoolean();
            Utf8 utf8 = this.f50457e;
            this.f50457e = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50458f;
            this.f50458f = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50459g;
            this.f50459g = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50460h;
            this.f50460h = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f50461i;
            this.f50461i = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            Utf8 utf86 = this.f50462j;
            this.f50462j = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            Utf8 utf87 = this.f50463k;
            this.f50463k = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            Utf8 utf88 = this.f50464l;
            this.f50464l = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            Utf8 utf89 = this.f50465m;
            this.f50465m = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
            this.f50466n = resolvingDecoder.readLong();
            this.f50467o = resolvingDecoder.readLong();
            Utf8 utf810 = this.f50468p;
            this.f50468p = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
            this.f50469q = resolvingDecoder.readBoolean();
            Utf8 utf811 = this.f50470r;
            this.f50470r = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
            if (this.f50471s == null) {
                this.f50471s = new C17607j4();
            }
            this.f50471s.customDecode(resolvingDecoder);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50472t = null;
            } else {
                Utf8 utf812 = this.f50472t;
                this.f50472t = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f50473u = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f50473u = null;
            return;
        }
        for (int i = 0; i < 21; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50453a = null;
                        break;
                    } else {
                        if (this.f50453a == null) {
                            this.f50453a = new C17638l3();
                        }
                        this.f50453a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50454b = null;
                        break;
                    } else {
                        if (this.f50454b == null) {
                            this.f50454b = new ClientHeaderV2();
                        }
                        this.f50454b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    this.f50455c = resolvingDecoder.readLong();
                    break;
                case 3:
                    this.f50456d = resolvingDecoder.readBoolean();
                    break;
                case 4:
                    Utf8 utf813 = this.f50457e;
                    this.f50457e = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 5:
                    Utf8 utf814 = this.f50458f;
                    this.f50458f = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                    break;
                case 6:
                    Utf8 utf815 = this.f50459g;
                    this.f50459g = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                    break;
                case 7:
                    Utf8 utf816 = this.f50460h;
                    this.f50460h = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                    break;
                case 8:
                    Utf8 utf817 = this.f50461i;
                    this.f50461i = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                    break;
                case 9:
                    Utf8 utf818 = this.f50462j;
                    this.f50462j = resolvingDecoder.readString(utf818 instanceof Utf8 ? utf818 : null);
                    break;
                case 10:
                    Utf8 utf819 = this.f50463k;
                    this.f50463k = resolvingDecoder.readString(utf819 instanceof Utf8 ? utf819 : null);
                    break;
                case 11:
                    Utf8 utf820 = this.f50464l;
                    this.f50464l = resolvingDecoder.readString(utf820 instanceof Utf8 ? utf820 : null);
                    break;
                case 12:
                    Utf8 utf821 = this.f50465m;
                    this.f50465m = resolvingDecoder.readString(utf821 instanceof Utf8 ? utf821 : null);
                    break;
                case 13:
                    this.f50466n = resolvingDecoder.readLong();
                    break;
                case 14:
                    this.f50467o = resolvingDecoder.readLong();
                    break;
                case 15:
                    Utf8 utf822 = this.f50468p;
                    this.f50468p = resolvingDecoder.readString(utf822 instanceof Utf8 ? utf822 : null);
                    break;
                case 16:
                    this.f50469q = resolvingDecoder.readBoolean();
                    break;
                case 17:
                    Utf8 utf823 = this.f50470r;
                    this.f50470r = resolvingDecoder.readString(utf823 instanceof Utf8 ? utf823 : null);
                    break;
                case 18:
                    if (this.f50471s == null) {
                        this.f50471s = new C17607j4();
                    }
                    this.f50471s.customDecode(resolvingDecoder);
                    break;
                case 19:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50472t = null;
                        break;
                    } else {
                        Utf8 utf824 = this.f50472t;
                        this.f50472t = resolvingDecoder.readString(utf824 instanceof Utf8 ? utf824 : null);
                        break;
                    }
                case 20:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50473u = null;
                        break;
                    } else {
                        this.f50473u = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50453a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50453a.customEncode(encoder);
        }
        if (this.f50454b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50454b.customEncode(encoder);
        }
        encoder.writeLong(this.f50455c);
        encoder.writeBoolean(this.f50456d);
        encoder.writeString(this.f50457e);
        encoder.writeString(this.f50458f);
        encoder.writeString(this.f50459g);
        encoder.writeString(this.f50460h);
        encoder.writeString(this.f50461i);
        encoder.writeString(this.f50462j);
        encoder.writeString(this.f50463k);
        encoder.writeString(this.f50464l);
        encoder.writeString(this.f50465m);
        encoder.writeLong(this.f50466n);
        encoder.writeLong(this.f50467o);
        encoder.writeString(this.f50468p);
        encoder.writeBoolean(this.f50469q);
        encoder.writeString(this.f50470r);
        this.f50471s.customEncode(encoder);
        if (this.f50472t == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50472t);
        }
        if (this.f50473u == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f50473u.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50453a;
            case 1:
                return this.f50454b;
            case 2:
                return Long.valueOf(this.f50455c);
            case 3:
                return Boolean.valueOf(this.f50456d);
            case 4:
                return this.f50457e;
            case 5:
                return this.f50458f;
            case 6:
                return this.f50459g;
            case 7:
                return this.f50460h;
            case 8:
                return this.f50461i;
            case 9:
                return this.f50462j;
            case 10:
                return this.f50463k;
            case 11:
                return this.f50464l;
            case 12:
                return this.f50465m;
            case 13:
                return Long.valueOf(this.f50466n);
            case 14:
                return Long.valueOf(this.f50467o);
            case 15:
                return this.f50468p;
            case 16:
                return Boolean.valueOf(this.f50469q);
            case 17:
                return this.f50470r;
            case 18:
                return this.f50471s;
            case 19:
                return this.f50472t;
            case 20:
                return this.f50473u;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50449v;
    }

    public SpecificData getSpecificData() {
        return f50450w;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50453a = (C17638l3) obj;
                return;
            case 1:
                this.f50454b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50455c = ((Long) obj).longValue();
                return;
            case 3:
                this.f50456d = ((Boolean) obj).booleanValue();
                return;
            case 4:
                this.f50457e = (CharSequence) obj;
                return;
            case 5:
                this.f50458f = (CharSequence) obj;
                return;
            case 6:
                this.f50459g = (CharSequence) obj;
                return;
            case 7:
                this.f50460h = (CharSequence) obj;
                return;
            case 8:
                this.f50461i = (CharSequence) obj;
                return;
            case 9:
                this.f50462j = (CharSequence) obj;
                return;
            case 10:
                this.f50463k = (CharSequence) obj;
                return;
            case 11:
                this.f50464l = (CharSequence) obj;
                return;
            case 12:
                this.f50465m = (CharSequence) obj;
                return;
            case 13:
                this.f50466n = ((Long) obj).longValue();
                return;
            case 14:
                this.f50467o = ((Long) obj).longValue();
                return;
            case 15:
                this.f50468p = (CharSequence) obj;
                return;
            case 16:
                this.f50469q = ((Boolean) obj).booleanValue();
                return;
            case 17:
                this.f50470r = (CharSequence) obj;
                return;
            case 18:
                this.f50471s = (C17607j4) obj;
                return;
            case 19:
                this.f50472t = (CharSequence) obj;
                return;
            case 20:
                this.f50473u = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50452y.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50451x.write(this, SpecificData.getEncoder(objectOutput));
    }
}
