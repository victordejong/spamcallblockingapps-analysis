package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.List;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.c4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/c4.class */
public class C17481c4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f49014c;

    /* renamed from: d */
    public static SpecificData f49015d;

    /* renamed from: e */
    public static final DatumWriter<C17481c4> f49016e;

    /* renamed from: f */
    public static final DatumReader<C17481c4> f49017f;
    @Deprecated

    /* renamed from: a */
    public int f49018a;
    @Deprecated

    /* renamed from: b */
    public List<C17499d4> f49019b;

    /* renamed from: e.a.l5.a.c4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/c4$b.class */
    public static class C17483b extends SpecificRecordBuilderBase<C17481c4> implements RecordBuilder<C17481c4> {

        /* renamed from: a */
        public int f49020a;

        /* renamed from: b */
        public List<C17499d4> f49021b;

        public C17483b(C17482a c17482a) {
            super(C17481c4.f49014c);
        }

        /* renamed from: a */
        public C17481c4 build() {
            try {
                C17481c4 c17481c4 = new C17481c4();
                c17481c4.f49018a = fieldSetFlags()[0] ? this.f49020a : ((Integer) defaultValue(fields()[0])).intValue();
                c17481c4.f49019b = fieldSetFlags()[1] ? this.f49021b : (List) defaultValue(fields()[1]);
                return c17481c4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17483b m16008b(int i) {
            validate(fields()[0], Integer.valueOf(i));
            this.f49020a = i;
            fieldSetFlags()[0] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"RetryDetails\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track retry details\",\"fields\":[{\"name\":\"retryCount\",\"type\":\"int\",\"doc\":\"Count of the number of retries\"},{\"name\":\"retrySequence\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"RetryEntry\",\"doc\":\"Track each retry entry\",\"fields\":[{\"name\":\"retryStartTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry started\"},{\"name\":\"retryFinishTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry finished\"},{\"name\":\"retryFailureTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of  retry failed\"},{\"name\":\"retryDuration\",\"type\":\"int\",\"doc\":\"Duration of retry\"}]}},\"doc\":\"Sequence of retries\"}]}");
        f49014c = m8613i0;
        SpecificData specificData = new SpecificData();
        f49015d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49015d, m8613i0);
        f49016e = f49015d.createDatumWriter(m8613i0);
        f49017f = f49015d.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49018a = resolvingDecoder.readInt();
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17499d4> list = this.f49019b;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49014c.getField("retrySequence").schema());
                this.f49019b = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17499d4 c17499d4 = array != null ? (C17499d4) array.peek() : null;
                    C17499d4 c17499d42 = c17499d4;
                    if (c17499d4 == null) {
                        c17499d42 = new C17499d4();
                    }
                    c17499d42.customDecode(resolvingDecoder);
                    list.add(c17499d42);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49018a = resolvingDecoder.readInt();
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                char readArrayStart2 = resolvingDecoder.readArrayStart();
                List<C17499d4> list2 = this.f49019b;
                if (list2 == null) {
                    list2 = new GenericData.Array<>(readArrayStart2, f49014c.getField("retrySequence").schema());
                    this.f49019b = list2;
                } else {
                    list2.clear();
                }
                GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                while (0 < readArrayStart2) {
                    while (readArrayStart2 != 0) {
                        C17499d4 c17499d43 = array2 != null ? (C17499d4) array2.peek() : null;
                        C17499d4 c17499d44 = c17499d43;
                        if (c17499d43 == null) {
                            c17499d44 = new C17499d4();
                        }
                        c17499d44.customDecode(resolvingDecoder);
                        list2.add(c17499d44);
                        readArrayStart2--;
                    }
                    readArrayStart2 = resolvingDecoder.arrayNext();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f49018a);
        long size = this.f49019b.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17499d4 c17499d4 : this.f49019b) {
            c++;
            encoder.startItem();
            encoder.writeLong(c17499d4.f49102a);
            encoder.writeLong(c17499d4.f49103b);
            encoder.writeLong(c17499d4.f49104c);
            encoder.writeInt(c17499d4.f49105d);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49019b;
        }
        return Integer.valueOf(this.f49018a);
    }

    public Schema getSchema() {
        return f49014c;
    }

    public SpecificData getSpecificData() {
        return f49015d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49018a = ((Integer) obj).intValue();
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49019b = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49017f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49016e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
