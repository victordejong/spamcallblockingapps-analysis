package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
/* renamed from: e.a.l5.a.b2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/b2.class */
public class C17457b2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: l */
    public static final Schema f48902l;

    /* renamed from: m */
    public static SpecificData f48903m;

    /* renamed from: n */
    public static final DatumWriter<C17457b2> f48904n;

    /* renamed from: o */
    public static final DatumReader<C17457b2> f48905o;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48906a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48907b;
    @Deprecated

    /* renamed from: c */
    public List<C17463b4> f48908c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48909d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f48910e;
    @Deprecated

    /* renamed from: f */
    public int f48911f;
    @Deprecated

    /* renamed from: g */
    public int f48912g;
    @Deprecated

    /* renamed from: h */
    public boolean f48913h;
    @Deprecated

    /* renamed from: i */
    public Map<CharSequence, CharSequence> f48914i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f48915j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f48916k;

    /* renamed from: e.a.l5.a.b2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/b2$b.class */
    public static class C17459b extends SpecificRecordBuilderBase<C17457b2> implements RecordBuilder<C17457b2> {

        /* renamed from: a */
        public List<C17463b4> f48917a;

        /* renamed from: b */
        public CharSequence f48918b;

        /* renamed from: c */
        public CharSequence f48919c;

        /* renamed from: d */
        public int f48920d;

        /* renamed from: e */
        public int f48921e;

        /* renamed from: f */
        public boolean f48922f;

        /* renamed from: g */
        public Map<CharSequence, CharSequence> f48923g;

        /* renamed from: h */
        public CharSequence f48924h;

        /* renamed from: i */
        public CharSequence f48925i;

        public C17459b(C17458a c17458a) {
            super(C17457b2.f48902l);
        }

        /* renamed from: a */
        public C17457b2 build() {
            try {
                C17457b2 c17457b2 = new C17457b2();
                c17457b2.f48906a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17457b2.f48907b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17457b2.f48908c = fieldSetFlags()[2] ? this.f48917a : (List) defaultValue(fields()[2]);
                c17457b2.f48909d = fieldSetFlags()[3] ? this.f48918b : (CharSequence) defaultValue(fields()[3]);
                c17457b2.f48910e = fieldSetFlags()[4] ? this.f48919c : (CharSequence) defaultValue(fields()[4]);
                c17457b2.f48911f = fieldSetFlags()[5] ? this.f48920d : ((Integer) defaultValue(fields()[5])).intValue();
                c17457b2.f48912g = fieldSetFlags()[6] ? this.f48921e : ((Integer) defaultValue(fields()[6])).intValue();
                c17457b2.f48913h = fieldSetFlags()[7] ? this.f48922f : ((Boolean) defaultValue(fields()[7])).booleanValue();
                c17457b2.f48914i = fieldSetFlags()[8] ? this.f48923g : (Map) defaultValue(fields()[8]);
                c17457b2.f48915j = fieldSetFlags()[9] ? this.f48924h : (CharSequence) defaultValue(fields()[9]);
                c17457b2.f48916k = fieldSetFlags()[10] ? this.f48925i : (CharSequence) defaultValue(fields()[10]);
                return c17457b2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17459b m16021b(Map<CharSequence, CharSequence> map) {
            validate(fields()[8], map);
            this.f48923g = map;
            fieldSetFlags()[8] = true;
            return this;
        }

        /* renamed from: c */
        public C17459b m16020c(CharSequence charSequence) {
            validate(fields()[9], charSequence);
            this.f48924h = charSequence;
            fieldSetFlags()[9] = true;
            return this;
        }

        /* renamed from: d */
        public C17459b m16019d(CharSequence charSequence) {
            validate(fields()[10], charSequence);
            this.f48925i = charSequence;
            fieldSetFlags()[10] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSmsCategorizerCompare\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Participant\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}},{\"name\":\"categorizerCategory\",\"type\":\"string\"},{\"name\":\"parserCategory\",\"type\":\"string\"},{\"name\":\"categorizerVersion\",\"type\":\"int\"},{\"name\":\"parserVersion\",\"type\":\"int\"},{\"name\":\"reclassifySms\",\"type\":\"boolean\"},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"default\":null},{\"name\":\"updatesCategory\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"updatesModelVersion\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f48902l = m8613i0;
        SpecificData specificData = new SpecificData();
        f48903m = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48903m, m8613i0);
        f48904n = f48903m.createDatumWriter(m8613i0);
        f48905o = f48903m.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* JADX WARN: Type inference failed for: r0v194, types: [long] */
    /* JADX WARN: Type inference failed for: r0v210, types: [long] */
    /* JADX WARN: Type inference failed for: r0v218, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        Utf8 utf8;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        int i = 1;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48906a = null;
            } else {
                if (this.f48906a == null) {
                    this.f48906a = new C17638l3();
                }
                this.f48906a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48907b = null;
            } else {
                if (this.f48907b == null) {
                    this.f48907b = new ClientHeaderV2();
                }
                this.f48907b.customDecode(resolvingDecoder);
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17463b4> list = this.f48908c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f48902l.getField("participants").schema());
                this.f48908c = list;
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
            Utf8 utf82 = this.f48909d;
            this.f48909d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f48910e;
            this.f48910e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            this.f48911f = resolvingDecoder.readInt();
            this.f48912g = resolvingDecoder.readInt();
            this.f48913h = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() == 1) {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f48914i;
                if (map == null) {
                    HashMap hashMap3 = new HashMap(readMapStart);
                    this.f48914i = hashMap3;
                    hashMap2 = hashMap3;
                } else {
                    map.clear();
                    hashMap2 = map;
                }
                while (true) {
                    i = 1;
                    utf8 = null;
                    if (0 >= readMapStart) {
                        break;
                    }
                    while (readMapStart != 0) {
                        readMapStart = C22128a.m8550y(resolvingDecoder, null, hashMap2, resolvingDecoder.readString((Utf8) null), readMapStart, 1L);
                    }
                    readMapStart = resolvingDecoder.mapNext();
                }
            } else {
                resolvingDecoder.readNull();
                this.f48914i = null;
                utf8 = null;
            }
            if (resolvingDecoder.readIndex() != i) {
                resolvingDecoder.readNull();
                this.f48915j = utf8;
            } else {
                CharSequence charSequence = this.f48915j;
                this.f48915j = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf8);
            }
            if (resolvingDecoder.readIndex() != i) {
                resolvingDecoder.readNull();
                this.f48916k = utf8;
                return;
            }
            Utf8 utf84 = this.f48916k;
            if (utf84 instanceof Utf8) {
                utf8 = utf84;
            }
            this.f48916k = resolvingDecoder.readString(utf8);
            return;
        }
        int i2 = 0;
        while (i2 < 11) {
            switch (readFieldOrderIfDiff[i2].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() == 1) {
                        if (this.f48906a == null) {
                            this.f48906a = new C17638l3();
                        }
                        this.f48906a.customDecode(resolvingDecoder);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f48906a = null;
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() == 1) {
                        if (this.f48907b == null) {
                            this.f48907b = new ClientHeaderV2();
                        }
                        this.f48907b.customDecode(resolvingDecoder);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f48907b = null;
                        break;
                    }
                case 2:
                    int i3 = i2;
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    List<C17463b4> list2 = this.f48908c;
                    if (list2 == null) {
                        list2 = new GenericData.Array<>(readArrayStart2, f48902l.getField("participants").schema());
                        this.f48908c = list2;
                    } else {
                        list2.clear();
                    }
                    GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                    while (true) {
                        i2 = i3;
                        if (0 < readArrayStart2) {
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
                    }
                    break;
                case 3:
                    Utf8 utf85 = this.f48909d;
                    this.f48909d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 4:
                    Utf8 utf86 = this.f48910e;
                    this.f48910e = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 5:
                    this.f48911f = resolvingDecoder.readInt();
                    break;
                case 6:
                    this.f48912g = resolvingDecoder.readInt();
                    break;
                case 7:
                    this.f48913h = resolvingDecoder.readBoolean();
                    break;
                case 8:
                    if (resolvingDecoder.readIndex() == 1) {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f48914i;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f48914i = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        while (0 < readMapStart2) {
                            while (readMapStart2 != 0) {
                                readMapStart2 = C22128a.m8550y(resolvingDecoder, null, hashMap, resolvingDecoder.readString((Utf8) null), readMapStart2, 1L);
                            }
                            readMapStart2 = resolvingDecoder.mapNext();
                        }
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f48914i = null;
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() == 1) {
                        Utf8 utf87 = this.f48915j;
                        this.f48915j = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f48915j = null;
                        break;
                    }
                case 10:
                    if (resolvingDecoder.readIndex() == 1) {
                        Utf8 utf88 = this.f48916k;
                        this.f48916k = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f48916k = null;
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
            i2++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48906a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48906a.customEncode(encoder);
        }
        if (this.f48907b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48907b.customEncode(encoder);
        }
        long size = this.f48908c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17463b4 c17463b4 : this.f48908c) {
            c++;
            encoder.startItem();
            encoder.writeString(c17463b4.f48942a);
            encoder.writeString(c17463b4.f48943b);
            c17463b4.f48944c.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            encoder.writeString(this.f48909d);
            encoder.writeString(this.f48910e);
            encoder.writeInt(this.f48911f);
            encoder.writeInt(this.f48912g);
            encoder.writeBoolean(this.f48913h);
            if (this.f48914i == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
            } else {
                encoder.writeIndex(1);
                long size2 = this.f48914i.size();
                encoder.writeMapStart();
                encoder.setItemCount(size2);
                char c2 = 0;
                for (Map.Entry<CharSequence, CharSequence> entry : this.f48914i.entrySet()) {
                    c2++;
                    encoder.startItem();
                    encoder.writeString(entry.getKey());
                    encoder.writeString(entry.getValue());
                }
                encoder.writeMapEnd();
                if (c2 != size2) {
                    throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
                }
            }
            if (this.f48915j == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
            } else {
                encoder.writeIndex(1);
                encoder.writeString(this.f48915j);
            }
            if (this.f48916k == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
                return;
            }
            encoder.writeIndex(1);
            encoder.writeString(this.f48916k);
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f48906a;
            case 1:
                return this.f48907b;
            case 2:
                return this.f48908c;
            case 3:
                return this.f48909d;
            case 4:
                return this.f48910e;
            case 5:
                return Integer.valueOf(this.f48911f);
            case 6:
                return Integer.valueOf(this.f48912g);
            case 7:
                return Boolean.valueOf(this.f48913h);
            case 8:
                return this.f48914i;
            case 9:
                return this.f48915j;
            case 10:
                return this.f48916k;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f48902l;
    }

    public SpecificData getSpecificData() {
        return f48903m;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f48906a = (C17638l3) obj;
                return;
            case 1:
                this.f48907b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f48908c = (List) obj;
                return;
            case 3:
                this.f48909d = (CharSequence) obj;
                return;
            case 4:
                this.f48910e = (CharSequence) obj;
                return;
            case 5:
                this.f48911f = ((Integer) obj).intValue();
                return;
            case 6:
                this.f48912g = ((Integer) obj).intValue();
                return;
            case 7:
                this.f48913h = ((Boolean) obj).booleanValue();
                return;
            case 8:
                this.f48914i = (Map) obj;
                return;
            case 9:
                this.f48915j = (CharSequence) obj;
                return;
            case 10:
                this.f48916k = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48905o.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48904n.write(this, SpecificData.getEncoder(objectOutput));
    }
}
