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
/* renamed from: e.a.l5.a.t0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/t0.class */
public class C17748t0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50310g;

    /* renamed from: h */
    public static SpecificData f50311h;

    /* renamed from: i */
    public static final DatumWriter<C17748t0> f50312i;

    /* renamed from: j */
    public static final DatumReader<C17748t0> f50313j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50314a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50315b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50316c;
    @Deprecated

    /* renamed from: d */
    public Map<CharSequence, Integer> f50317d;
    @Deprecated

    /* renamed from: e */
    public int f50318e;
    @Deprecated

    /* renamed from: f */
    public boolean f50319f;

    /* renamed from: e.a.l5.a.t0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/t0$b.class */
    public static class C17750b extends SpecificRecordBuilderBase<C17748t0> implements RecordBuilder<C17748t0> {

        /* renamed from: a */
        public CharSequence f50320a;

        /* renamed from: b */
        public Map<CharSequence, Integer> f50321b;

        /* renamed from: c */
        public int f50322c;

        /* renamed from: d */
        public boolean f50323d;

        public C17750b(C17749a c17749a) {
            super(C17748t0.f50310g);
        }

        /* renamed from: a */
        public C17748t0 build() {
            try {
                C17748t0 c17748t0 = new C17748t0();
                c17748t0.f50314a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17748t0.f50315b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17748t0.f50316c = fieldSetFlags()[2] ? this.f50320a : (CharSequence) defaultValue(fields()[2]);
                c17748t0.f50317d = fieldSetFlags()[3] ? this.f50321b : (Map) defaultValue(fields()[3]);
                c17748t0.f50318e = fieldSetFlags()[4] ? this.f50322c : ((Integer) defaultValue(fields()[4])).intValue();
                c17748t0.f50319f = fieldSetFlags()[5] ? this.f50323d : ((Boolean) defaultValue(fields()[5])).booleanValue();
                return c17748t0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppImFetchHistory\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"groupId\",\"type\":\"string\"},{\"name\":\"typeBreakdown\",\"type\":{\"type\":\"map\",\"values\":\"int\"}},{\"name\":\"pageIndex\",\"type\":\"int\"},{\"name\":\"isExhausted\",\"type\":\"boolean\"}]}");
        f50310g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50311h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50311h, m8613i0);
        f50312i = f50311h.createDatumWriter(m8613i0);
        f50313j = f50311h.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50314a = null;
            } else {
                if (this.f50314a == null) {
                    this.f50314a = new C17638l3();
                }
                this.f50314a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50315b = null;
            } else {
                if (this.f50315b == null) {
                    this.f50315b = new ClientHeaderV2();
                }
                this.f50315b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50316c;
            this.f50316c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            char readMapStart = resolvingDecoder.readMapStart();
            Map<CharSequence, Integer> map = this.f50317d;
            if (map == null) {
                HashMap hashMap3 = new HashMap(readMapStart);
                this.f50317d = hashMap3;
                hashMap2 = hashMap3;
            } else {
                map.clear();
                hashMap2 = map;
            }
            while (0 < readMapStart) {
                while (readMapStart != 0) {
                    hashMap2.put(resolvingDecoder.readString((Utf8) null), Integer.valueOf(resolvingDecoder.readInt()));
                    readMapStart--;
                }
                readMapStart = resolvingDecoder.mapNext();
            }
            this.f50318e = resolvingDecoder.readInt();
            this.f50319f = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf82 = this.f50316c;
                        this.f50316c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                    } else if (pos == 3) {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, Integer> map2 = this.f50317d;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f50317d = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        while (0 < readMapStart2) {
                            while (readMapStart2 != 0) {
                                hashMap.put(resolvingDecoder.readString((Utf8) null), Integer.valueOf(resolvingDecoder.readInt()));
                                readMapStart2--;
                            }
                            readMapStart2 = resolvingDecoder.mapNext();
                        }
                    } else if (pos == 4) {
                        this.f50318e = resolvingDecoder.readInt();
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f50319f = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50315b = null;
                } else {
                    if (this.f50315b == null) {
                        this.f50315b = new ClientHeaderV2();
                    }
                    this.f50315b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50314a = null;
            } else {
                if (this.f50314a == null) {
                    this.f50314a = new C17638l3();
                }
                this.f50314a.customDecode(resolvingDecoder);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50314a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50314a.customEncode(encoder);
        }
        if (this.f50315b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50315b.customEncode(encoder);
        }
        encoder.writeString(this.f50316c);
        long size = this.f50317d.size();
        encoder.writeMapStart();
        encoder.setItemCount(size);
        char c = 0;
        for (Map.Entry<CharSequence, Integer> entry : this.f50317d.entrySet()) {
            c++;
            encoder.startItem();
            encoder.writeString(entry.getKey());
            encoder.writeInt(entry.getValue().intValue());
        }
        encoder.writeMapEnd();
        if (c == size) {
            encoder.writeInt(this.f50318e);
            encoder.writeBoolean(this.f50319f);
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50315b;
            }
            if (i == 2) {
                return this.f50316c;
            }
            if (i == 3) {
                return this.f50317d;
            }
            if (i == 4) {
                return Integer.valueOf(this.f50318e);
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f50319f);
        }
        return this.f50314a;
    }

    public Schema getSchema() {
        return f50310g;
    }

    public SpecificData getSpecificData() {
        return f50311h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50314a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50315b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50316c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50317d = (Map) obj;
        } else if (i == 4) {
            this.f50318e = ((Integer) obj).intValue();
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50319f = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50313j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50312i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
