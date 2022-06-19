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
/* renamed from: e.a.l5.a.b1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/b1.class */
public class C17454b1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f48888g;

    /* renamed from: h */
    public static SpecificData f48889h;

    /* renamed from: i */
    public static final DatumWriter<C17454b1> f48890i;

    /* renamed from: j */
    public static final DatumReader<C17454b1> f48891j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48892a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48893b;
    @Deprecated

    /* renamed from: c */
    public List<C17463b4> f48894c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48895d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f48896e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f48897f;

    /* renamed from: e.a.l5.a.b1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/b1$b.class */
    public static class C17456b extends SpecificRecordBuilderBase<C17454b1> implements RecordBuilder<C17454b1> {

        /* renamed from: a */
        public List<C17463b4> f48898a;

        /* renamed from: b */
        public CharSequence f48899b;

        /* renamed from: c */
        public CharSequence f48900c;

        /* renamed from: d */
        public CharSequence f48901d;

        public C17456b(C17455a c17455a) {
            super(C17454b1.f48888g);
        }

        /* renamed from: a */
        public C17454b1 build() {
            try {
                C17454b1 c17454b1 = new C17454b1();
                c17454b1.f48892a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17454b1.f48893b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17454b1.f48894c = fieldSetFlags()[2] ? this.f48898a : (List) defaultValue(fields()[2]);
                c17454b1.f48895d = fieldSetFlags()[3] ? this.f48899b : (CharSequence) defaultValue(fields()[3]);
                c17454b1.f48896e = fieldSetFlags()[4] ? this.f48900c : (CharSequence) defaultValue(fields()[4]);
                c17454b1.f48897f = fieldSetFlags()[5] ? this.f48901d : (CharSequence) defaultValue(fields()[5]);
                return c17454b1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppMessageInitiatedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"SMS & MMS messages initiated by client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Participant\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"messageType\",\"type\":\"string\"},{\"name\":\"localId\",\"type\":\"string\"}]}");
        f48888g = m8613i0;
        SpecificData specificData = new SpecificData();
        f48889h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48889h, m8613i0);
        f48890i = f48889h.createDatumWriter(m8613i0);
        f48891j = f48889h.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48892a = null;
            } else {
                if (this.f48892a == null) {
                    this.f48892a = new C17638l3();
                }
                this.f48892a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48893b = null;
            } else {
                if (this.f48893b == null) {
                    this.f48893b = new ClientHeaderV2();
                }
                this.f48893b.customDecode(resolvingDecoder);
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17463b4> list = this.f48894c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f48888g.getField("participants").schema());
                this.f48894c = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17463b4 c17463b4 = array != null ? (C17463b4) array.peek() : null;
                    C17463b4 c17463b42 = c17463b4;
                    if (c17463b4 == null) {
                        c17463b42 = new C17463b4();
                    }
                    c17463b42.customDecode(resolvingDecoder);
                    list.add(c17463b42);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            Utf8 utf8 = this.f48895d;
            this.f48895d = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48896e;
            this.f48896e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f48897f;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f48897f = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        char readArrayStart2 = resolvingDecoder.readArrayStart();
                        List<C17463b4> list2 = this.f48894c;
                        if (list2 == null) {
                            list2 = new GenericData.Array<>(readArrayStart2, f48888g.getField("participants").schema());
                            this.f48894c = list2;
                        } else {
                            list2.clear();
                        }
                        GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                        while (0 < readArrayStart2) {
                            while (readArrayStart2 != 0) {
                                C17463b4 c17463b43 = array2 != null ? (C17463b4) array2.peek() : null;
                                C17463b4 c17463b44 = c17463b43;
                                if (c17463b43 == null) {
                                    c17463b44 = new C17463b4();
                                }
                                c17463b44.customDecode(resolvingDecoder);
                                list2.add(c17463b44);
                                readArrayStart2--;
                            }
                            readArrayStart2 = resolvingDecoder.arrayNext();
                        }
                    } else if (pos == 3) {
                        Utf8 utf85 = this.f48895d;
                        this.f48895d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos == 4) {
                        Utf8 utf86 = this.f48896e;
                        this.f48896e = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf87 = this.f48897f;
                        this.f48897f = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48893b = null;
                } else {
                    if (this.f48893b == null) {
                        this.f48893b = new ClientHeaderV2();
                    }
                    this.f48893b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48892a = null;
            } else {
                if (this.f48892a == null) {
                    this.f48892a = new C17638l3();
                }
                this.f48892a.customDecode(resolvingDecoder);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48892a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48892a.customEncode(encoder);
        }
        if (this.f48893b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48893b.customEncode(encoder);
        }
        long size = this.f48894c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17463b4 c17463b4 : this.f48894c) {
            c++;
            encoder.startItem();
            encoder.writeString(c17463b4.f48942a);
            encoder.writeString(c17463b4.f48943b);
            c17463b4.f48944c.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            encoder.writeString(this.f48895d);
            encoder.writeString(this.f48896e);
            encoder.writeString(this.f48897f);
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48893b;
            }
            if (i == 2) {
                return this.f48894c;
            }
            if (i == 3) {
                return this.f48895d;
            }
            if (i == 4) {
                return this.f48896e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48897f;
        }
        return this.f48892a;
    }

    public Schema getSchema() {
        return f48888g;
    }

    public SpecificData getSpecificData() {
        return f48889h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48892a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48893b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48894c = (List) obj;
        } else if (i == 3) {
            this.f48895d = (CharSequence) obj;
        } else if (i == 4) {
            this.f48896e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48897f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48891j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48890i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
