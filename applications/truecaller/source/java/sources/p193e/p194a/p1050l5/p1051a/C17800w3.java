package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.List;
import org.apache.avro.Schema;
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
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.w3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/w3.class */
public class C17800w3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50604d;

    /* renamed from: e */
    public static SpecificData f50605e;

    /* renamed from: f */
    public static final DatumWriter<C17800w3> f50606f;

    /* renamed from: g */
    public static final DatumReader<C17800w3> f50607g;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50608a;
    @Deprecated

    /* renamed from: b */
    public boolean f50609b;
    @Deprecated

    /* renamed from: c */
    public List<C17787v3> f50610c;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"NotificationGroup\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Group id\"},{\"name\":\"groupSetting\",\"type\":\"boolean\",\"doc\":\"Group level notification setting\"},{\"name\":\"channels\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationChannel\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Unique id of the channel\"},{\"name\":\"channelSetting\",\"type\":\"boolean\",\"doc\":\"User setting for the channel\"}]}},\"doc\":\"Channels which belong to this group\"}]}");
        f50604d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50605e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50605e, m8613i0);
        f50606f = f50605e.createDatumWriter(m8613i0);
        f50607g = f50605e.createDatumReader(m8613i0);
    }

    public C17800w3() {
    }

    public C17800w3(CharSequence charSequence, Boolean bool, List<C17787v3> list) {
        this.f50608a = charSequence;
        this.f50609b = bool.booleanValue();
        this.f50610c = list;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f50608a;
            this.f50608a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f50609b = resolvingDecoder.readBoolean();
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17787v3> list = this.f50610c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f50604d.getField("channels").schema());
                this.f50610c = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17787v3 c17787v3 = array != null ? (C17787v3) array.peek() : null;
                    C17787v3 c17787v32 = c17787v3;
                    if (c17787v3 == null) {
                        c17787v32 = new C17787v3();
                    }
                    c17787v32.customDecode(resolvingDecoder);
                    list.add(c17787v32);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf82 = this.f50608a;
                this.f50608a = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            } else if (pos == 1) {
                this.f50609b = resolvingDecoder.readBoolean();
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                char readArrayStart2 = resolvingDecoder.readArrayStart();
                List<C17787v3> list2 = this.f50610c;
                if (list2 == null) {
                    list2 = new GenericData.Array<>(readArrayStart2, f50604d.getField("channels").schema());
                    this.f50610c = list2;
                } else {
                    list2.clear();
                }
                GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                while (0 < readArrayStart2) {
                    while (readArrayStart2 != 0) {
                        C17787v3 c17787v33 = array2 != null ? (C17787v3) array2.peek() : null;
                        C17787v3 c17787v34 = c17787v33;
                        if (c17787v33 == null) {
                            c17787v34 = new C17787v3();
                        }
                        c17787v34.customDecode(resolvingDecoder);
                        list2.add(c17787v34);
                        readArrayStart2--;
                    }
                    readArrayStart2 = resolvingDecoder.arrayNext();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50608a);
        encoder.writeBoolean(this.f50609b);
        long size = this.f50610c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17787v3 c17787v3 : this.f50610c) {
            c++;
            encoder.startItem();
            encoder.writeString(c17787v3.f50536a);
            encoder.writeBoolean(c17787v3.f50537b);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Boolean.valueOf(this.f50609b);
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50610c;
        }
        return this.f50608a;
    }

    public Schema getSchema() {
        return f50604d;
    }

    public SpecificData getSpecificData() {
        return f50605e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50608a = (CharSequence) obj;
        } else if (i == 1) {
            this.f50609b = ((Boolean) obj).booleanValue();
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50610c = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50607g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50606f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
