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
/* renamed from: e.a.l5.a.i3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/i3.class */
public class C17586i3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49515d;

    /* renamed from: e */
    public static SpecificData f49516e;

    /* renamed from: f */
    public static final DatumWriter<C17586i3> f49517f;

    /* renamed from: g */
    public static final DatumReader<C17586i3> f49518g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49519a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49520b;
    @Deprecated

    /* renamed from: c */
    public Map<CharSequence, CharSequence> f49521c;

    /* renamed from: e.a.l5.a.i3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/i3$b.class */
    public static class C17588b extends SpecificRecordBuilderBase<C17586i3> implements RecordBuilder<C17586i3> {

        /* renamed from: a */
        public Map<CharSequence, CharSequence> f49522a;

        public C17588b(C17587a c17587a) {
            super(C17586i3.f49515d);
        }

        /* renamed from: a */
        public C17586i3 build() {
            try {
                C17586i3 c17586i3 = new C17586i3();
                c17586i3.f49519a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17586i3.f49520b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17586i3.f49521c = fieldSetFlags()[2] ? this.f49522a : (Map) defaultValue(fields()[2]);
                return c17586i3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWebSdkNotificationDelivered\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"notificationPayload\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}]}]}");
        f49515d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49516e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49516e, m8613i0);
        f49517f = f49516e.createDatumWriter(m8613i0);
        f49518g = f49516e.createDatumReader(m8613i0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.truecaller.tracking.events.ClientHeaderV2] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.util.Map<java.lang.CharSequence, java.lang.CharSequence>] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        C17638l3 c17638l3;
        int i;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        C17638l3 c17638l32 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49519a = null;
            } else {
                if (this.f49519a == null) {
                    this.f49519a = new C17638l3();
                }
                this.f49519a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49520b = null;
            } else {
                if (this.f49520b == null) {
                    this.f49520b = new ClientHeaderV2();
                }
                this.f49520b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49521c = null;
                return;
            }
            char readMapStart = resolvingDecoder.readMapStart();
            Map<CharSequence, CharSequence> map = this.f49521c;
            if (map == null) {
                HashMap hashMap3 = new HashMap(readMapStart);
                this.f49521c = hashMap3;
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
        while (i2 < 3) {
            int pos = readFieldOrderIfDiff[i2].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    if (resolvingDecoder.readIndex() == 1) {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49521c;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49521c = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
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
                        this.f49521c = c17638l32;
                        i = i2;
                        c17638l3 = c17638l32;
                    }
                    c17638l32 = c17638l3;
                    i2 = i;
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49520b = c17638l32;
                } else {
                    if (this.f49520b == null) {
                        this.f49520b = new ClientHeaderV2();
                    }
                    this.f49520b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49519a = c17638l32;
            } else {
                if (this.f49519a == null) {
                    this.f49519a = new C17638l3();
                }
                this.f49519a.customDecode(resolvingDecoder);
            }
            i2++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49519a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49519a.customEncode(encoder);
        }
        if (this.f49520b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49520b.customEncode(encoder);
        }
        if (this.f49521c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size = this.f49521c.size();
        encoder.writeMapStart();
        encoder.setItemCount(size);
        char c = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : this.f49521c.entrySet()) {
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
                return this.f49520b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49521c;
        }
        return this.f49519a;
    }

    public Schema getSchema() {
        return f49515d;
    }

    public SpecificData getSpecificData() {
        return f49516e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49519a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49520b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49521c = (Map) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49518g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49517f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
