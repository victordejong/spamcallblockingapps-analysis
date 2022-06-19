package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.AppStandbyBucket;
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
/* renamed from: e.a.l5.a.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/g0.class */
public class C17541g0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: D */
    public static final Schema f49271D;

    /* renamed from: E */
    public static SpecificData f49272E;

    /* renamed from: J */
    public static final DatumWriter<C17541g0> f49273J;

    /* renamed from: K */
    public static final DatumReader<C17541g0> f49274K;
    @Deprecated

    /* renamed from: A */
    public boolean f49275A;
    @Deprecated

    /* renamed from: B */
    public boolean f49276B;
    @Deprecated

    /* renamed from: C */
    public boolean f49277C;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49278a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49279b;
    @Deprecated

    /* renamed from: c */
    public boolean f49280c;
    @Deprecated

    /* renamed from: d */
    public boolean f49281d;
    @Deprecated

    /* renamed from: e */
    public boolean f49282e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49283f;
    @Deprecated

    /* renamed from: g */
    public boolean f49284g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49285h;
    @Deprecated

    /* renamed from: i */
    public AppStandbyBucket f49286i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f49287j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f49288k;
    @Deprecated

    /* renamed from: l */
    public boolean f49289l;
    @Deprecated

    /* renamed from: m */
    public boolean f49290m;
    @Deprecated

    /* renamed from: n */
    public Boolean f49291n;
    @Deprecated

    /* renamed from: o */
    public boolean f49292o;
    @Deprecated

    /* renamed from: p */
    public boolean f49293p;
    @Deprecated

    /* renamed from: q */
    public boolean f49294q;
    @Deprecated

    /* renamed from: r */
    public Boolean f49295r;
    @Deprecated

    /* renamed from: s */
    public Boolean f49296s;
    @Deprecated

    /* renamed from: t */
    public boolean f49297t;
    @Deprecated

    /* renamed from: u */
    public boolean f49298u;
    @Deprecated

    /* renamed from: v */
    public boolean f49299v;
    @Deprecated

    /* renamed from: w */
    public boolean f49300w;
    @Deprecated

    /* renamed from: x */
    public boolean f49301x;
    @Deprecated

    /* renamed from: y */
    public boolean f49302y;
    @Deprecated

    /* renamed from: z */
    public boolean f49303z;

    /* renamed from: e.a.l5.a.g0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/g0$b.class */
    public static class C17543b extends SpecificRecordBuilderBase<C17541g0> implements RecordBuilder<C17541g0> {

        /* renamed from: A */
        public boolean f49304A;

        /* renamed from: a */
        public boolean f49305a;

        /* renamed from: b */
        public boolean f49306b;

        /* renamed from: c */
        public boolean f49307c;

        /* renamed from: d */
        public CharSequence f49308d;

        /* renamed from: e */
        public boolean f49309e;

        /* renamed from: f */
        public CharSequence f49310f;

        /* renamed from: g */
        public AppStandbyBucket f49311g;

        /* renamed from: h */
        public CharSequence f49312h;

        /* renamed from: i */
        public CharSequence f49313i;

        /* renamed from: j */
        public boolean f49314j;

        /* renamed from: k */
        public boolean f49315k;

        /* renamed from: l */
        public Boolean f49316l;

        /* renamed from: m */
        public boolean f49317m;

        /* renamed from: n */
        public boolean f49318n;

        /* renamed from: o */
        public boolean f49319o;

        /* renamed from: p */
        public Boolean f49320p;

        /* renamed from: q */
        public Boolean f49321q;

        /* renamed from: r */
        public boolean f49322r;

        /* renamed from: s */
        public boolean f49323s;

        /* renamed from: t */
        public boolean f49324t;

        /* renamed from: u */
        public boolean f49325u;

        /* renamed from: v */
        public boolean f49326v;

        /* renamed from: w */
        public boolean f49327w;

        /* renamed from: x */
        public boolean f49328x;

        /* renamed from: y */
        public boolean f49329y;

        /* renamed from: z */
        public boolean f49330z;

        public C17543b(C17542a c17542a) {
            super(C17541g0.f49271D);
        }

        /* renamed from: a */
        public C17541g0 build() {
            try {
                C17541g0 c17541g0 = new C17541g0();
                c17541g0.f49278a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17541g0.f49279b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17541g0.f49280c = fieldSetFlags()[2] ? this.f49305a : ((Boolean) defaultValue(fields()[2])).booleanValue();
                c17541g0.f49281d = fieldSetFlags()[3] ? this.f49306b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17541g0.f49282e = fieldSetFlags()[4] ? this.f49307c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                c17541g0.f49283f = fieldSetFlags()[5] ? this.f49308d : (CharSequence) defaultValue(fields()[5]);
                c17541g0.f49284g = fieldSetFlags()[6] ? this.f49309e : ((Boolean) defaultValue(fields()[6])).booleanValue();
                c17541g0.f49285h = fieldSetFlags()[7] ? this.f49310f : (CharSequence) defaultValue(fields()[7]);
                c17541g0.f49286i = fieldSetFlags()[8] ? this.f49311g : (AppStandbyBucket) defaultValue(fields()[8]);
                c17541g0.f49287j = fieldSetFlags()[9] ? this.f49312h : (CharSequence) defaultValue(fields()[9]);
                c17541g0.f49288k = fieldSetFlags()[10] ? this.f49313i : (CharSequence) defaultValue(fields()[10]);
                c17541g0.f49289l = fieldSetFlags()[11] ? this.f49314j : ((Boolean) defaultValue(fields()[11])).booleanValue();
                c17541g0.f49290m = fieldSetFlags()[12] ? this.f49315k : ((Boolean) defaultValue(fields()[12])).booleanValue();
                c17541g0.f49291n = fieldSetFlags()[13] ? this.f49316l : (Boolean) defaultValue(fields()[13]);
                c17541g0.f49292o = fieldSetFlags()[14] ? this.f49317m : ((Boolean) defaultValue(fields()[14])).booleanValue();
                c17541g0.f49293p = fieldSetFlags()[15] ? this.f49318n : ((Boolean) defaultValue(fields()[15])).booleanValue();
                c17541g0.f49294q = fieldSetFlags()[16] ? this.f49319o : ((Boolean) defaultValue(fields()[16])).booleanValue();
                c17541g0.f49295r = fieldSetFlags()[17] ? this.f49320p : (Boolean) defaultValue(fields()[17]);
                c17541g0.f49296s = fieldSetFlags()[18] ? this.f49321q : (Boolean) defaultValue(fields()[18]);
                c17541g0.f49297t = fieldSetFlags()[19] ? this.f49322r : ((Boolean) defaultValue(fields()[19])).booleanValue();
                c17541g0.f49298u = fieldSetFlags()[20] ? this.f49323s : ((Boolean) defaultValue(fields()[20])).booleanValue();
                c17541g0.f49299v = fieldSetFlags()[21] ? this.f49324t : ((Boolean) defaultValue(fields()[21])).booleanValue();
                c17541g0.f49300w = fieldSetFlags()[22] ? this.f49325u : ((Boolean) defaultValue(fields()[22])).booleanValue();
                c17541g0.f49301x = fieldSetFlags()[23] ? this.f49326v : ((Boolean) defaultValue(fields()[23])).booleanValue();
                c17541g0.f49302y = fieldSetFlags()[24] ? this.f49327w : ((Boolean) defaultValue(fields()[24])).booleanValue();
                c17541g0.f49303z = fieldSetFlags()[25] ? this.f49328x : ((Boolean) defaultValue(fields()[25])).booleanValue();
                c17541g0.f49275A = fieldSetFlags()[26] ? this.f49329y : ((Boolean) defaultValue(fields()[26])).booleanValue();
                c17541g0.f49276B = fieldSetFlags()[27] ? this.f49330z : ((Boolean) defaultValue(fields()[27])).booleanValue();
                c17541g0.f49277C = fieldSetFlags()[28] ? this.f49304A : ((Boolean) defaultValue(fields()[28])).booleanValue();
                return c17541g0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppConfigStateAndroid\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Android's application configurations state\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"domainFronting\",\"type\":\"boolean\",\"doc\":\"Client uses domain fronting or not.\"},{\"name\":\"dualSimDevice\",\"type\":\"boolean\",\"doc\":\"User device supports dual sim or not.\"},{\"name\":\"googleServices\",\"type\":\"boolean\",\"doc\":\"User device has google services or not.\"},{\"name\":\"googleServicesVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"Google services version eg. \\\"211515049\\\"\"},{\"name\":\"region1\",\"type\":\"boolean\",\"doc\":\"Whether region 1 is enabled or not.\"},{\"name\":\"securityPatchVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"This value represents the date when the device most recently applied a security patch. eg. \\\"2020-09-05\\\"\"},{\"name\":\"standbyBucket\",\"type\":[\"null\",{\"type\":\"enum\",\"name\":\"AppStandbyBucket\",\"doc\":\"Android's application Standby bucket types\",\"symbols\":[\"ACTIVE\",\"WORKING_SET\",\"FREQUENT\",\"RARE\",\"RESTRICTED\"]}],\"doc\":\"App's current priority bucket. values \\\"Active\\\", \\\"WorkingSet\\\", \\\"Frequent\\\",\\\"Rare\\\",\\\"Unknown\\\",\\\"CouldntGetUsageStatsMgr\\\"\"},{\"name\":\"carrierMenuName\",\"type\":[\"null\",\"string\"],\"doc\":\"Carrier menu. eg. \\\"Telenor\\\"\"},{\"name\":\"themeName\",\"type\":\"string\",\"doc\":\"Application theme name\"},{\"name\":\"backupEnabled\",\"type\":\"boolean\",\"doc\":\"Whether truecaller Backup is enabled\"},{\"name\":\"accountBackedUp\",\"type\":\"boolean\",\"doc\":\"Account file was backedup by autobackup\"},{\"name\":\"enhancedSearch\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether enhanced search is turned. null denotes that enhanced search is unavailable for a user/build\"},{\"name\":\"blockTopSpammers\",\"type\":\"boolean\",\"doc\":\"Whether top spammer filter is enabled\"},{\"name\":\"blockHiddenCalls\",\"type\":\"boolean\",\"doc\":\"Whether hidden call filter is enabled\"},{\"name\":\"searchClipBoard\",\"type\":\"boolean\",\"doc\":\"Whether clipboard search is enabled\"},{\"name\":\"searchMessagingApps\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether enhanced notification is enabled. null denotes that this function is not available, e.g. no notification access\"},{\"name\":\"missedCallNotification\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether showing missed calls notifications is enabled. null denotes that this function is not available, e.g. no notification access\"},{\"name\":\"missedCallReminder\",\"type\":\"boolean\",\"doc\":\"Determines whether missed call reminders are enabled or not\"},{\"name\":\"callerIdForPhonebook\",\"type\":\"boolean\",\"doc\":\"Caller id is enabled for phonebook.\"},{\"name\":\"incomingCallNotification\",\"type\":\"boolean\",\"doc\":\"Whether notifications for incoming call are shown\"},{\"name\":\"afterCall\",\"type\":\"boolean\",\"doc\":\"After caller is enabled.\"},{\"name\":\"afterCallForPhonebook\",\"type\":\"boolean\",\"doc\":\"After caller is enabled for phonebook contacts.\"},{\"name\":\"groupCallsMergingEnabled\",\"type\":\"boolean\",\"doc\":\"Сalls from the same number will be merged\"},{\"name\":\"mostCalled\",\"type\":\"boolean\",\"doc\":\"Whether frequently called contacts are shown\"},{\"name\":\"flashEnabled\",\"type\":\"boolean\",\"doc\":\"Flash feature is enabled or not\"},{\"name\":\"smsDeliveryReport\",\"type\":\"boolean\",\"doc\":\"Whether SMS delivery report is required\"},{\"name\":\"whatsAppEnabledInCallLog\",\"type\":\"boolean\",\"doc\":\"Whether WhatsApp call are shown in call log or not\"}]}");
        f49271D = m8613i0;
        SpecificData specificData = new SpecificData();
        f49272E = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49272E, m8613i0);
        f49273J = f49272E.createDatumWriter(m8613i0);
        f49274K = f49272E.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49278a = null;
            } else {
                if (this.f49278a == null) {
                    this.f49278a = new C17638l3();
                }
                this.f49278a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49279b = null;
            } else {
                if (this.f49279b == null) {
                    this.f49279b = new ClientHeaderV2();
                }
                this.f49279b.customDecode(resolvingDecoder);
            }
            this.f49280c = resolvingDecoder.readBoolean();
            this.f49281d = resolvingDecoder.readBoolean();
            this.f49282e = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49283f = null;
            } else {
                Utf8 utf8 = this.f49283f;
                this.f49283f = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            this.f49284g = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49285h = null;
            } else {
                Utf8 utf82 = this.f49285h;
                this.f49285h = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49286i = null;
            } else {
                this.f49286i = AppStandbyBucket.values()[resolvingDecoder.readEnum()];
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49287j = null;
            } else {
                Utf8 utf83 = this.f49287j;
                this.f49287j = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            Utf8 utf84 = this.f49288k;
            this.f49288k = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            this.f49289l = resolvingDecoder.readBoolean();
            this.f49290m = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49291n = null;
            } else {
                this.f49291n = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            this.f49292o = resolvingDecoder.readBoolean();
            this.f49293p = resolvingDecoder.readBoolean();
            this.f49294q = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49295r = null;
            } else {
                this.f49295r = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49296s = null;
            } else {
                this.f49296s = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            this.f49297t = resolvingDecoder.readBoolean();
            this.f49298u = resolvingDecoder.readBoolean();
            this.f49299v = resolvingDecoder.readBoolean();
            this.f49300w = resolvingDecoder.readBoolean();
            this.f49301x = resolvingDecoder.readBoolean();
            this.f49302y = resolvingDecoder.readBoolean();
            this.f49303z = resolvingDecoder.readBoolean();
            this.f49275A = resolvingDecoder.readBoolean();
            this.f49276B = resolvingDecoder.readBoolean();
            this.f49277C = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 29; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49278a = null;
                        break;
                    } else {
                        if (this.f49278a == null) {
                            this.f49278a = new C17638l3();
                        }
                        this.f49278a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49279b = null;
                        break;
                    } else {
                        if (this.f49279b == null) {
                            this.f49279b = new ClientHeaderV2();
                        }
                        this.f49279b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    this.f49280c = resolvingDecoder.readBoolean();
                    break;
                case 3:
                    this.f49281d = resolvingDecoder.readBoolean();
                    break;
                case 4:
                    this.f49282e = resolvingDecoder.readBoolean();
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49283f = null;
                        break;
                    } else {
                        Utf8 utf85 = this.f49283f;
                        this.f49283f = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                        break;
                    }
                case 6:
                    this.f49284g = resolvingDecoder.readBoolean();
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49285h = null;
                        break;
                    } else {
                        Utf8 utf86 = this.f49285h;
                        this.f49285h = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49286i = null;
                        break;
                    } else {
                        this.f49286i = AppStandbyBucket.values()[resolvingDecoder.readEnum()];
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49287j = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49287j;
                        this.f49287j = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                case 10:
                    Utf8 utf88 = this.f49288k;
                    this.f49288k = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 11:
                    this.f49289l = resolvingDecoder.readBoolean();
                    break;
                case 12:
                    this.f49290m = resolvingDecoder.readBoolean();
                    break;
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49291n = null;
                        break;
                    } else {
                        this.f49291n = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 14:
                    this.f49292o = resolvingDecoder.readBoolean();
                    break;
                case 15:
                    this.f49293p = resolvingDecoder.readBoolean();
                    break;
                case 16:
                    this.f49294q = resolvingDecoder.readBoolean();
                    break;
                case 17:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49295r = null;
                        break;
                    } else {
                        this.f49295r = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 18:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49296s = null;
                        break;
                    } else {
                        this.f49296s = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 19:
                    this.f49297t = resolvingDecoder.readBoolean();
                    break;
                case 20:
                    this.f49298u = resolvingDecoder.readBoolean();
                    break;
                case 21:
                    this.f49299v = resolvingDecoder.readBoolean();
                    break;
                case 22:
                    this.f49300w = resolvingDecoder.readBoolean();
                    break;
                case 23:
                    this.f49301x = resolvingDecoder.readBoolean();
                    break;
                case 24:
                    this.f49302y = resolvingDecoder.readBoolean();
                    break;
                case 25:
                    this.f49303z = resolvingDecoder.readBoolean();
                    break;
                case 26:
                    this.f49275A = resolvingDecoder.readBoolean();
                    break;
                case 27:
                    this.f49276B = resolvingDecoder.readBoolean();
                    break;
                case 28:
                    this.f49277C = resolvingDecoder.readBoolean();
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49278a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49278a.customEncode(encoder);
        }
        if (this.f49279b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49279b.customEncode(encoder);
        }
        encoder.writeBoolean(this.f49280c);
        encoder.writeBoolean(this.f49281d);
        encoder.writeBoolean(this.f49282e);
        if (this.f49283f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49283f);
        }
        encoder.writeBoolean(this.f49284g);
        if (this.f49285h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49285h);
        }
        if (this.f49286i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeEnum(this.f49286i.ordinal());
        }
        if (this.f49287j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49287j);
        }
        encoder.writeString(this.f49288k);
        encoder.writeBoolean(this.f49289l);
        encoder.writeBoolean(this.f49290m);
        if (this.f49291n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49291n.booleanValue());
        }
        encoder.writeBoolean(this.f49292o);
        encoder.writeBoolean(this.f49293p);
        encoder.writeBoolean(this.f49294q);
        if (this.f49295r == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49295r.booleanValue());
        }
        if (this.f49296s == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49296s.booleanValue());
        }
        encoder.writeBoolean(this.f49297t);
        encoder.writeBoolean(this.f49298u);
        encoder.writeBoolean(this.f49299v);
        encoder.writeBoolean(this.f49300w);
        encoder.writeBoolean(this.f49301x);
        encoder.writeBoolean(this.f49302y);
        encoder.writeBoolean(this.f49303z);
        encoder.writeBoolean(this.f49275A);
        encoder.writeBoolean(this.f49276B);
        encoder.writeBoolean(this.f49277C);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49278a;
            case 1:
                return this.f49279b;
            case 2:
                return Boolean.valueOf(this.f49280c);
            case 3:
                return Boolean.valueOf(this.f49281d);
            case 4:
                return Boolean.valueOf(this.f49282e);
            case 5:
                return this.f49283f;
            case 6:
                return Boolean.valueOf(this.f49284g);
            case 7:
                return this.f49285h;
            case 8:
                return this.f49286i;
            case 9:
                return this.f49287j;
            case 10:
                return this.f49288k;
            case 11:
                return Boolean.valueOf(this.f49289l);
            case 12:
                return Boolean.valueOf(this.f49290m);
            case 13:
                return this.f49291n;
            case 14:
                return Boolean.valueOf(this.f49292o);
            case 15:
                return Boolean.valueOf(this.f49293p);
            case 16:
                return Boolean.valueOf(this.f49294q);
            case 17:
                return this.f49295r;
            case 18:
                return this.f49296s;
            case 19:
                return Boolean.valueOf(this.f49297t);
            case 20:
                return Boolean.valueOf(this.f49298u);
            case 21:
                return Boolean.valueOf(this.f49299v);
            case 22:
                return Boolean.valueOf(this.f49300w);
            case 23:
                return Boolean.valueOf(this.f49301x);
            case 24:
                return Boolean.valueOf(this.f49302y);
            case 25:
                return Boolean.valueOf(this.f49303z);
            case 26:
                return Boolean.valueOf(this.f49275A);
            case 27:
                return Boolean.valueOf(this.f49276B);
            case 28:
                return Boolean.valueOf(this.f49277C);
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49271D;
    }

    public SpecificData getSpecificData() {
        return f49272E;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49278a = (C17638l3) obj;
                return;
            case 1:
                this.f49279b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49280c = ((Boolean) obj).booleanValue();
                return;
            case 3:
                this.f49281d = ((Boolean) obj).booleanValue();
                return;
            case 4:
                this.f49282e = ((Boolean) obj).booleanValue();
                return;
            case 5:
                this.f49283f = (CharSequence) obj;
                return;
            case 6:
                this.f49284g = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f49285h = (CharSequence) obj;
                return;
            case 8:
                this.f49286i = (AppStandbyBucket) obj;
                return;
            case 9:
                this.f49287j = (CharSequence) obj;
                return;
            case 10:
                this.f49288k = (CharSequence) obj;
                return;
            case 11:
                this.f49289l = ((Boolean) obj).booleanValue();
                return;
            case 12:
                this.f49290m = ((Boolean) obj).booleanValue();
                return;
            case 13:
                this.f49291n = (Boolean) obj;
                return;
            case 14:
                this.f49292o = ((Boolean) obj).booleanValue();
                return;
            case 15:
                this.f49293p = ((Boolean) obj).booleanValue();
                return;
            case 16:
                this.f49294q = ((Boolean) obj).booleanValue();
                return;
            case 17:
                this.f49295r = (Boolean) obj;
                return;
            case 18:
                this.f49296s = (Boolean) obj;
                return;
            case 19:
                this.f49297t = ((Boolean) obj).booleanValue();
                return;
            case 20:
                this.f49298u = ((Boolean) obj).booleanValue();
                return;
            case 21:
                this.f49299v = ((Boolean) obj).booleanValue();
                return;
            case 22:
                this.f49300w = ((Boolean) obj).booleanValue();
                return;
            case 23:
                this.f49301x = ((Boolean) obj).booleanValue();
                return;
            case 24:
                this.f49302y = ((Boolean) obj).booleanValue();
                return;
            case 25:
                this.f49303z = ((Boolean) obj).booleanValue();
                return;
            case 26:
                this.f49275A = ((Boolean) obj).booleanValue();
                return;
            case 27:
                this.f49276B = ((Boolean) obj).booleanValue();
                return;
            case 28:
                this.f49277C = ((Boolean) obj).booleanValue();
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49274K.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49273J.write(this, SpecificData.getEncoder(objectOutput));
    }
}
