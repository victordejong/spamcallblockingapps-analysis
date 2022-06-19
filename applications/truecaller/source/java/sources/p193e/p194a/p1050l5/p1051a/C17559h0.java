package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
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
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h0.class */
public class C17559h0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49390e;

    /* renamed from: f */
    public static SpecificData f49391f;

    /* renamed from: g */
    public static final DatumWriter<C17559h0> f49392g;

    /* renamed from: h */
    public static final DatumReader<C17559h0> f49393h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49394a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49395b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49396c;
    @Deprecated

    /* renamed from: d */
    public List<CharSequence> f49397d;

    /* renamed from: e.a.l5.a.h0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h0$b.class */
    public static class C17561b extends SpecificRecordBuilderBase<C17559h0> implements RecordBuilder<C17559h0> {

        /* renamed from: a */
        public CharSequence f49398a;

        /* renamed from: b */
        public List<CharSequence> f49399b;

        public C17561b(C17560a c17560a) {
            super(C17559h0.f49390e);
        }

        /* renamed from: a */
        public C17559h0 build() {
            try {
                C17559h0 c17559h0 = new C17559h0();
                c17559h0.f49394a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17559h0.f49395b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17559h0.f49396c = fieldSetFlags()[2] ? this.f49398a : (CharSequence) defaultValue(fields()[2]);
                c17559h0.f49397d = fieldSetFlags()[3] ? this.f49399b : (List) defaultValue(fields()[3]);
                return c17559h0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCreateGroupChatFinished\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Group chat successfully created, step 4/4 in process\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"imId\",\"type\":\"string\",\"doc\":\"Group's imId\"},{\"name\":\"memberIds\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"IM ids of members\"}]}");
        f49390e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49391f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49391f, m8613i0);
        f49392g = f49391f.createDatumWriter(m8613i0);
        f49393h = f49391f.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        GenericData.Array array;
        Utf8 utf8;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Object obj = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49394a = null;
            } else {
                if (this.f49394a == null) {
                    this.f49394a = new C17638l3();
                }
                this.f49394a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49395b = null;
            } else {
                if (this.f49395b == null) {
                    this.f49395b = new ClientHeaderV2();
                }
                this.f49395b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49396c;
            this.f49396c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<CharSequence> list = this.f49397d;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49390e.getField("memberIds").schema());
                this.f49397d = list;
            } else {
                list.clear();
            }
            if (list instanceof GenericData.Array) {
                array = list;
                utf8 = null;
            } else {
                array = null;
                utf8 = null;
            }
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    Utf8 utf83 = array != null ? (CharSequence) array.peek() : utf8;
                    readArrayStart = C22128a.m8594n(resolvingDecoder, utf83 instanceof Utf8 ? utf83 : utf8, list, readArrayStart, 1L);
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        int i = 0;
        while (i < 4) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f49396c;
                        this.f49396c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                        obj = null;
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        char readArrayStart2 = resolvingDecoder.readArrayStart();
                        List<CharSequence> list2 = this.f49397d;
                        if (list2 == null) {
                            list2 = new GenericData.Array<>(readArrayStart2, f49390e.getField("memberIds").schema());
                            this.f49397d = list2;
                        } else {
                            list2.clear();
                        }
                        C17638l3 c17638l3 = list2 instanceof GenericData.Array ? (GenericData.Array) list2 : obj;
                        while (0 < readArrayStart2) {
                            while (readArrayStart2 != 0) {
                                Object obj2 = c17638l3 != null ? (CharSequence) c17638l3.peek() : obj;
                                if (obj2 instanceof Utf8) {
                                    obj = (Utf8) obj2;
                                }
                                readArrayStart2 = C22128a.m8594n(resolvingDecoder, obj, list2, readArrayStart2, 1L);
                                obj = null;
                            }
                            readArrayStart2 = resolvingDecoder.arrayNext();
                            obj = null;
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    obj = null;
                    this.f49395b = null;
                } else {
                    obj = null;
                    if (this.f49395b == null) {
                        this.f49395b = new ClientHeaderV2();
                    }
                    this.f49395b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49394a = obj;
            } else {
                if (this.f49394a == null) {
                    this.f49394a = new C17638l3();
                }
                this.f49394a.customDecode(resolvingDecoder);
            }
            i++;
            obj = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49394a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49394a.customEncode(encoder);
        }
        if (this.f49395b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49395b.customEncode(encoder);
        }
        encoder.writeString(this.f49396c);
        long size = this.f49397d.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (CharSequence charSequence : this.f49397d) {
            c++;
            encoder.startItem();
            encoder.writeString(charSequence);
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
                return this.f49395b;
            }
            if (i == 2) {
                return this.f49396c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49397d;
        }
        return this.f49394a;
    }

    public Schema getSchema() {
        return f49390e;
    }

    public SpecificData getSpecificData() {
        return f49391f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49394a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49395b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49396c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49397d = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49393h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49392g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
