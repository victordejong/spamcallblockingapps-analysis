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
/* renamed from: e.a.l5.a.c2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/c2.class */
public class C17475c2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f48990h;

    /* renamed from: i */
    public static SpecificData f48991i;

    /* renamed from: j */
    public static final DatumWriter<C17475c2> f48992j;

    /* renamed from: k */
    public static final DatumReader<C17475c2> f48993k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48994a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48995b;
    @Deprecated

    /* renamed from: c */
    public List<C17463b4> f48996c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48997d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f48998e;
    @Deprecated

    /* renamed from: f */
    public C17553g4 f48999f;
    @Deprecated

    /* renamed from: g */
    public C17571h4 f49000g;

    /* renamed from: e.a.l5.a.c2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/c2$b.class */
    public static class C17477b extends SpecificRecordBuilderBase<C17475c2> implements RecordBuilder<C17475c2> {

        /* renamed from: a */
        public List<C17463b4> f49001a;

        /* renamed from: b */
        public CharSequence f49002b;

        /* renamed from: c */
        public CharSequence f49003c;

        /* renamed from: d */
        public C17553g4 f49004d;

        /* renamed from: e */
        public C17571h4 f49005e;

        public C17477b(C17476a c17476a) {
            super(C17475c2.f48990h);
        }

        /* renamed from: a */
        public C17475c2 build() {
            try {
                C17475c2 c17475c2 = new C17475c2();
                c17475c2.f48994a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17475c2.f48995b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17475c2.f48996c = fieldSetFlags()[2] ? this.f49001a : (List) defaultValue(fields()[2]);
                c17475c2.f48997d = fieldSetFlags()[3] ? this.f49002b : (CharSequence) defaultValue(fields()[3]);
                c17475c2.f48998e = fieldSetFlags()[4] ? this.f49003c : (CharSequence) defaultValue(fields()[4]);
                c17475c2.f48999f = fieldSetFlags()[5] ? this.f49004d : (C17553g4) defaultValue(fields()[5]);
                c17475c2.f49000g = fieldSetFlags()[6] ? this.f49005e : (C17571h4) defaultValue(fields()[6]);
                return c17475c2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSmsCategorizerReclassify\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Participant\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}},{\"name\":\"oldCategory\",\"type\":\"string\"},{\"name\":\"newCategory\",\"type\":\"string\"},{\"name\":\"classifier\",\"type\":{\"type\":\"record\",\"name\":\"SmsCategorizerModel\",\"fields\":[{\"name\":\"model\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"int\"}]}},{\"name\":\"content\",\"type\":{\"type\":\"record\",\"name\":\"SmsContentMetaData\",\"fields\":[{\"name\":\"numNumbers\",\"type\":\"int\"},{\"name\":\"numUrls\",\"type\":\"int\"},{\"name\":\"numWords\",\"type\":\"int\"},{\"name\":\"numUnigram\",\"type\":[\"null\",\"int\"]},{\"name\":\"numBigram\",\"type\":[\"null\",\"int\"]}]}}]}");
        f48990h = m8613i0;
        SpecificData specificData = new SpecificData();
        f48991i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48991i, m8613i0);
        f48992j = f48991i.createDatumWriter(m8613i0);
        f48993k = f48991i.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48994a = null;
            } else {
                if (this.f48994a == null) {
                    this.f48994a = new C17638l3();
                }
                this.f48994a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48995b = null;
            } else {
                if (this.f48995b == null) {
                    this.f48995b = new ClientHeaderV2();
                }
                this.f48995b.customDecode(resolvingDecoder);
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17463b4> list = this.f48996c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f48990h.getField("participants").schema());
                this.f48996c = list;
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
            Utf8 utf8 = this.f48997d;
            this.f48997d = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48998e;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48998e = resolvingDecoder.readString(utf83);
            if (this.f48999f == null) {
                this.f48999f = new C17553g4();
            }
            this.f48999f.customDecode(resolvingDecoder);
            if (this.f49000g == null) {
                this.f49000g = new C17571h4();
            }
            this.f49000g.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f48994a = null;
                        break;
                    } else {
                        if (this.f48994a == null) {
                            this.f48994a = new C17638l3();
                        }
                        this.f48994a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f48995b = null;
                        break;
                    } else {
                        if (this.f48995b == null) {
                            this.f48995b = new ClientHeaderV2();
                        }
                        this.f48995b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    List<C17463b4> list2 = this.f48996c;
                    if (list2 == null) {
                        list2 = new GenericData.Array<>(readArrayStart2, f48990h.getField("participants").schema());
                        this.f48996c = list2;
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
                    break;
                case 3:
                    Utf8 utf84 = this.f48997d;
                    this.f48997d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    break;
                case 4:
                    Utf8 utf85 = this.f48998e;
                    this.f48998e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 5:
                    if (this.f48999f == null) {
                        this.f48999f = new C17553g4();
                    }
                    this.f48999f.customDecode(resolvingDecoder);
                    break;
                case 6:
                    if (this.f49000g == null) {
                        this.f49000g = new C17571h4();
                    }
                    this.f49000g.customDecode(resolvingDecoder);
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48994a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48994a.customEncode(encoder);
        }
        if (this.f48995b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48995b.customEncode(encoder);
        }
        long size = this.f48996c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17463b4 c17463b4 : this.f48996c) {
            c++;
            encoder.startItem();
            encoder.writeString(c17463b4.f48942a);
            encoder.writeString(c17463b4.f48943b);
            c17463b4.f48944c.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            encoder.writeString(this.f48997d);
            encoder.writeString(this.f48998e);
            C17553g4 c17553g4 = this.f48999f;
            encoder.writeString(c17553g4.f49375a);
            encoder.writeInt(c17553g4.f49376b);
            this.f49000g.customEncode(encoder);
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f48994a;
            case 1:
                return this.f48995b;
            case 2:
                return this.f48996c;
            case 3:
                return this.f48997d;
            case 4:
                return this.f48998e;
            case 5:
                return this.f48999f;
            case 6:
                return this.f49000g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f48990h;
    }

    public SpecificData getSpecificData() {
        return f48991i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f48994a = (C17638l3) obj;
                return;
            case 1:
                this.f48995b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f48996c = (List) obj;
                return;
            case 3:
                this.f48997d = (CharSequence) obj;
                return;
            case 4:
                this.f48998e = (CharSequence) obj;
                return;
            case 5:
                this.f48999f = (C17553g4) obj;
                return;
            case 6:
                this.f49000g = (C17571h4) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48993k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48992j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
