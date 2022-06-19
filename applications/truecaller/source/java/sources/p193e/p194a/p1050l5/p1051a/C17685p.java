package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Map;
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
/* renamed from: e.a.l5.a.p */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/p.class */
public class C17685p extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: q */
    public static final Schema f49979q;

    /* renamed from: r */
    public static SpecificData f49980r;

    /* renamed from: s */
    public static final DatumWriter<C17685p> f49981s;

    /* renamed from: t */
    public static final DatumReader<C17685p> f49982t;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49983a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49984b;
    @Deprecated

    /* renamed from: c */
    public C17639l4 f49985c;
    @Deprecated

    /* renamed from: d */
    public C17604j3 f49986d;
    @Deprecated

    /* renamed from: e */
    public Long f49987e;
    @Deprecated

    /* renamed from: f */
    public Long f49988f;
    @Deprecated

    /* renamed from: g */
    public Integer f49989g;
    @Deprecated

    /* renamed from: h */
    public Long f49990h;
    @Deprecated

    /* renamed from: i */
    public C17481c4 f49991i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f49992j;
    @Deprecated

    /* renamed from: k */
    public Integer f49993k;
    @Deprecated

    /* renamed from: l */
    public CharSequence f49994l;
    @Deprecated

    /* renamed from: m */
    public Integer f49995m;
    @Deprecated

    /* renamed from: n */
    public Boolean f49996n;
    @Deprecated

    /* renamed from: o */
    public Map<CharSequence, CharSequence> f49997o;
    @Deprecated

    /* renamed from: p */
    public CharSequence f49998p;

    /* renamed from: e.a.l5.a.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/p$b.class */
    public static class C17687b extends SpecificRecordBuilderBase<C17685p> implements RecordBuilder<C17685p> {

        /* renamed from: a */
        public C17639l4 f49999a;

        /* renamed from: b */
        public C17604j3 f50000b;

        /* renamed from: c */
        public Long f50001c;

        /* renamed from: d */
        public Long f50002d;

        /* renamed from: e */
        public Integer f50003e;

        /* renamed from: f */
        public Long f50004f;

        /* renamed from: g */
        public C17481c4 f50005g;

        /* renamed from: h */
        public CharSequence f50006h;

        /* renamed from: i */
        public Integer f50007i;

        /* renamed from: j */
        public Boolean f50008j;

        /* renamed from: k */
        public Map<CharSequence, CharSequence> f50009k;

        /* renamed from: l */
        public CharSequence f50010l;

        public C17687b(C17686a c17686a) {
            super(C17685p.f49979q);
        }

        /* renamed from: a */
        public C17685p build() {
            try {
                C17685p c17685p = new C17685p();
                c17685p.f49983a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17685p.f49984b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17685p.f49985c = fieldSetFlags()[2] ? this.f49999a : (C17639l4) defaultValue(fields()[2]);
                c17685p.f49986d = fieldSetFlags()[3] ? this.f50000b : (C17604j3) defaultValue(fields()[3]);
                c17685p.f49987e = fieldSetFlags()[4] ? this.f50001c : (Long) defaultValue(fields()[4]);
                c17685p.f49988f = fieldSetFlags()[5] ? this.f50002d : (Long) defaultValue(fields()[5]);
                c17685p.f49989g = fieldSetFlags()[6] ? this.f50003e : (Integer) defaultValue(fields()[6]);
                c17685p.f49990h = fieldSetFlags()[7] ? this.f50004f : (Long) defaultValue(fields()[7]);
                c17685p.f49991i = fieldSetFlags()[8] ? this.f50005g : (C17481c4) defaultValue(fields()[8]);
                c17685p.f49992j = fieldSetFlags()[9] ? this.f50006h : (CharSequence) defaultValue(fields()[9]);
                c17685p.f49993k = fieldSetFlags()[10] ? this.f50007i : (Integer) defaultValue(fields()[10]);
                c17685p.f49994l = fieldSetFlags()[11] ? null : (CharSequence) defaultValue(fields()[11]);
                c17685p.f49995m = fieldSetFlags()[12] ? null : (Integer) defaultValue(fields()[12]);
                c17685p.f49996n = fieldSetFlags()[13] ? this.f50008j : (Boolean) defaultValue(fields()[13]);
                c17685p.f49997o = fieldSetFlags()[14] ? this.f50009k : (Map) defaultValue(fields()[14]);
                c17685p.f49998p = fieldSetFlags()[15] ? this.f50010l : (CharSequence) defaultValue(fields()[15]);
                return c17685p;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17687b m15863b(C17604j3 c17604j3) {
            validate(fields()[3], c17604j3);
            this.f50000b = c17604j3;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: c */
        public C17687b m15862c(CharSequence charSequence) {
            validate(fields()[15], charSequence);
            this.f50010l = charSequence;
            fieldSetFlags()[15] = true;
            return this;
        }

        /* renamed from: d */
        public C17687b m15861d(Long l) {
            validate(fields()[4], l);
            this.f50001c = l;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: e */
        public C17687b m15860e(Map<CharSequence, CharSequence> map) {
            validate(fields()[14], map);
            this.f50009k = map;
            fieldSetFlags()[14] = true;
            return this;
        }

        /* renamed from: f */
        public C17687b m15859f(Boolean bool) {
            validate(fields()[13], bool);
            this.f50008j = bool;
            fieldSetFlags()[13] = true;
            return this;
        }

        /* renamed from: g */
        public C17687b m15858g(C17481c4 c17481c4) {
            validate(fields()[8], c17481c4);
            this.f50005g = c17481c4;
            fieldSetFlags()[8] = true;
            return this;
        }

        /* renamed from: h */
        public C17687b m15857h(CharSequence charSequence) {
            validate(fields()[9], charSequence);
            this.f50006h = charSequence;
            fieldSetFlags()[9] = true;
            return this;
        }

        /* renamed from: i */
        public C17687b m15856i(C17639l4 c17639l4) {
            validate(fields()[2], c17639l4);
            this.f49999a = c17639l4;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBusinessVideoCallerIdImpression\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoProperties\",\"type\":{\"type\":\"record\",\"name\":\"VideoProperties\",\"doc\":\"Track video properties\",\"fields\":[{\"name\":\"URL\",\"type\":\"string\",\"doc\":\"Video url\"},{\"name\":\"videoSize\",\"type\":[\"null\",\"long\"],\"doc\":\"Video size in bytes\",\"default\":null},{\"name\":\"referenceId\",\"type\":[\"null\",\"string\"],\"doc\":\"Optional (if we want to have any id as reference point for the video in future)\",\"default\":null},{\"name\":\"otherProperties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Placeholder for future (to hold other properties of video)\",\"default\":null}]},\"doc\":\"Properties of video\"},{\"name\":\"businessDetails\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"BusinessDetails\",\"doc\":\"Track business details\",\"fields\":[{\"name\":\"businessCountryCode\",\"type\":[\"null\",\"string\"],\"doc\":\"Country code of business\",\"default\":null},{\"name\":\"businessNumber\",\"type\":[\"null\",\"string\"],\"doc\":\"Business phone number\",\"default\":null},{\"name\":\"partnerAccountIid\",\"type\":\"string\",\"doc\":\"partner account id of the partner\"},{\"name\":\"displayName\",\"type\":[\"null\",\"string\"],\"doc\":\"name displayed for the context\",\"default\":null},{\"name\":\"badge\",\"type\":[\"null\",\"string\"],\"doc\":\"badge displayed\",\"default\":null},{\"name\":\"callReason\",\"type\":[\"null\",\"string\"],\"doc\":\"call reason text shown\",\"default\":null},{\"name\":\"spamScoreShown\",\"type\":[\"null\",\"int\"],\"doc\":\"spam score (if displayed)\",\"default\":null}]}],\"doc\":\"Details of business (country code, phone number and partner account id\",\"default\":null},{\"name\":\"downloadStartTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp of video download start\",\"default\":null},{\"name\":\"downloadEndTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp of video download finish\",\"default\":null},{\"name\":\"duration\",\"type\":[\"null\",\"int\"],\"doc\":\"Video playback duration\",\"default\":null},{\"name\":\"failureTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp retry failed\",\"default\":null},{\"name\":\"retryDetails\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"RetryDetails\",\"doc\":\"Track retry details\",\"fields\":[{\"name\":\"retryCount\",\"type\":\"int\",\"doc\":\"Count of the number of retries\"},{\"name\":\"retrySequence\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"RetryEntry\",\"doc\":\"Track each retry entry\",\"fields\":[{\"name\":\"retryStartTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry started\"},{\"name\":\"retryFinishTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry finished\"},{\"name\":\"retryFailureTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of  retry failed\"},{\"name\":\"retryDuration\",\"type\":\"int\",\"doc\":\"Duration of retry\"}]}},\"doc\":\"Sequence of retries\"}]}],\"doc\":\"Retry information for video\",\"default\":null},{\"name\":\"status\",\"type\":[\"null\",\"string\"],\"doc\":\"Status of the video caller id (success / failure /unknown)\",\"default\":null},{\"name\":\"errorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code for failed attempt\",\"default\":null},{\"name\":\"errorMessage\",\"type\":[\"null\",\"string\"],\"doc\":\"Error message for failed attempt\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"int\"],\"doc\":\"Video latency\",\"default\":null},{\"name\":\"resultFromCache\",\"type\":[\"null\",\"boolean\"],\"doc\":\"To track if a video was obtained from cache or not\",\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Reserved space for future\",\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Context of video call id\",\"default\":null}]}");
        f49979q = m8613i0;
        SpecificData specificData = new SpecificData();
        f49980r = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49980r, m8613i0);
        f49981s = f49980r.createDatumWriter(m8613i0);
        f49982t = f49980r.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17687b m15865a() {
        return new C17687b(null);
    }

    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v197, types: [long] */
    /* JADX WARN: Type inference failed for: r0v199, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        Utf8 utf8;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49983a = null;
            } else {
                if (this.f49983a == null) {
                    this.f49983a = new C17638l3();
                }
                this.f49983a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49984b = null;
            } else {
                if (this.f49984b == null) {
                    this.f49984b = new ClientHeaderV2();
                }
                this.f49984b.customDecode(resolvingDecoder);
            }
            if (this.f49985c == null) {
                this.f49985c = new C17639l4();
            }
            this.f49985c.customDecode(resolvingDecoder);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49986d = null;
            } else {
                if (this.f49986d == null) {
                    this.f49986d = new C17604j3();
                }
                this.f49986d.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49987e = null;
            } else {
                this.f49987e = Long.valueOf(resolvingDecoder.readLong());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49988f = null;
            } else {
                this.f49988f = Long.valueOf(resolvingDecoder.readLong());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49989g = null;
            } else {
                this.f49989g = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49990h = null;
            } else {
                this.f49990h = Long.valueOf(resolvingDecoder.readLong());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49991i = null;
            } else {
                if (this.f49991i == null) {
                    this.f49991i = new C17481c4();
                }
                this.f49991i.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49992j = null;
            } else {
                Utf8 utf82 = this.f49992j;
                this.f49992j = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49993k = null;
            } else {
                this.f49993k = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49994l = null;
            } else {
                Utf8 utf83 = this.f49994l;
                this.f49994l = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49995m = null;
            } else {
                this.f49995m = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49996n = null;
            } else {
                this.f49996n = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() == 1) {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f49997o;
                if (map == null) {
                    HashMap hashMap3 = new HashMap(readMapStart);
                    this.f49997o = hashMap3;
                    hashMap2 = hashMap3;
                } else {
                    map.clear();
                    hashMap2 = map;
                }
                while (true) {
                    utf8 = null;
                    if (0 >= readMapStart) {
                        break;
                    }
                    while (readMapStart != 0) {
                        readMapStart = C22128a.m8550y(resolvingDecoder, null, hashMap2, resolvingDecoder.readString((Utf8) null), readMapStart, 1L);
                    }
                    readMapStart = resolvingDecoder.mapNext();
                }
            } else {
                resolvingDecoder.readNull();
                this.f49997o = null;
                utf8 = null;
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49998p = utf8;
                return;
            }
            Utf8 utf84 = this.f49998p;
            if (utf84 instanceof Utf8) {
                utf8 = utf84;
            }
            this.f49998p = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 16; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49983a = null;
                        break;
                    } else {
                        if (this.f49983a == null) {
                            this.f49983a = new C17638l3();
                        }
                        this.f49983a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49984b = null;
                        break;
                    } else {
                        if (this.f49984b == null) {
                            this.f49984b = new ClientHeaderV2();
                        }
                        this.f49984b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    if (this.f49985c == null) {
                        this.f49985c = new C17639l4();
                    }
                    this.f49985c.customDecode(resolvingDecoder);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49986d = null;
                        break;
                    } else {
                        if (this.f49986d == null) {
                            this.f49986d = new C17604j3();
                        }
                        this.f49986d.customDecode(resolvingDecoder);
                        break;
                    }
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49987e = null;
                        break;
                    } else {
                        this.f49987e = Long.valueOf(resolvingDecoder.readLong());
                        break;
                    }
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49988f = null;
                        break;
                    } else {
                        this.f49988f = Long.valueOf(resolvingDecoder.readLong());
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49989g = null;
                        break;
                    } else {
                        this.f49989g = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49990h = null;
                        break;
                    } else {
                        this.f49990h = Long.valueOf(resolvingDecoder.readLong());
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49991i = null;
                        break;
                    } else {
                        if (this.f49991i == null) {
                            this.f49991i = new C17481c4();
                        }
                        this.f49991i.customDecode(resolvingDecoder);
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49992j = null;
                        break;
                    } else {
                        Utf8 utf85 = this.f49992j;
                        this.f49992j = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                        break;
                    }
                case 10:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49993k = null;
                        break;
                    } else {
                        this.f49993k = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 11:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49994l = null;
                        break;
                    } else {
                        Utf8 utf86 = this.f49994l;
                        this.f49994l = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                        break;
                    }
                case 12:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49995m = null;
                        break;
                    } else {
                        this.f49995m = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49996n = null;
                        break;
                    } else {
                        this.f49996n = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 14:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49997o = null;
                        break;
                    } else {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49997o;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49997o = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        while (0 < readMapStart2) {
                            while (readMapStart2 != 0) {
                                readMapStart2 = C22128a.m8550y(resolvingDecoder, null, hashMap, resolvingDecoder.readString((Utf8) null), readMapStart2, 1L);
                            }
                            readMapStart2 = resolvingDecoder.mapNext();
                        }
                        break;
                    }
                case 15:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49998p = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49998p;
                        this.f49998p = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49983a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49983a.customEncode(encoder);
        }
        if (this.f49984b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49984b.customEncode(encoder);
        }
        this.f49985c.customEncode(encoder);
        if (this.f49986d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49986d.customEncode(encoder);
        }
        if (this.f49987e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeLong(this.f49987e.longValue());
        }
        if (this.f49988f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeLong(this.f49988f.longValue());
        }
        if (this.f49989g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49989g.intValue());
        }
        if (this.f49990h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeLong(this.f49990h.longValue());
        }
        if (this.f49991i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49991i.customEncode(encoder);
        }
        if (this.f49992j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49992j);
        }
        if (this.f49993k == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49993k.intValue());
        }
        if (this.f49994l == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49994l);
        }
        if (this.f49995m == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49995m.intValue());
        }
        if (this.f49996n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49996n.booleanValue());
        }
        if (this.f49997o == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f49997o.size();
            encoder.writeMapStart();
            encoder.setItemCount(size);
            char c = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f49997o.entrySet()) {
                c++;
                encoder.startItem();
                encoder.writeString(entry.getKey());
                encoder.writeString(entry.getValue());
            }
            encoder.writeMapEnd();
            if (c != size) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size, ", but element count was "), c, StringConstant.DOT));
            }
        }
        if (this.f49998p == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49998p);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49983a;
            case 1:
                return this.f49984b;
            case 2:
                return this.f49985c;
            case 3:
                return this.f49986d;
            case 4:
                return this.f49987e;
            case 5:
                return this.f49988f;
            case 6:
                return this.f49989g;
            case 7:
                return this.f49990h;
            case 8:
                return this.f49991i;
            case 9:
                return this.f49992j;
            case 10:
                return this.f49993k;
            case 11:
                return this.f49994l;
            case 12:
                return this.f49995m;
            case 13:
                return this.f49996n;
            case 14:
                return this.f49997o;
            case 15:
                return this.f49998p;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49979q;
    }

    public SpecificData getSpecificData() {
        return f49980r;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49983a = (C17638l3) obj;
                return;
            case 1:
                this.f49984b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49985c = (C17639l4) obj;
                return;
            case 3:
                this.f49986d = (C17604j3) obj;
                return;
            case 4:
                this.f49987e = (Long) obj;
                return;
            case 5:
                this.f49988f = (Long) obj;
                return;
            case 6:
                this.f49989g = (Integer) obj;
                return;
            case 7:
                this.f49990h = (Long) obj;
                return;
            case 8:
                this.f49991i = (C17481c4) obj;
                return;
            case 9:
                this.f49992j = (CharSequence) obj;
                return;
            case 10:
                this.f49993k = (Integer) obj;
                return;
            case 11:
                this.f49994l = (CharSequence) obj;
                return;
            case 12:
                this.f49995m = (Integer) obj;
                return;
            case 13:
                this.f49996n = (Boolean) obj;
                return;
            case 14:
                this.f49997o = (Map) obj;
                return;
            case 15:
                this.f49998p = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49982t.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49981s.write(this, SpecificData.getEncoder(objectOutput));
    }
}
