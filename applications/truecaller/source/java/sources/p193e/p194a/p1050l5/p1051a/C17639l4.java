package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
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
/* renamed from: e.a.l5.a.l4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/l4.class */
public class C17639l4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49768e;

    /* renamed from: f */
    public static SpecificData f49769f;

    /* renamed from: g */
    public static final DatumWriter<C17639l4> f49770g;

    /* renamed from: h */
    public static final DatumReader<C17639l4> f49771h;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49772a;
    @Deprecated

    /* renamed from: b */
    public Long f49773b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49774c;
    @Deprecated

    /* renamed from: d */
    public Map<CharSequence, CharSequence> f49775d;

    /* renamed from: e.a.l5.a.l4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/l4$b.class */
    public static class C17641b extends SpecificRecordBuilderBase<C17639l4> implements RecordBuilder<C17639l4> {

        /* renamed from: a */
        public CharSequence f49776a;

        /* renamed from: b */
        public Long f49777b;

        /* renamed from: c */
        public CharSequence f49778c;

        public C17641b(C17640a c17640a) {
            super(C17639l4.f49768e);
        }

        /* renamed from: a */
        public C17639l4 build() {
            try {
                C17639l4 c17639l4 = new C17639l4();
                c17639l4.f49772a = fieldSetFlags()[0] ? this.f49776a : (CharSequence) defaultValue(fields()[0]);
                c17639l4.f49773b = fieldSetFlags()[1] ? this.f49777b : (Long) defaultValue(fields()[1]);
                c17639l4.f49774c = fieldSetFlags()[2] ? this.f49778c : (CharSequence) defaultValue(fields()[2]);
                c17639l4.f49775d = fieldSetFlags()[3] ? null : (Map) defaultValue(fields()[3]);
                return c17639l4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17641b m15900b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49778c = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17641b m15899c(CharSequence charSequence) {
            validate(fields()[0], charSequence);
            this.f49776a = charSequence;
            fieldSetFlags()[0] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"VideoProperties\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track video properties\",\"fields\":[{\"name\":\"URL\",\"type\":\"string\",\"doc\":\"Video url\"},{\"name\":\"videoSize\",\"type\":[\"null\",\"long\"],\"doc\":\"Video size in bytes\",\"default\":null},{\"name\":\"referenceId\",\"type\":[\"null\",\"string\"],\"doc\":\"Optional (if we want to have any id as reference point for the video in future)\",\"default\":null},{\"name\":\"otherProperties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Placeholder for future (to hold other properties of video)\",\"default\":null}]}");
        f49768e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49769f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49769f, m8613i0);
        f49770g = f49769f.createDatumWriter(m8613i0);
        f49771h = f49769f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17641b m15902a() {
        return new C17641b(null);
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            Utf8 utf82 = this.f49772a;
            this.f49772a = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49773b = null;
            } else {
                this.f49773b = Long.valueOf(resolvingDecoder.readLong());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49774c = null;
            } else {
                Utf8 utf83 = this.f49774c;
                this.f49774c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49775d = null;
                return;
            }
            char readMapStart = resolvingDecoder.readMapStart();
            Map<CharSequence, CharSequence> map = this.f49775d;
            if (map == null) {
                HashMap hashMap3 = new HashMap(readMapStart);
                this.f49775d = hashMap3;
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
        int i = 0;
        while (i < 4) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f49772a;
                this.f49772a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : utf8);
            } else if (pos != 1) {
                if (pos != 2) {
                    if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49775d = utf8;
                    } else {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49775d;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49775d = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        int i2 = i;
                        Utf8 utf85 = utf8;
                        while (true) {
                            utf8 = utf85;
                            i = i2;
                            if (0 < readMapStart2) {
                                while (readMapStart2 != 0) {
                                    readMapStart2 = C22128a.m8550y(resolvingDecoder, utf85, hashMap, resolvingDecoder.readString(utf85), readMapStart2, 1L);
                                }
                                readMapStart2 = resolvingDecoder.mapNext();
                            }
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49774c = utf8;
                } else {
                    CharSequence charSequence = this.f49774c;
                    this.f49774c = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf8);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49773b = utf8;
            } else {
                this.f49773b = Long.valueOf(resolvingDecoder.readLong());
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f49772a);
        if (this.f49773b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeLong(this.f49773b.longValue());
        }
        if (this.f49774c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49774c);
        }
        if (this.f49775d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size = this.f49775d.size();
        encoder.writeMapStart();
        encoder.setItemCount(size);
        char c = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : this.f49775d.entrySet()) {
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
                return this.f49773b;
            }
            if (i == 2) {
                return this.f49774c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49775d;
        }
        return this.f49772a;
    }

    public Schema getSchema() {
        return f49768e;
    }

    public SpecificData getSpecificData() {
        return f49769f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49772a = (CharSequence) obj;
        } else if (i == 1) {
            this.f49773b = (Long) obj;
        } else if (i == 2) {
            this.f49774c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49775d = (Map) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49771h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49770g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
