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
/* renamed from: e.a.l5.a.y1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/y1.class */
public class C17822y1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: l */
    public static final Schema f50711l;

    /* renamed from: m */
    public static SpecificData f50712m;

    /* renamed from: n */
    public static final DatumWriter<C17822y1> f50713n;

    /* renamed from: o */
    public static final DatumReader<C17822y1> f50714o;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50715a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50716b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50717c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50718d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50719e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f50720f;
    @Deprecated

    /* renamed from: g */
    public List<C17517e4> f50721g;
    @Deprecated

    /* renamed from: h */
    public List<CharSequence> f50722h;
    @Deprecated

    /* renamed from: i */
    public boolean f50723i;
    @Deprecated

    /* renamed from: j */
    public boolean f50724j;
    @Deprecated

    /* renamed from: k */
    public Long f50725k;

    /* renamed from: e.a.l5.a.y1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/y1$b.class */
    public static class C17824b extends SpecificRecordBuilderBase<C17822y1> implements RecordBuilder<C17822y1> {

        /* renamed from: a */
        public CharSequence f50726a;

        /* renamed from: b */
        public CharSequence f50727b;

        /* renamed from: c */
        public CharSequence f50728c;

        /* renamed from: d */
        public CharSequence f50729d;

        /* renamed from: e */
        public List<C17517e4> f50730e;

        /* renamed from: f */
        public List<CharSequence> f50731f;

        /* renamed from: g */
        public boolean f50732g;

        /* renamed from: h */
        public boolean f50733h;

        /* renamed from: i */
        public Long f50734i;

        public C17824b(C17823a c17823a) {
            super(C17822y1.f50711l);
        }

        /* renamed from: a */
        public C17822y1 build() {
            try {
                C17822y1 c17822y1 = new C17822y1();
                c17822y1.f50715a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17822y1.f50716b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17822y1.f50717c = fieldSetFlags()[2] ? this.f50726a : (CharSequence) defaultValue(fields()[2]);
                c17822y1.f50718d = fieldSetFlags()[3] ? this.f50727b : (CharSequence) defaultValue(fields()[3]);
                c17822y1.f50719e = fieldSetFlags()[4] ? this.f50728c : (CharSequence) defaultValue(fields()[4]);
                c17822y1.f50720f = fieldSetFlags()[5] ? this.f50729d : (CharSequence) defaultValue(fields()[5]);
                c17822y1.f50721g = fieldSetFlags()[6] ? this.f50730e : (List) defaultValue(fields()[6]);
                c17822y1.f50722h = fieldSetFlags()[7] ? this.f50731f : (List) defaultValue(fields()[7]);
                c17822y1.f50723i = fieldSetFlags()[8] ? this.f50732g : ((Boolean) defaultValue(fields()[8])).booleanValue();
                c17822y1.f50724j = fieldSetFlags()[9] ? this.f50733h : ((Boolean) defaultValue(fields()[9])).booleanValue();
                c17822y1.f50725k = fieldSetFlags()[10] ? this.f50734i : (Long) defaultValue(fields()[10]);
                return c17822y1;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }

        /* renamed from: b */
        public C17824b m15781b(List<CharSequence> list) {
            validate(fields()[7], list);
            this.f50731f = list;
            fieldSetFlags()[7] = true;
            return this;
        }

        /* renamed from: c */
        public C17824b m15780c(Long l) {
            validate(fields()[10], l);
            this.f50734i = l;
            fieldSetFlags()[10] = true;
            return this;
        }

        /* renamed from: d */
        public C17824b m15779d(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f50727b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: e */
        public C17824b m15778e(List<C17517e4> list) {
            validate(fields()[6], list);
            this.f50730e = list;
            fieldSetFlags()[6] = true;
            return this;
        }

        /* renamed from: f */
        public C17824b m15777f(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50726a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: g */
        public C17824b m15776g(boolean z) {
            validate(fields()[8], Boolean.valueOf(z));
            this.f50732g = z;
            fieldSetFlags()[8] = true;
            return this;
        }

        /* renamed from: h */
        public C17824b m15775h(boolean z) {
            validate(fields()[9], Boolean.valueOf(z));
            this.f50733h = z;
            fieldSetFlags()[9] = true;
            return this;
        }

        /* renamed from: i */
        public C17824b m15774i(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f50729d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: j */
        public C17824b m15773j(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f50728c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSearchV3\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"searchId\",\"type\":\"string\"},{\"name\":\"requestId\",\"type\":[\"null\",\"string\"]},{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"source\",\"type\":\"string\"},{\"name\":\"searchEntities\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SearchEntity\",\"fields\":[{\"name\":\"term\",\"type\":\"string\"},{\"name\":\"noServerSearchReason\",\"type\":[\"null\",\"string\"]},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]},{\"name\":\"tags\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"TagsServed\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}]},{\"name\":\"contactInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}]}]}}},{\"name\":\"correlationIds\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}]},{\"name\":\"serverSearchAttempted\",\"type\":\"boolean\"},{\"name\":\"serverSearchResponseSuccess\",\"type\":\"boolean\"},{\"name\":\"elapsedMs\",\"type\":[\"null\",\"long\"],\"default\":null}]}");
        f50711l = m8613i0;
        SpecificData specificData = new SpecificData();
        f50712m = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50712m, m8613i0);
        f50713n = f50712m.createDatumWriter(m8613i0);
        f50714o = f50712m.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17824b m15783a() {
        return new C17824b(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v207, types: [long] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* JADX WARN: Type inference failed for: r0v239, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Object obj;
        GenericData.Array array;
        Object obj2;
        int i;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        int i2 = 1;
        int i3 = 1;
        List<CharSequence> list = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50715a = null;
            } else {
                if (this.f50715a == null) {
                    this.f50715a = new C17638l3();
                }
                this.f50715a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50716b = null;
            } else {
                if (this.f50716b == null) {
                    this.f50716b = new ClientHeaderV2();
                }
                this.f50716b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50717c;
            this.f50717c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50718d = null;
            } else {
                Utf8 utf82 = this.f50718d;
                this.f50718d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            Utf8 utf83 = this.f50719e;
            this.f50719e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f50720f;
            this.f50720f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17517e4> list2 = this.f50721g;
            if (list2 == null) {
                list2 = new GenericData.Array<>(readArrayStart, f50711l.getField("searchEntities").schema());
                this.f50721g = list2;
            } else {
                list2.clear();
            }
            GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17517e4 c17517e4 = array2 != null ? (C17517e4) array2.peek() : null;
                    C17517e4 c17517e42 = c17517e4;
                    if (c17517e4 == null) {
                        c17517e42 = new C17517e4();
                    }
                    c17517e42.customDecode(resolvingDecoder);
                    list2.add(c17517e42);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            if (resolvingDecoder.readIndex() == 1) {
                char readArrayStart2 = resolvingDecoder.readArrayStart();
                List<CharSequence> list3 = this.f50722h;
                if (list3 == null) {
                    list3 = new GenericData.Array<>(readArrayStart2, (Schema) C22128a.m8706H1(f50711l, "correlationIds", 1));
                    this.f50722h = list3;
                } else {
                    list3.clear();
                }
                if (list3 instanceof GenericData.Array) {
                    array = list3;
                    i = 1;
                    obj2 = null;
                } else {
                    array = null;
                    obj2 = null;
                    i = 1;
                }
                while (true) {
                    i3 = i;
                    obj = obj2;
                    if (0 >= readArrayStart2) {
                        break;
                    }
                    while (readArrayStart2 != 0) {
                        Object obj3 = array != null ? (CharSequence) array.peek() : obj2;
                        readArrayStart2 = C22128a.m8594n(resolvingDecoder, obj3 instanceof Utf8 ? (Utf8) obj3 : obj2, list3, readArrayStart2, 1L);
                    }
                    readArrayStart2 = resolvingDecoder.arrayNext();
                }
            } else {
                resolvingDecoder.readNull();
                this.f50722h = null;
                obj = null;
            }
            this.f50723i = resolvingDecoder.readBoolean();
            this.f50724j = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() == i3) {
                this.f50725k = Long.valueOf(resolvingDecoder.readLong());
                return;
            }
            resolvingDecoder.readNull();
            this.f50725k = obj;
            return;
        }
        for (int i4 = 0; i4 < 11; i4++) {
            switch (readFieldOrderIfDiff[i4].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50715a = null;
                        break;
                    } else {
                        if (this.f50715a == null) {
                            this.f50715a = new C17638l3();
                        }
                        this.f50715a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50716b = null;
                        break;
                    } else {
                        if (this.f50716b == null) {
                            this.f50716b = new ClientHeaderV2();
                        }
                        this.f50716b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf85 = this.f50717c;
                    this.f50717c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50718d = null;
                        break;
                    } else {
                        Utf8 utf86 = this.f50718d;
                        this.f50718d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                        break;
                    }
                case 4:
                    Utf8 utf87 = this.f50719e;
                    this.f50719e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 5:
                    Utf8 utf88 = this.f50720f;
                    this.f50720f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 6:
                    char readArrayStart3 = resolvingDecoder.readArrayStart();
                    List<C17517e4> list4 = this.f50721g;
                    if (list4 == null) {
                        list4 = new GenericData.Array<>(readArrayStart3, f50711l.getField("searchEntities").schema());
                        this.f50721g = list4;
                    } else {
                        list4.clear();
                    }
                    GenericData.Array array3 = list4 instanceof GenericData.Array ? list4 : null;
                    while (0 < readArrayStart3) {
                        while (readArrayStart3 != 0) {
                            C17517e4 c17517e43 = array3 != null ? (C17517e4) array3.peek() : null;
                            C17517e4 c17517e44 = c17517e43;
                            if (c17517e43 == null) {
                                c17517e44 = new C17517e4();
                            }
                            c17517e44.customDecode(resolvingDecoder);
                            list4.add(c17517e44);
                            readArrayStart3--;
                        }
                        readArrayStart3 = resolvingDecoder.arrayNext();
                    }
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != i2) {
                        resolvingDecoder.readNull();
                        this.f50722h = list;
                        continue;
                    } else {
                        char readArrayStart4 = resolvingDecoder.readArrayStart();
                        List<CharSequence> list5 = this.f50722h;
                        if (list5 == null) {
                            list5 = new GenericData.Array<>(readArrayStart4, (Schema) C22128a.m8706H1(f50711l, "correlationIds", i2));
                            this.f50722h = list5;
                        } else {
                            list5.clear();
                        }
                        GenericData.Array array4 = list5 instanceof GenericData.Array ? list5 : null;
                        while (0 < readArrayStart4) {
                            while (readArrayStart4 != 0) {
                                Utf8 utf89 = array4 != null ? (CharSequence) array4.peek() : null;
                                readArrayStart4 = C22128a.m8594n(resolvingDecoder, utf89 instanceof Utf8 ? utf89 : null, list5, readArrayStart4, 1L);
                            }
                            readArrayStart4 = resolvingDecoder.arrayNext();
                            i2 = 1;
                        }
                        list = null;
                    }
                case 8:
                    this.f50723i = resolvingDecoder.readBoolean();
                    continue;
                case 9:
                    this.f50724j = resolvingDecoder.readBoolean();
                    continue;
                case 10:
                    if (resolvingDecoder.readIndex() != i2) {
                        resolvingDecoder.readNull();
                        this.f50725k = list;
                        continue;
                    } else {
                        this.f50725k = Long.valueOf(resolvingDecoder.readLong());
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
            i2 = 1;
            list = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50715a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50715a.customEncode(encoder);
        }
        if (this.f50716b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50716b.customEncode(encoder);
        }
        encoder.writeString(this.f50717c);
        if (this.f50718d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50718d);
        }
        encoder.writeString(this.f50719e);
        encoder.writeString(this.f50720f);
        long size = this.f50721g.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17517e4 c17517e4 : this.f50721g) {
            c++;
            encoder.startItem();
            c17517e4.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            if (this.f50722h == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
            } else {
                encoder.writeIndex(1);
                long size2 = this.f50722h.size();
                encoder.writeArrayStart();
                encoder.setItemCount(size2);
                char c2 = 0;
                for (CharSequence charSequence : this.f50722h) {
                    c2++;
                    encoder.startItem();
                    encoder.writeString(charSequence);
                }
                encoder.writeArrayEnd();
                if (c2 != size2) {
                    throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
                }
            }
            encoder.writeBoolean(this.f50723i);
            encoder.writeBoolean(this.f50724j);
            if (this.f50725k == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
                return;
            }
            encoder.writeIndex(1);
            encoder.writeLong(this.f50725k.longValue());
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50715a;
            case 1:
                return this.f50716b;
            case 2:
                return this.f50717c;
            case 3:
                return this.f50718d;
            case 4:
                return this.f50719e;
            case 5:
                return this.f50720f;
            case 6:
                return this.f50721g;
            case 7:
                return this.f50722h;
            case 8:
                return Boolean.valueOf(this.f50723i);
            case 9:
                return Boolean.valueOf(this.f50724j);
            case 10:
                return this.f50725k;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50711l;
    }

    public SpecificData getSpecificData() {
        return f50712m;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50715a = (C17638l3) obj;
                return;
            case 1:
                this.f50716b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50717c = (CharSequence) obj;
                return;
            case 3:
                this.f50718d = (CharSequence) obj;
                return;
            case 4:
                this.f50719e = (CharSequence) obj;
                return;
            case 5:
                this.f50720f = (CharSequence) obj;
                return;
            case 6:
                this.f50721g = (List) obj;
                return;
            case 7:
                this.f50722h = (List) obj;
                return;
            case 8:
                this.f50723i = ((Boolean) obj).booleanValue();
                return;
            case 9:
                this.f50724j = ((Boolean) obj).booleanValue();
                return;
            case 10:
                this.f50725k = (Long) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50714o.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50713n.write(this, SpecificData.getEncoder(objectOutput));
    }
}
