package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
import org.apache.avro.generic.GenericData;
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
/* renamed from: e.a.l5.a.k */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/k.class */
public class C17610k extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: A */
    public static final DatumReader<C17610k> f49615A;

    /* renamed from: x */
    public static final Schema f49616x;

    /* renamed from: y */
    public static SpecificData f49617y;

    /* renamed from: z */
    public static final DatumWriter<C17610k> f49618z;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49619a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49620b;
    @Deprecated

    /* renamed from: c */
    public List<CharSequence> f49621c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49622d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49623e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49624f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49625g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49626h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49627i;
    @Deprecated

    /* renamed from: j */
    public long f49628j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f49629k;
    @Deprecated

    /* renamed from: l */
    public double f49630l;
    @Deprecated

    /* renamed from: m */
    public CharSequence f49631m;
    @Deprecated

    /* renamed from: n */
    public CharSequence f49632n;
    @Deprecated

    /* renamed from: o */
    public CharSequence f49633o;
    @Deprecated

    /* renamed from: p */
    public Integer f49634p;
    @Deprecated

    /* renamed from: q */
    public CharSequence f49635q;
    @Deprecated

    /* renamed from: r */
    public Map<CharSequence, CharSequence> f49636r;
    @Deprecated

    /* renamed from: s */
    public Double f49637s;
    @Deprecated

    /* renamed from: t */
    public C17432a f49638t;
    @Deprecated

    /* renamed from: u */
    public List<C17684o3> f49639u;
    @Deprecated

    /* renamed from: v */
    public CharSequence f49640v;
    @Deprecated

    /* renamed from: w */
    public CharSequence f49641w;

    /* renamed from: e.a.l5.a.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/k$b.class */
    public static class C17612b extends SpecificRecordBuilderBase<C17610k> implements RecordBuilder<C17610k> {

        /* renamed from: a */
        public List<CharSequence> f49642a;

        /* renamed from: b */
        public CharSequence f49643b;

        /* renamed from: c */
        public CharSequence f49644c;

        /* renamed from: d */
        public CharSequence f49645d;

        /* renamed from: e */
        public CharSequence f49646e;

        /* renamed from: f */
        public CharSequence f49647f;

        /* renamed from: g */
        public CharSequence f49648g;

        /* renamed from: h */
        public long f49649h;

        /* renamed from: i */
        public CharSequence f49650i;

        /* renamed from: j */
        public double f49651j;

        /* renamed from: k */
        public CharSequence f49652k;

        /* renamed from: l */
        public CharSequence f49653l;

        /* renamed from: m */
        public CharSequence f49654m;

        /* renamed from: n */
        public Integer f49655n;

        /* renamed from: o */
        public CharSequence f49656o;

        /* renamed from: p */
        public Map<CharSequence, CharSequence> f49657p;

        /* renamed from: q */
        public Double f49658q;

        /* renamed from: r */
        public C17432a f49659r;

        /* renamed from: s */
        public List<C17684o3> f49660s;

        public C17612b(C17611a c17611a) {
            super(C17610k.f49616x);
        }

        /* JADX WARN: Type inference failed for: r0v155, types: [double] */
        /* JADX WARN: Type inference failed for: r0v157, types: [double] */
        /* JADX WARN: Type inference failed for: r0v166, types: [long] */
        /* JADX WARN: Type inference failed for: r0v168, types: [long] */
        /* renamed from: a */
        public C17610k build() {
            try {
                C17610k c17610k = new C17610k();
                c17610k.f49619a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17610k.f49620b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17610k.f49621c = fieldSetFlags()[2] ? this.f49642a : (List) defaultValue(fields()[2]);
                c17610k.f49622d = fieldSetFlags()[3] ? this.f49643b : (CharSequence) defaultValue(fields()[3]);
                c17610k.f49623e = fieldSetFlags()[4] ? this.f49644c : (CharSequence) defaultValue(fields()[4]);
                c17610k.f49624f = fieldSetFlags()[5] ? this.f49645d : (CharSequence) defaultValue(fields()[5]);
                c17610k.f49625g = fieldSetFlags()[6] ? this.f49646e : (CharSequence) defaultValue(fields()[6]);
                c17610k.f49626h = fieldSetFlags()[7] ? this.f49647f : (CharSequence) defaultValue(fields()[7]);
                c17610k.f49627i = fieldSetFlags()[8] ? this.f49648g : (CharSequence) defaultValue(fields()[8]);
                c17610k.f49628j = fieldSetFlags()[9] ? this.f49649h : ((Long) defaultValue(fields()[9])).longValue();
                c17610k.f49629k = fieldSetFlags()[10] ? this.f49650i : (CharSequence) defaultValue(fields()[10]);
                c17610k.f49630l = fieldSetFlags()[11] ? this.f49651j : ((Double) defaultValue(fields()[11])).doubleValue();
                c17610k.f49631m = fieldSetFlags()[12] ? this.f49652k : (CharSequence) defaultValue(fields()[12]);
                c17610k.f49632n = fieldSetFlags()[13] ? this.f49653l : (CharSequence) defaultValue(fields()[13]);
                c17610k.f49633o = fieldSetFlags()[14] ? this.f49654m : (CharSequence) defaultValue(fields()[14]);
                c17610k.f49634p = fieldSetFlags()[15] ? this.f49655n : (Integer) defaultValue(fields()[15]);
                c17610k.f49635q = fieldSetFlags()[16] ? this.f49656o : (CharSequence) defaultValue(fields()[16]);
                c17610k.f49636r = fieldSetFlags()[17] ? this.f49657p : (Map) defaultValue(fields()[17]);
                c17610k.f49637s = fieldSetFlags()[18] ? this.f49658q : (Double) defaultValue(fields()[18]);
                c17610k.f49638t = fieldSetFlags()[19] ? this.f49659r : (C17432a) defaultValue(fields()[19]);
                c17610k.f49639u = fieldSetFlags()[20] ? this.f49660s : (List) defaultValue(fields()[20]);
                c17610k.f49640v = fieldSetFlags()[21] ? null : (CharSequence) defaultValue(fields()[21]);
                c17610k.f49641w = fieldSetFlags()[22] ? null : (CharSequence) defaultValue(fields()[22]);
                return c17610k;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppAdRequestInternal\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"adRequestType\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"The type of ads requested from the particular placement\"},{\"name\":\"adResponseType\",\"type\":\"string\",\"doc\":\"The type of the ad being returned from the server - banner, native etc\"},{\"name\":\"connectionInitiated\",\"type\":\"string\",\"doc\":\"The connection type when the ad request was made; eg:- LTE, 4G\"},{\"name\":\"connectionFinished\",\"type\":\"string\",\"doc\":\"The connection type when the response was received form the server; eg:- LTE, 4G\"},{\"name\":\"deviceManufacturer\",\"type\":\"string\"},{\"name\":\"deviceModel\",\"type\":\"string\"},{\"name\":\"partnerName\",\"type\":\"string\",\"doc\":\"The partner network that is providingt the ad\"},{\"name\":\"latency\",\"type\":\"long\",\"doc\":\"Latency from request to response\"},{\"name\":\"publisherName\",\"type\":\"string\",\"doc\":\"The name of the platform where ads are rendered; for internal use cases\\n      * publisher would be Truecaller\"},{\"name\":\"ecpm\",\"type\":\"double\",\"doc\":\"The effective CPM (cost per 1000 impressions) for the ad\"},{\"name\":\"requestId\",\"type\":\"string\",\"doc\":\"Unique id generated for the ad request\"},{\"name\":\"status\",\"type\":\"string\",\"doc\":\"Status of the ad request\"},{\"name\":\"placement\",\"type\":\"string\",\"doc\":\"The placement for which the ad was requested\"},{\"name\":\"errorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"The error code in case of a failure\",\"default\":null},{\"name\":\"errorMessage\",\"type\":[\"null\",\"string\"],\"doc\":\"The error message in case of a failure\",\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Map to handle new values / temp values\",\"default\":null},{\"name\":\"rawEcpm\",\"type\":[\"null\",\"double\"],\"doc\":\"The raw CPM (cost per 1000 impressions) for the ad\",\"default\":null},{\"name\":\"adContext\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"AdContext\",\"fields\":[{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The context for the ad\"},{\"name\":\"id\",\"type\":\"string\",\"doc\":\"The identifier for the ad context\"}]}],\"doc\":\"The call id and context for the ad\",\"default\":null},{\"name\":\"gamMediationInfo\",\"type\":[\"null\",{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"GamMediationInfo\",\"fields\":[{\"name\":\"adapterClassName\",\"type\":[\"null\",\"string\"],\"doc\":\"Mediation adapter class name invoked my ad manager sdk\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"long\"],\"doc\":\"Time taken by mediation adapter for an ad response in milliseconds\",\"default\":null},{\"name\":\"gamErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code recorded by ad manger\",\"default\":null},{\"name\":\"partnerErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code returned by the partner\",\"default\":null}]}}],\"doc\":\"List of mediation partners being invoked for serving an ad by ad manager sdk\",\"default\":null},{\"name\":\"yieldGroupId\",\"type\":[\"null\",\"string\"],\"doc\":\"The yield group id of the ad is being served\",\"default\":null},{\"name\":\"yieldPartnerId\",\"type\":[\"null\",\"string\"],\"doc\":\"The yield partner id of the ad is being served\",\"default\":null}]}");
        f49616x = m8613i0;
        SpecificData specificData = new SpecificData();
        f49617y = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49617y, m8613i0);
        f49618z = f49617y.createDatumWriter(m8613i0);
        f49615A = f49617y.createDatumReader(m8613i0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v225, types: [long] */
    /* JADX WARN: Type inference failed for: r0v233, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v380, types: [long] */
    /* JADX WARN: Type inference failed for: r0v388, types: [long] */
    /* JADX WARN: Type inference failed for: r0v413, types: [long] */
    /* JADX WARN: Type inference failed for: r0v422, types: [long] */
    /* JADX WARN: Type inference failed for: r0v424, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v474, types: [long] */
    /* JADX WARN: Type inference failed for: r0v485, types: [long] */
    /* JADX WARN: Type inference failed for: r0v491, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r1v57, types: [java.util.Map<java.lang.CharSequence, java.lang.CharSequence>] */
    /* JADX WARN: Type inference failed for: r1v76, types: [java.util.List<e.a.l5.a.o3>] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        String str;
        HashMap hashMap;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        String str2 = "adRequestType";
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49619a = null;
            } else {
                if (this.f49619a == null) {
                    this.f49619a = new C17638l3();
                }
                this.f49619a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49620b = null;
            } else {
                if (this.f49620b == null) {
                    this.f49620b = new ClientHeaderV2();
                }
                this.f49620b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49621c = null;
            } else {
                char readArrayStart = resolvingDecoder.readArrayStart();
                List<CharSequence> list = this.f49621c;
                if (list == null) {
                    list = new GenericData.Array<>(readArrayStart, (Schema) C22128a.m8706H1(f49616x, "adRequestType", 1));
                    this.f49621c = list;
                } else {
                    list.clear();
                }
                GenericData.Array array = list instanceof GenericData.Array ? list : null;
                while (0 < readArrayStart) {
                    while (readArrayStart != 0) {
                        Utf8 utf82 = array != null ? (CharSequence) array.peek() : null;
                        readArrayStart = C22128a.m8594n(resolvingDecoder, utf82 instanceof Utf8 ? utf82 : null, list, readArrayStart, 1L);
                    }
                    readArrayStart = resolvingDecoder.arrayNext();
                }
            }
            Utf8 utf83 = this.f49622d;
            this.f49622d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49623e;
            this.f49623e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49624f;
            this.f49624f = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            Utf8 utf86 = this.f49625g;
            this.f49625g = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            Utf8 utf87 = this.f49626h;
            this.f49626h = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            Utf8 utf88 = this.f49627i;
            this.f49627i = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            this.f49628j = resolvingDecoder.readLong();
            Utf8 utf89 = this.f49629k;
            this.f49629k = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
            this.f49630l = resolvingDecoder.readDouble();
            Utf8 utf810 = this.f49631m;
            this.f49631m = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
            Utf8 utf811 = this.f49632n;
            this.f49632n = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
            Utf8 utf812 = this.f49633o;
            this.f49633o = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49634p = null;
            } else {
                this.f49634p = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49635q = null;
            } else {
                Utf8 utf813 = this.f49635q;
                this.f49635q = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49636r = null;
            } else {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f49636r;
                if (map == null) {
                    HashMap hashMap3 = new HashMap(readMapStart);
                    this.f49636r = hashMap3;
                    hashMap2 = hashMap3;
                } else {
                    map.clear();
                    hashMap2 = map;
                }
                while (0 < readMapStart) {
                    while (readMapStart != 0) {
                        readMapStart = C22128a.m8550y(resolvingDecoder, null, hashMap2, resolvingDecoder.readString((Utf8) null), readMapStart, 1L);
                    }
                    readMapStart = resolvingDecoder.mapNext();
                }
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49637s = null;
            } else {
                this.f49637s = Double.valueOf(resolvingDecoder.readDouble());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49638t = null;
            } else {
                if (this.f49638t == null) {
                    this.f49638t = new C17432a();
                }
                this.f49638t.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49639u = null;
            } else {
                char readArrayStart2 = resolvingDecoder.readArrayStart();
                List<C17684o3> list2 = this.f49639u;
                if (list2 == null) {
                    list2 = new GenericData.Array<>(readArrayStart2, (Schema) C22128a.m8706H1(f49616x, "gamMediationInfo", 1));
                    this.f49639u = list2;
                } else {
                    list2.clear();
                }
                GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                while (0 < readArrayStart2) {
                    while (readArrayStart2 != 0) {
                        C17684o3 c17684o3 = array2 != null ? (C17684o3) array2.peek() : null;
                        C17684o3 c17684o32 = c17684o3;
                        if (c17684o3 == null) {
                            c17684o32 = new C17684o3();
                        }
                        c17684o32.customDecode(resolvingDecoder);
                        list2.add(c17684o32);
                        readArrayStart2--;
                    }
                    readArrayStart2 = resolvingDecoder.arrayNext();
                }
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49640v = null;
            } else {
                Utf8 utf814 = this.f49640v;
                this.f49640v = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49641w = null;
                return;
            }
            Utf8 utf815 = this.f49641w;
            Utf8 utf816 = null;
            if (utf815 instanceof Utf8) {
                utf816 = utf815;
            }
            this.f49641w = resolvingDecoder.readString(utf816);
            return;
        }
        for (int i = 0; i < 23; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49619a = null;
                        break;
                    } else {
                        if (this.f49619a == null) {
                            this.f49619a = new C17638l3();
                        }
                        this.f49619a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49620b = null;
                        break;
                    } else {
                        if (this.f49620b == null) {
                            this.f49620b = new ClientHeaderV2();
                        }
                        this.f49620b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    String str3 = str2;
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49621c = null;
                        str2 = str3;
                        break;
                    } else {
                        char readArrayStart3 = resolvingDecoder.readArrayStart();
                        List<CharSequence> list3 = this.f49621c;
                        if (list3 == null) {
                            list3 = new GenericData.Array<>(readArrayStart3, (Schema) C22128a.m8706H1(f49616x, str3, 1));
                            this.f49621c = list3;
                        } else {
                            list3.clear();
                        }
                        GenericData.Array array3 = list3 instanceof GenericData.Array ? list3 : null;
                        while (true) {
                            str2 = str3;
                            if (0 >= readArrayStart3) {
                                break;
                            } else {
                                while (readArrayStart3 != 0) {
                                    Utf8 utf817 = array3 != null ? (CharSequence) array3.peek() : null;
                                    readArrayStart3 = C22128a.m8594n(resolvingDecoder, utf817 instanceof Utf8 ? utf817 : null, list3, readArrayStart3, 1L);
                                }
                                readArrayStart3 = resolvingDecoder.arrayNext();
                            }
                        }
                    }
                case 3:
                    Utf8 utf818 = this.f49622d;
                    this.f49622d = resolvingDecoder.readString(utf818 instanceof Utf8 ? utf818 : null);
                    break;
                case 4:
                    Utf8 utf819 = this.f49623e;
                    this.f49623e = resolvingDecoder.readString(utf819 instanceof Utf8 ? utf819 : null);
                    break;
                case 5:
                    Utf8 utf820 = this.f49624f;
                    this.f49624f = resolvingDecoder.readString(utf820 instanceof Utf8 ? utf820 : null);
                    break;
                case 6:
                    Utf8 utf821 = this.f49625g;
                    this.f49625g = resolvingDecoder.readString(utf821 instanceof Utf8 ? utf821 : null);
                    break;
                case 7:
                    Utf8 utf822 = this.f49626h;
                    this.f49626h = resolvingDecoder.readString(utf822 instanceof Utf8 ? utf822 : null);
                    break;
                case 8:
                    Utf8 utf823 = this.f49627i;
                    this.f49627i = resolvingDecoder.readString(utf823 instanceof Utf8 ? utf823 : null);
                    break;
                case 9:
                    this.f49628j = resolvingDecoder.readLong();
                    break;
                case 10:
                    Utf8 utf824 = this.f49629k;
                    this.f49629k = resolvingDecoder.readString(utf824 instanceof Utf8 ? utf824 : null);
                    break;
                case 11:
                    this.f49630l = resolvingDecoder.readDouble();
                    break;
                case 12:
                    Utf8 utf825 = this.f49631m;
                    this.f49631m = resolvingDecoder.readString(utf825 instanceof Utf8 ? utf825 : null);
                    break;
                case 13:
                    Utf8 utf826 = this.f49632n;
                    this.f49632n = resolvingDecoder.readString(utf826 instanceof Utf8 ? utf826 : null);
                    break;
                case 14:
                    Utf8 utf827 = this.f49633o;
                    this.f49633o = resolvingDecoder.readString(utf827 instanceof Utf8 ? utf827 : null);
                    break;
                case 15:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49634p = null;
                        break;
                    } else {
                        this.f49634p = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 16:
                    if (resolvingDecoder.readIndex() == 1) {
                        Utf8 utf828 = this.f49635q;
                        this.f49635q = resolvingDecoder.readString(utf828 instanceof Utf8 ? utf828 : null);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49635q = utf8;
                        continue;
                    }
                case 17:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49636r = utf8;
                        str = str2;
                    } else {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49636r;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49636r = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        while (true) {
                            str = str2;
                            if (0 < readMapStart2) {
                                while (readMapStart2 != 0) {
                                    readMapStart2 = C22128a.m8550y(resolvingDecoder, null, hashMap, resolvingDecoder.readString((Utf8) null), readMapStart2, 1L);
                                }
                                readMapStart2 = resolvingDecoder.mapNext();
                            }
                        }
                    }
                    str2 = str;
                    break;
                case 18:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49637s = null;
                        str = str2;
                    } else {
                        this.f49637s = Double.valueOf(resolvingDecoder.readDouble());
                        str = str2;
                    }
                    str2 = str;
                    break;
                case 19:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49638t = null;
                        str = str2;
                    } else {
                        if (this.f49638t == null) {
                            this.f49638t = new C17432a();
                        }
                        this.f49638t.customDecode(resolvingDecoder);
                        str = str2;
                    }
                    str2 = str;
                    break;
                case 20:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49639u = utf8;
                        str = str2;
                    } else {
                        char readArrayStart4 = resolvingDecoder.readArrayStart();
                        List<C17684o3> list4 = this.f49639u;
                        if (list4 == null) {
                            list4 = new GenericData.Array<>(readArrayStart4, (Schema) C22128a.m8706H1(f49616x, "gamMediationInfo", 1));
                            this.f49639u = list4;
                        } else {
                            list4.clear();
                        }
                        GenericData.Array array4 = list4 instanceof GenericData.Array ? list4 : null;
                        while (true) {
                            str = str2;
                            if (0 < readArrayStart4) {
                                while (readArrayStart4 != 0) {
                                    C17684o3 c17684o33 = array4 != null ? (C17684o3) array4.peek() : null;
                                    C17684o3 c17684o34 = c17684o33;
                                    if (c17684o33 == null) {
                                        c17684o34 = new C17684o3();
                                    }
                                    c17684o34.customDecode(resolvingDecoder);
                                    list4.add(c17684o34);
                                    readArrayStart4--;
                                }
                                readArrayStart4 = resolvingDecoder.arrayNext();
                            }
                        }
                    }
                    str2 = str;
                    break;
                case 21:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49640v = utf8;
                        str = str2;
                    } else {
                        Utf8 utf829 = this.f49640v;
                        if (utf829 instanceof Utf8) {
                            utf8 = utf829;
                        }
                        this.f49640v = resolvingDecoder.readString(utf8);
                        str = str2;
                    }
                    str2 = str;
                    break;
                case 22:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49641w = utf8;
                        str = str2;
                    } else {
                        CharSequence charSequence = this.f49641w;
                        if (charSequence instanceof Utf8) {
                            utf8 = (Utf8) charSequence;
                        }
                        this.f49641w = resolvingDecoder.readString(utf8);
                        str = str2;
                    }
                    str2 = str;
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
            utf8 = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49619a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49619a.customEncode(encoder);
        }
        if (this.f49620b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49620b.customEncode(encoder);
        }
        if (this.f49621c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f49621c.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size);
            char c = 0;
            for (CharSequence charSequence : this.f49621c) {
                c++;
                encoder.startItem();
                encoder.writeString(charSequence);
            }
            encoder.writeArrayEnd();
            if (c != size) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
            }
        }
        encoder.writeString(this.f49622d);
        encoder.writeString(this.f49623e);
        encoder.writeString(this.f49624f);
        encoder.writeString(this.f49625g);
        encoder.writeString(this.f49626h);
        encoder.writeString(this.f49627i);
        encoder.writeLong(this.f49628j);
        encoder.writeString(this.f49629k);
        encoder.writeDouble(this.f49630l);
        encoder.writeString(this.f49631m);
        encoder.writeString(this.f49632n);
        encoder.writeString(this.f49633o);
        if (this.f49634p == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49634p.intValue());
        }
        if (this.f49635q == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49635q);
        }
        if (this.f49636r == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size2 = this.f49636r.size();
            encoder.writeMapStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f49636r.entrySet()) {
                c2++;
                encoder.startItem();
                encoder.writeString(entry.getKey());
                encoder.writeString(entry.getValue());
            }
            encoder.writeMapEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
        }
        if (this.f49637s == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeDouble(this.f49637s.doubleValue());
        }
        if (this.f49638t == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17432a c17432a = this.f49638t;
            encoder.writeString(c17432a.f48816a);
            encoder.writeString(c17432a.f48817b);
        }
        if (this.f49639u == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size3 = this.f49639u.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size3);
            char c3 = 0;
            for (C17684o3 c17684o3 : this.f49639u) {
                c3++;
                encoder.startItem();
                c17684o3.customEncode(encoder);
            }
            encoder.writeArrayEnd();
            if (c3 != size3) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size3, ", but element count was "), c3, StringConstant.DOT));
            }
        }
        if (this.f49640v == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49640v);
        }
        if (this.f49641w == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49641w);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49619a;
            case 1:
                return this.f49620b;
            case 2:
                return this.f49621c;
            case 3:
                return this.f49622d;
            case 4:
                return this.f49623e;
            case 5:
                return this.f49624f;
            case 6:
                return this.f49625g;
            case 7:
                return this.f49626h;
            case 8:
                return this.f49627i;
            case 9:
                return Long.valueOf(this.f49628j);
            case 10:
                return this.f49629k;
            case 11:
                return Double.valueOf(this.f49630l);
            case 12:
                return this.f49631m;
            case 13:
                return this.f49632n;
            case 14:
                return this.f49633o;
            case 15:
                return this.f49634p;
            case 16:
                return this.f49635q;
            case 17:
                return this.f49636r;
            case 18:
                return this.f49637s;
            case 19:
                return this.f49638t;
            case 20:
                return this.f49639u;
            case 21:
                return this.f49640v;
            case 22:
                return this.f49641w;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49616x;
    }

    public SpecificData getSpecificData() {
        return f49617y;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49619a = (C17638l3) obj;
                return;
            case 1:
                this.f49620b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49621c = (List) obj;
                return;
            case 3:
                this.f49622d = (CharSequence) obj;
                return;
            case 4:
                this.f49623e = (CharSequence) obj;
                return;
            case 5:
                this.f49624f = (CharSequence) obj;
                return;
            case 6:
                this.f49625g = (CharSequence) obj;
                return;
            case 7:
                this.f49626h = (CharSequence) obj;
                return;
            case 8:
                this.f49627i = (CharSequence) obj;
                return;
            case 9:
                this.f49628j = ((Long) obj).longValue();
                return;
            case 10:
                this.f49629k = (CharSequence) obj;
                return;
            case 11:
                this.f49630l = ((Double) obj).doubleValue();
                return;
            case 12:
                this.f49631m = (CharSequence) obj;
                return;
            case 13:
                this.f49632n = (CharSequence) obj;
                return;
            case 14:
                this.f49633o = (CharSequence) obj;
                return;
            case 15:
                this.f49634p = (Integer) obj;
                return;
            case 16:
                this.f49635q = (CharSequence) obj;
                return;
            case 17:
                this.f49636r = (Map) obj;
                return;
            case 18:
                this.f49637s = (Double) obj;
                return;
            case 19:
                this.f49638t = (C17432a) obj;
                return;
            case 20:
                this.f49639u = (List) obj;
                return;
            case 21:
                this.f49640v = (CharSequence) obj;
                return;
            case 22:
                this.f49641w = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49615A.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49618z.write(this, SpecificData.getEncoder(objectOutput));
    }
}
