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
/* renamed from: e.a.l5.a.h1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h1.class */
public class C17562h1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: m */
    public static final Schema f49400m;

    /* renamed from: n */
    public static SpecificData f49401n;

    /* renamed from: o */
    public static final DatumWriter<C17562h1> f49402o;

    /* renamed from: p */
    public static final DatumReader<C17562h1> f49403p;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49404a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49405b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49406c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49407d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49408e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49409f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49410g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49411h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49412i;
    @Deprecated

    /* renamed from: j */
    public List<CharSequence> f49413j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f49414k;
    @Deprecated

    /* renamed from: l */
    public Map<CharSequence, CharSequence> f49415l;

    /* renamed from: e.a.l5.a.h1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h1$b.class */
    public static class C17564b extends SpecificRecordBuilderBase<C17562h1> implements RecordBuilder<C17562h1> {

        /* renamed from: a */
        public CharSequence f49416a;

        /* renamed from: b */
        public CharSequence f49417b;

        /* renamed from: c */
        public CharSequence f49418c;

        /* renamed from: d */
        public CharSequence f49419d;

        /* renamed from: e */
        public CharSequence f49420e;

        /* renamed from: f */
        public CharSequence f49421f;

        /* renamed from: g */
        public CharSequence f49422g;

        /* renamed from: h */
        public List<CharSequence> f49423h;

        /* renamed from: i */
        public CharSequence f49424i;

        /* renamed from: j */
        public Map<CharSequence, CharSequence> f49425j;

        public C17564b(C17563a c17563a) {
            super(C17562h1.f49400m);
        }

        /* renamed from: a */
        public C17562h1 build() {
            try {
                C17562h1 c17562h1 = new C17562h1();
                c17562h1.f49404a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17562h1.f49405b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17562h1.f49406c = fieldSetFlags()[2] ? this.f49416a : (CharSequence) defaultValue(fields()[2]);
                c17562h1.f49407d = fieldSetFlags()[3] ? this.f49417b : (CharSequence) defaultValue(fields()[3]);
                c17562h1.f49408e = fieldSetFlags()[4] ? this.f49418c : (CharSequence) defaultValue(fields()[4]);
                c17562h1.f49409f = fieldSetFlags()[5] ? this.f49419d : (CharSequence) defaultValue(fields()[5]);
                c17562h1.f49410g = fieldSetFlags()[6] ? this.f49420e : (CharSequence) defaultValue(fields()[6]);
                c17562h1.f49411h = fieldSetFlags()[7] ? this.f49421f : (CharSequence) defaultValue(fields()[7]);
                c17562h1.f49412i = fieldSetFlags()[8] ? this.f49422g : (CharSequence) defaultValue(fields()[8]);
                c17562h1.f49413j = fieldSetFlags()[9] ? this.f49423h : (List) defaultValue(fields()[9]);
                c17562h1.f49414k = fieldSetFlags()[10] ? this.f49424i : (CharSequence) defaultValue(fields()[10]);
                c17562h1.f49415l = fieldSetFlags()[11] ? this.f49425j : (Map) defaultValue(fields()[11]);
                return c17562h1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppOAuthConsentScreenRequested\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"App event for when the OAuth consent screen is requested by the OAuth SDK\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"},{\"name\":\"platform\",\"type\":\"string\",\"doc\":\"Platform type (eg. android, ios)\"},{\"name\":\"sdkVariant\",\"type\":\"string\",\"doc\":\"Variant of the SDK (e.g. native, flutter, react, custom)\"},{\"name\":\"sdkVersion\",\"type\":\"string\",\"doc\":\"SDK version (e.g. 2.5.0)\"},{\"name\":\"sdkVariantVersion\",\"type\":\"string\",\"doc\":\"SDK variant version (e.g. for sdkVariant = flutter, it could be 0.0.2)\"},{\"name\":\"integrationType\",\"type\":\"string\",\"doc\":\"Integration type (e.g. android, mobile-web)\"},{\"name\":\"clientId\",\"type\":\"string\",\"doc\":\"OAuth client id of the partner\"},{\"name\":\"requestedScopes\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"Scopes requested by the partner (e.g. profile)\"},{\"name\":\"requestedOAuthState\",\"type\":[\"null\",\"string\"],\"doc\":\"OAuth state parameter set by the partner\",\"default\":null},{\"name\":\"customizations\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Consent screen customization options like button shape, button text, etc\",\"default\":null}]}");
        f49400m = m8613i0;
        SpecificData specificData = new SpecificData();
        f49401n = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49401n, m8613i0);
        f49402o = f49401n.createDatumWriter(m8613i0);
        f49403p = f49401n.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v203, types: [long] */
    /* JADX WARN: Type inference failed for: r0v216, types: [long] */
    /* JADX WARN: Type inference failed for: r0v225, types: [long] */
    /* JADX WARN: Type inference failed for: r0v227, types: [long] */
    /* JADX WARN: Type inference failed for: r0v246, types: [long] */
    /* JADX WARN: Type inference failed for: r0v252, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        GenericData.Array array;
        char c;
        HashMap hashMap;
        GenericData.Array array2;
        Utf8 utf8;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        int i = 1;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49404a = null;
            } else {
                if (this.f49404a == null) {
                    this.f49404a = new C17638l3();
                }
                this.f49404a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49405b = null;
            } else {
                if (this.f49405b == null) {
                    this.f49405b = new ClientHeaderV2();
                }
                this.f49405b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49406c;
            this.f49406c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49407d;
            this.f49407d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49408e;
            this.f49408e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49409f;
            this.f49409f = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            Utf8 utf86 = this.f49410g;
            this.f49410g = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            Utf8 utf87 = this.f49411h;
            this.f49411h = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            Utf8 utf88 = this.f49412i;
            this.f49412i = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<CharSequence> list = this.f49413j;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49400m.getField("requestedScopes").schema());
                this.f49413j = list;
            } else {
                list.clear();
            }
            if (list instanceof GenericData.Array) {
                array2 = list;
                utf8 = null;
            } else {
                array2 = null;
                utf8 = null;
            }
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    Utf8 utf89 = array2 != null ? (CharSequence) array2.peek() : utf8;
                    readArrayStart = C22128a.m8594n(resolvingDecoder, utf89 instanceof Utf8 ? utf89 : utf8, list, readArrayStart, 1L);
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49414k = utf8;
            } else {
                CharSequence charSequence = this.f49414k;
                this.f49414k = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf8);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49415l = utf8;
                return;
            }
            char readMapStart = resolvingDecoder.readMapStart();
            Map<CharSequence, CharSequence> map = this.f49415l;
            if (map == null) {
                HashMap hashMap3 = new HashMap(readMapStart);
                this.f49415l = hashMap3;
                hashMap2 = hashMap3;
            } else {
                map.clear();
                hashMap2 = map;
            }
            while (0 < readMapStart) {
                while (readMapStart != 0) {
                    readMapStart = C22128a.m8550y(resolvingDecoder, utf8, hashMap2, resolvingDecoder.readString(utf8), readMapStart, 1L);
                }
                readMapStart = resolvingDecoder.mapNext();
            }
            return;
        }
        Utf8 utf810 = null;
        for (int i2 = 0; i2 < 12; i2++) {
            switch (readFieldOrderIfDiff[i2].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != i) {
                        resolvingDecoder.readNull();
                        utf810 = null;
                        this.f49404a = null;
                    } else {
                        utf810 = null;
                        if (this.f49404a == null) {
                            this.f49404a = new C17638l3();
                        }
                        this.f49404a.customDecode(resolvingDecoder);
                        continue;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() == i) {
                        if (this.f49405b == null) {
                            this.f49405b = new ClientHeaderV2();
                        }
                        this.f49405b.customDecode(resolvingDecoder);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        utf810 = null;
                        this.f49405b = null;
                        continue;
                    }
                case 2:
                    Utf8 utf811 = this.f49406c;
                    this.f49406c = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 3:
                    Utf8 utf812 = this.f49407d;
                    this.f49407d = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 4:
                    Utf8 utf813 = this.f49408e;
                    this.f49408e = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                    break;
                case 5:
                    Utf8 utf814 = this.f49409f;
                    this.f49409f = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                    break;
                case 6:
                    Utf8 utf815 = this.f49410g;
                    this.f49410g = resolvingDecoder.readString(utf815 instanceof Utf8 ? utf815 : null);
                    break;
                case 7:
                    Utf8 utf816 = this.f49411h;
                    this.f49411h = resolvingDecoder.readString(utf816 instanceof Utf8 ? utf816 : null);
                    break;
                case 8:
                    Utf8 utf817 = this.f49412i;
                    this.f49412i = resolvingDecoder.readString(utf817 instanceof Utf8 ? utf817 : null);
                    break;
                case 9:
                    int i3 = i;
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    List<CharSequence> list2 = this.f49413j;
                    if (list2 == null) {
                        list2 = new GenericData.Array<>(readArrayStart2, f49400m.getField("requestedScopes").schema());
                        this.f49413j = list2;
                    } else {
                        list2.clear();
                    }
                    if (list2 instanceof GenericData.Array) {
                        array = list2;
                        c = 0;
                    } else {
                        c = 0;
                        array = null;
                    }
                    while (true) {
                        i = i3;
                        if (c >= readArrayStart2) {
                            break;
                        } else {
                            while (readArrayStart2 != c) {
                                Utf8 utf818 = array != null ? (CharSequence) array.peek() : null;
                                readArrayStart2 = C22128a.m8594n(resolvingDecoder, utf818 instanceof Utf8 ? utf818 : null, list2, readArrayStart2, 1L);
                                c = 0;
                            }
                            readArrayStart2 = resolvingDecoder.arrayNext();
                            c = 0;
                        }
                    }
                case 10:
                    if (resolvingDecoder.readIndex() == i) {
                        Utf8 utf819 = this.f49414k;
                        this.f49414k = resolvingDecoder.readString(utf819 instanceof Utf8 ? utf819 : null);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        utf810 = null;
                        this.f49414k = null;
                        continue;
                    }
                case 11:
                    if (resolvingDecoder.readIndex() == i) {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49415l;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49415l = hashMap4;
                            hashMap = hashMap4;
                        } else {
                            map2.clear();
                            hashMap = map2;
                        }
                        while (0 < readMapStart2) {
                            while (readMapStart2 != 0) {
                                readMapStart2 = C22128a.m8550y(resolvingDecoder, utf810, hashMap, resolvingDecoder.readString(utf810), readMapStart2, 1L);
                                utf810 = null;
                            }
                            readMapStart2 = resolvingDecoder.mapNext();
                            utf810 = null;
                        }
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49415l = utf810;
                        continue;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
            utf810 = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49404a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49404a.customEncode(encoder);
        }
        if (this.f49405b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49405b.customEncode(encoder);
        }
        encoder.writeString(this.f49406c);
        encoder.writeString(this.f49407d);
        encoder.writeString(this.f49408e);
        encoder.writeString(this.f49409f);
        encoder.writeString(this.f49410g);
        encoder.writeString(this.f49411h);
        encoder.writeString(this.f49412i);
        long size = this.f49413j.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (CharSequence charSequence : this.f49413j) {
            c++;
            encoder.startItem();
            encoder.writeString(charSequence);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            if (this.f49414k == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
            } else {
                encoder.writeIndex(1);
                encoder.writeString(this.f49414k);
            }
            if (this.f49415l == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
                return;
            }
            encoder.writeIndex(1);
            long size2 = this.f49415l.size();
            encoder.writeMapStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f49415l.entrySet()) {
                c2++;
                encoder.startItem();
                encoder.writeString(entry.getKey());
                encoder.writeString(entry.getValue());
            }
            encoder.writeMapEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49404a;
            case 1:
                return this.f49405b;
            case 2:
                return this.f49406c;
            case 3:
                return this.f49407d;
            case 4:
                return this.f49408e;
            case 5:
                return this.f49409f;
            case 6:
                return this.f49410g;
            case 7:
                return this.f49411h;
            case 8:
                return this.f49412i;
            case 9:
                return this.f49413j;
            case 10:
                return this.f49414k;
            case 11:
                return this.f49415l;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49400m;
    }

    public SpecificData getSpecificData() {
        return f49401n;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49404a = (C17638l3) obj;
                return;
            case 1:
                this.f49405b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49406c = (CharSequence) obj;
                return;
            case 3:
                this.f49407d = (CharSequence) obj;
                return;
            case 4:
                this.f49408e = (CharSequence) obj;
                return;
            case 5:
                this.f49409f = (CharSequence) obj;
                return;
            case 6:
                this.f49410g = (CharSequence) obj;
                return;
            case 7:
                this.f49411h = (CharSequence) obj;
                return;
            case 8:
                this.f49412i = (CharSequence) obj;
                return;
            case 9:
                this.f49413j = (List) obj;
                return;
            case 10:
                this.f49414k = (CharSequence) obj;
                return;
            case 11:
                this.f49415l = (Map) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49403p.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49402o.write(this, SpecificData.getEncoder(objectOutput));
    }
}
