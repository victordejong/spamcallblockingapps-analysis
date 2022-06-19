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
/* renamed from: e.a.l5.a.w2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/w2.class */
public class C17797w2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50592f;

    /* renamed from: g */
    public static SpecificData f50593g;

    /* renamed from: h */
    public static final DatumWriter<C17797w2> f50594h;

    /* renamed from: i */
    public static final DatumReader<C17797w2> f50595i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50596a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50597b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50598c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50599d;
    @Deprecated

    /* renamed from: e */
    public Map<CharSequence, CharSequence> f50600e;

    /* renamed from: e.a.l5.a.w2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/w2$b.class */
    public static class C17799b extends SpecificRecordBuilderBase<C17797w2> implements RecordBuilder<C17797w2> {

        /* renamed from: a */
        public CharSequence f50601a;

        /* renamed from: b */
        public CharSequence f50602b;

        /* renamed from: c */
        public Map<CharSequence, CharSequence> f50603c;

        public C17799b(C17798a c17798a) {
            super(C17797w2.f50592f);
        }

        /* renamed from: a */
        public C17797w2 build() {
            try {
                C17797w2 c17797w2 = new C17797w2();
                c17797w2.f50596a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17797w2.f50597b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17797w2.f50598c = fieldSetFlags()[2] ? this.f50601a : (CharSequence) defaultValue(fields()[2]);
                c17797w2.f50599d = fieldSetFlags()[3] ? this.f50602b : (CharSequence) defaultValue(fields()[3]);
                c17797w2.f50600e = fieldSetFlags()[4] ? this.f50603c : (Map) defaultValue(fields()[4]);
                return c17797w2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppViewVisited\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Application View Visited Event\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"viewId\",\"type\":\"string\",\"doc\":\"Event view ID, e.g. \\\"whoViewedMe\\\"\"},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Event context, e.g. \\\"deepLink\\\"\",\"default\":null},{\"name\":\"attributes\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Event attributes\",\"default\":null}]}");
        f50592f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50593g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50593g, m8613i0);
        f50594h = f50593g.createDatumWriter(m8613i0);
        f50595i = f50593g.createDatumReader(m8613i0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.truecaller.tracking.events.ClientHeaderV2] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v27, types: [java.util.Map<java.lang.CharSequence, java.lang.CharSequence>] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        int i;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        C17638l3 c17638l3 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50596a = null;
            } else {
                if (this.f50596a == null) {
                    this.f50596a = new C17638l3();
                }
                this.f50596a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50597b = null;
            } else {
                if (this.f50597b == null) {
                    this.f50597b = new ClientHeaderV2();
                }
                this.f50597b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50598c;
            this.f50598c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50599d = null;
            } else {
                Utf8 utf82 = this.f50599d;
                this.f50599d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50600e = null;
                return;
            }
            char readMapStart = resolvingDecoder.readMapStart();
            Map<CharSequence, CharSequence> map = this.f50600e;
            if (map == null) {
                HashMap hashMap3 = new HashMap(readMapStart);
                this.f50600e = hashMap3;
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
            return;
        }
        int i2 = 0;
        while (i2 < 5) {
            int pos = readFieldOrderIfDiff[i2].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        CharSequence charSequence = this.f50598c;
                        this.f50598c = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : c17638l3);
                    } else if (pos != 3) {
                        if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() == 1) {
                            char readMapStart2 = resolvingDecoder.readMapStart();
                            Map<CharSequence, CharSequence> map2 = this.f50600e;
                            if (map2 == null) {
                                HashMap hashMap4 = new HashMap(readMapStart2);
                                this.f50600e = hashMap4;
                                hashMap = hashMap4;
                            } else {
                                map2.clear();
                                hashMap = map2;
                            }
                            C17638l3 c17638l32 = c17638l3;
                            while (true) {
                                c17638l3 = c17638l32;
                                i = i2;
                                if (0 >= readMapStart2) {
                                    break;
                                }
                                while (readMapStart2 != 0) {
                                    readMapStart2 = C22128a.m8550y(resolvingDecoder, c17638l32, hashMap, resolvingDecoder.readString(c17638l32), readMapStart2, 1L);
                                }
                                readMapStart2 = resolvingDecoder.mapNext();
                            }
                        } else {
                            resolvingDecoder.readNull();
                            this.f50600e = c17638l3;
                            i = i2;
                        }
                        i2 = i;
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50599d = c17638l3;
                    } else {
                        CharSequence charSequence2 = this.f50599d;
                        this.f50599d = resolvingDecoder.readString(charSequence2 instanceof Utf8 ? (Utf8) charSequence2 : c17638l3);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50597b = c17638l3;
                } else {
                    if (this.f50597b == null) {
                        this.f50597b = new ClientHeaderV2();
                    }
                    this.f50597b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50596a = c17638l3;
            } else {
                if (this.f50596a == null) {
                    this.f50596a = new C17638l3();
                }
                this.f50596a.customDecode(resolvingDecoder);
            }
            i2++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50596a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50596a.customEncode(encoder);
        }
        if (this.f50597b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50597b.customEncode(encoder);
        }
        encoder.writeString(this.f50598c);
        if (this.f50599d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50599d);
        }
        if (this.f50600e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size = this.f50600e.size();
        encoder.writeMapStart();
        encoder.setItemCount(size);
        char c = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : this.f50600e.entrySet()) {
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

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50597b;
            }
            if (i == 2) {
                return this.f50598c;
            }
            if (i == 3) {
                return this.f50599d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50600e;
        }
        return this.f50596a;
    }

    public Schema getSchema() {
        return f50592f;
    }

    public SpecificData getSpecificData() {
        return f50593g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50596a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50597b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50598c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50599d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50600e = (Map) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50595i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50594h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
