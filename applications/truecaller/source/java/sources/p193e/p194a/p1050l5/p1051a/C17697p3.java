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
/* renamed from: e.a.l5.a.p3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/p3.class */
public class C17697p3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50059g;

    /* renamed from: h */
    public static SpecificData f50060h;

    /* renamed from: i */
    public static final DatumWriter<C17697p3> f50061i;

    /* renamed from: j */
    public static final DatumReader<C17697p3> f50062j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50063a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50064b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50065c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50066d;
    @Deprecated

    /* renamed from: e */
    public Map<CharSequence, CharSequence> f50067e;
    @Deprecated

    /* renamed from: f */
    public Map<CharSequence, Double> f50068f;

    /* renamed from: e.a.l5.a.p3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/p3$b.class */
    public static class C17699b extends SpecificRecordBuilderBase<C17697p3> implements RecordBuilder<C17697p3> {

        /* renamed from: a */
        public CharSequence f50069a;

        /* renamed from: b */
        public CharSequence f50070b;

        /* renamed from: c */
        public Map<CharSequence, CharSequence> f50071c;

        /* renamed from: d */
        public Map<CharSequence, Double> f50072d;

        public C17699b(C17698a c17698a) {
            super(C17697p3.f50059g);
        }

        /* renamed from: a */
        public C17697p3 build() {
            try {
                C17697p3 c17697p3 = new C17697p3();
                c17697p3.f50063a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17697p3.f50064b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17697p3.f50065c = fieldSetFlags()[2] ? this.f50069a : (CharSequence) defaultValue(fields()[2]);
                c17697p3.f50066d = fieldSetFlags()[3] ? this.f50070b : (CharSequence) defaultValue(fields()[3]);
                c17697p3.f50067e = fieldSetFlags()[4] ? this.f50071c : (Map) defaultValue(fields()[4]);
                c17697p3.f50068f = fieldSetFlags()[5] ? this.f50072d : (Map) defaultValue(fields()[5]);
                return c17697p3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17699b m15850b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50069a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17699b m15849c(Map<CharSequence, Double> map) {
            validate(fields()[5], map);
            this.f50072d = map;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: d */
        public C17699b m15848d(Map<CharSequence, CharSequence> map) {
            validate(fields()[4], map);
            this.f50071c = map;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: e */
        public C17699b m15847e(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f50070b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"GenericAnalyticsEvent\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"eventType\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"default\":null},{\"name\":\"measures\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"double\"}],\"default\":null}]}");
        f50059g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50060h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50060h, m8613i0);
        f50061i = f50060h.createDatumWriter(m8613i0);
        f50062j = f50060h.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17699b m15852a() {
        return new C17699b(null);
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        HashMap hashMap2;
        Utf8 utf8;
        HashMap hashMap3;
        HashMap hashMap4;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50063a = null;
            } else {
                if (this.f50063a == null) {
                    this.f50063a = new C17638l3();
                }
                this.f50063a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50064b = null;
            } else {
                if (this.f50064b == null) {
                    this.f50064b = new ClientHeaderV2();
                }
                this.f50064b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f50065c;
            this.f50065c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50066d = null;
            } else {
                Utf8 utf83 = this.f50066d;
                this.f50066d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f50067e;
                if (map == null) {
                    HashMap hashMap5 = new HashMap(readMapStart);
                    this.f50067e = hashMap5;
                    hashMap4 = hashMap5;
                } else {
                    map.clear();
                    hashMap4 = map;
                }
                while (true) {
                    utf8 = null;
                    if (0 >= readMapStart) {
                        break;
                    }
                    while (readMapStart != 0) {
                        readMapStart = C22128a.m8550y(resolvingDecoder, null, hashMap4, resolvingDecoder.readString((Utf8) null), readMapStart, 1L);
                    }
                    readMapStart = resolvingDecoder.mapNext();
                }
            } else {
                resolvingDecoder.readNull();
                this.f50067e = null;
                utf8 = null;
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50068f = utf8;
                return;
            }
            char readMapStart2 = resolvingDecoder.readMapStart();
            Map<CharSequence, Double> map2 = this.f50068f;
            if (map2 == null) {
                HashMap hashMap6 = new HashMap(readMapStart2);
                this.f50068f = hashMap6;
                hashMap3 = hashMap6;
            } else {
                map2.clear();
                hashMap3 = map2;
            }
            while (0 < readMapStart2) {
                while (readMapStart2 != 0) {
                    hashMap3.put(resolvingDecoder.readString(utf8), Double.valueOf(resolvingDecoder.readDouble()));
                    readMapStart2--;
                }
                readMapStart2 = resolvingDecoder.mapNext();
            }
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f50065c;
                        this.f50065c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        if (pos != 4) {
                            if (pos != 5) {
                                throw new IOException("Corrupt ResolvingDecoder.");
                            }
                            if (resolvingDecoder.readIndex() != 1) {
                                resolvingDecoder.readNull();
                                this.f50068f = null;
                            } else {
                                char readMapStart3 = resolvingDecoder.readMapStart();
                                Map<CharSequence, Double> map3 = this.f50068f;
                                if (map3 == null) {
                                    HashMap hashMap7 = new HashMap(readMapStart3);
                                    this.f50068f = hashMap7;
                                    hashMap2 = hashMap7;
                                } else {
                                    map3.clear();
                                    hashMap2 = map3;
                                }
                                while (0 < readMapStart3) {
                                    while (readMapStart3 != 0) {
                                        hashMap2.put(resolvingDecoder.readString((Utf8) null), Double.valueOf(resolvingDecoder.readDouble()));
                                        readMapStart3--;
                                    }
                                    readMapStart3 = resolvingDecoder.mapNext();
                                }
                            }
                        } else if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50067e = null;
                        } else {
                            char readMapStart4 = resolvingDecoder.readMapStart();
                            Map<CharSequence, CharSequence> map4 = this.f50067e;
                            if (map4 == null) {
                                HashMap hashMap8 = new HashMap(readMapStart4);
                                this.f50067e = hashMap8;
                                hashMap = hashMap8;
                            } else {
                                map4.clear();
                                hashMap = map4;
                            }
                            while (0 < readMapStart4) {
                                while (readMapStart4 != 0) {
                                    readMapStart4 = C22128a.m8550y(resolvingDecoder, null, hashMap, resolvingDecoder.readString((Utf8) null), readMapStart4, 1L);
                                }
                                readMapStart4 = resolvingDecoder.mapNext();
                            }
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50066d = null;
                    } else {
                        Utf8 utf85 = this.f50066d;
                        this.f50066d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50064b = null;
                } else {
                    if (this.f50064b == null) {
                        this.f50064b = new ClientHeaderV2();
                    }
                    this.f50064b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50063a = null;
            } else {
                if (this.f50063a == null) {
                    this.f50063a = new C17638l3();
                }
                this.f50063a.customDecode(resolvingDecoder);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50063a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50063a.customEncode(encoder);
        }
        if (this.f50064b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50064b.customEncode(encoder);
        }
        encoder.writeString(this.f50065c);
        if (this.f50066d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50066d);
        }
        if (this.f50067e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f50067e.size();
            encoder.writeMapStart();
            encoder.setItemCount(size);
            char c = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f50067e.entrySet()) {
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
        if (this.f50068f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size2 = this.f50068f.size();
        encoder.writeMapStart();
        encoder.setItemCount(size2);
        char c2 = 0;
        for (Map.Entry<CharSequence, Double> entry2 : this.f50068f.entrySet()) {
            c2++;
            encoder.startItem();
            encoder.writeString(entry2.getKey());
            encoder.writeDouble(entry2.getValue().doubleValue());
        }
        encoder.writeMapEnd();
        if (c2 != size2) {
            throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
        }
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50064b;
            }
            if (i == 2) {
                return this.f50065c;
            }
            if (i == 3) {
                return this.f50066d;
            }
            if (i == 4) {
                return this.f50067e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50068f;
        }
        return this.f50063a;
    }

    public Schema getSchema() {
        return f50059g;
    }

    public SpecificData getSpecificData() {
        return f50060h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50063a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50064b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50065c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50066d = (CharSequence) obj;
        } else if (i == 4) {
            this.f50067e = (Map) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50068f = (Map) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50062j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50061i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
