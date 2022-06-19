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
/* renamed from: e.a.l5.a.i1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/i1.class */
public class C17580i1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49483j;

    /* renamed from: k */
    public static SpecificData f49484k;

    /* renamed from: l */
    public static final DatumWriter<C17580i1> f49485l;

    /* renamed from: m */
    public static final DatumReader<C17580i1> f49486m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49487a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49488b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49489c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49490d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49491e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49492f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49493g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49494h;
    @Deprecated

    /* renamed from: i */
    public List<CharSequence> f49495i;

    /* renamed from: e.a.l5.a.i1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/i1$b.class */
    public static class C17582b extends SpecificRecordBuilderBase<C17580i1> implements RecordBuilder<C17580i1> {

        /* renamed from: a */
        public CharSequence f49496a;

        /* renamed from: b */
        public CharSequence f49497b;

        /* renamed from: c */
        public CharSequence f49498c;

        /* renamed from: d */
        public CharSequence f49499d;

        /* renamed from: e */
        public CharSequence f49500e;

        /* renamed from: f */
        public CharSequence f49501f;

        /* renamed from: g */
        public List<CharSequence> f49502g;

        public C17582b(C17581a c17581a) {
            super(C17580i1.f49483j);
        }

        /* renamed from: a */
        public C17580i1 build() {
            try {
                C17580i1 c17580i1 = new C17580i1();
                c17580i1.f49487a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17580i1.f49488b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17580i1.f49489c = fieldSetFlags()[2] ? this.f49496a : (CharSequence) defaultValue(fields()[2]);
                c17580i1.f49490d = fieldSetFlags()[3] ? this.f49497b : (CharSequence) defaultValue(fields()[3]);
                c17580i1.f49491e = fieldSetFlags()[4] ? this.f49498c : (CharSequence) defaultValue(fields()[4]);
                c17580i1.f49492f = fieldSetFlags()[5] ? this.f49499d : (CharSequence) defaultValue(fields()[5]);
                c17580i1.f49493g = fieldSetFlags()[6] ? this.f49500e : (CharSequence) defaultValue(fields()[6]);
                c17580i1.f49494h = fieldSetFlags()[7] ? this.f49501f : (CharSequence) defaultValue(fields()[7]);
                c17580i1.f49495i = fieldSetFlags()[8] ? this.f49502g : (List) defaultValue(fields()[8]);
                return c17580i1;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppOAuthConsentScreenStages\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"App Event for when consent screen is either shown or dismissed\\n  If consent screen information couldn't be fetched, it'll be logged only once (with screenState = dismissed).\\n  If consent screen information was fetched, it'll be logged once as screenState = shown and later\\n  while dismissing as screenState = dismissed\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"},{\"name\":\"screenState\",\"type\":\"string\",\"doc\":\"State of the Consent screen (e.g. shown, dismissed)\"},{\"name\":\"orientation\",\"type\":\"string\",\"doc\":\"Orientation of the device (e.g. portrait, landscape)\"},{\"name\":\"requestId\",\"type\":[\"null\",\"string\"],\"doc\":\"Request Id returned by fetch consent screen API response\",\"default\":null},{\"name\":\"dismissReason\",\"type\":[\"null\",\"string\"],\"doc\":\"Reason could be consent_granted (after AuthCode response is fetched) or any error due to API failure/user action\\n    It should be logged only when screenState = dismissed\",\"default\":null},{\"name\":\"language\",\"type\":[\"null\",\"string\"],\"doc\":\"Language could be user selected or partner selected or default language in tc app;\\n    It should be logged only when screenState = dismissed && dismissReason = consent_granted for legal reasons\",\"default\":null},{\"name\":\"grantedScopes\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"Scopes granted by the user. It should be logged only when screenState = dismissed\",\"default\":null}]}");
        f49483j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49484k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49484k, m8613i0);
        f49485l = f49484k.createDatumWriter(m8613i0);
        f49486m = f49484k.createDatumReader(m8613i0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.truecaller.tracking.events.ClientHeaderV2] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.CharSequence] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Utf8 utf8;
        GenericData.Array array;
        Utf8 utf82;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Object obj = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49487a = null;
            } else {
                if (this.f49487a == null) {
                    this.f49487a = new C17638l3();
                }
                this.f49487a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49488b = null;
            } else {
                if (this.f49488b == null) {
                    this.f49488b = new ClientHeaderV2();
                }
                this.f49488b.customDecode(resolvingDecoder);
            }
            Utf8 utf83 = this.f49489c;
            this.f49489c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49490d;
            this.f49490d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49491e;
            this.f49491e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49492f = null;
            } else {
                Utf8 utf86 = this.f49492f;
                this.f49492f = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49493g = null;
            } else {
                Utf8 utf87 = this.f49493g;
                this.f49493g = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49494h = null;
            } else {
                Utf8 utf88 = this.f49494h;
                this.f49494h = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49495i = null;
                return;
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<CharSequence> list = this.f49495i;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, (Schema) C22128a.m8706H1(f49483j, "grantedScopes", 1));
                this.f49495i = list;
            } else {
                list.clear();
            }
            if (list instanceof GenericData.Array) {
                array = list;
                utf82 = null;
            } else {
                array = null;
                utf82 = null;
            }
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    Utf8 utf89 = array != null ? (CharSequence) array.peek() : utf82;
                    readArrayStart = C22128a.m8594n(resolvingDecoder, utf89 instanceof Utf8 ? utf89 : utf82, list, readArrayStart, 1L);
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        int i = 0;
        while (i < 9) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() == 1) {
                        if (this.f49487a == null) {
                            this.f49487a = new C17638l3();
                        }
                        this.f49487a.customDecode(resolvingDecoder);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49487a = obj;
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() == 1) {
                        if (this.f49488b == null) {
                            this.f49488b = new ClientHeaderV2();
                        }
                        this.f49488b.customDecode(resolvingDecoder);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49488b = obj;
                        break;
                    }
                case 2:
                    CharSequence charSequence = this.f49489c;
                    this.f49489c = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : obj);
                    break;
                case 3:
                    CharSequence charSequence2 = this.f49490d;
                    this.f49490d = resolvingDecoder.readString(charSequence2 instanceof Utf8 ? (Utf8) charSequence2 : obj);
                    break;
                case 4:
                    CharSequence charSequence3 = this.f49491e;
                    this.f49491e = resolvingDecoder.readString(charSequence3 instanceof Utf8 ? (Utf8) charSequence3 : obj);
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() == 1) {
                        CharSequence charSequence4 = this.f49492f;
                        this.f49492f = resolvingDecoder.readString(charSequence4 instanceof Utf8 ? (Utf8) charSequence4 : obj);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49492f = obj;
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() == 1) {
                        Utf8 utf810 = this.f49493g;
                        this.f49493g = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : obj);
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        this.f49493g = obj;
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() == 1) {
                        Utf8 utf811 = this.f49494h;
                        this.f49494h = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        obj = null;
                        break;
                    } else {
                        resolvingDecoder.readNull();
                        obj = null;
                        this.f49494h = null;
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49495i = obj;
                        utf8 = obj;
                    } else {
                        char readArrayStart2 = resolvingDecoder.readArrayStart();
                        List<CharSequence> list2 = this.f49495i;
                        if (list2 == null) {
                            list2 = new GenericData.Array<>(readArrayStart2, (Schema) C22128a.m8706H1(f49483j, "grantedScopes", 1));
                            this.f49495i = list2;
                        } else {
                            list2.clear();
                        }
                        Utf8 utf812 = list2 instanceof GenericData.Array ? (GenericData.Array) list2 : obj;
                        while (true) {
                            utf8 = obj;
                            Object obj2 = obj;
                            if (0 < readArrayStart2) {
                                while (readArrayStart2 != 0) {
                                    Object obj3 = utf812 != null ? (CharSequence) utf812.peek() : obj2;
                                    if (obj3 instanceof Utf8) {
                                        obj2 = (Utf8) obj3;
                                    }
                                    readArrayStart2 = C22128a.m8594n(resolvingDecoder, obj2, list2, readArrayStart2, 1L);
                                    obj2 = null;
                                }
                                readArrayStart2 = resolvingDecoder.arrayNext();
                                obj = null;
                            }
                        }
                    }
                    obj = utf8;
                    break;
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
            i++;
            obj = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49487a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49487a.customEncode(encoder);
        }
        if (this.f49488b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49488b.customEncode(encoder);
        }
        encoder.writeString(this.f49489c);
        encoder.writeString(this.f49490d);
        encoder.writeString(this.f49491e);
        if (this.f49492f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49492f);
        }
        if (this.f49493g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49493g);
        }
        if (this.f49494h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49494h);
        }
        if (this.f49495i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size = this.f49495i.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (CharSequence charSequence : this.f49495i) {
            c++;
            encoder.startItem();
            encoder.writeString(charSequence);
        }
        encoder.writeArrayEnd();
        if (c != size) {
            throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
        }
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49487a;
            case 1:
                return this.f49488b;
            case 2:
                return this.f49489c;
            case 3:
                return this.f49490d;
            case 4:
                return this.f49491e;
            case 5:
                return this.f49492f;
            case 6:
                return this.f49493g;
            case 7:
                return this.f49494h;
            case 8:
                return this.f49495i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49483j;
    }

    public SpecificData getSpecificData() {
        return f49484k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49487a = (C17638l3) obj;
                return;
            case 1:
                this.f49488b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49489c = (CharSequence) obj;
                return;
            case 3:
                this.f49490d = (CharSequence) obj;
                return;
            case 4:
                this.f49491e = (CharSequence) obj;
                return;
            case 5:
                this.f49492f = (CharSequence) obj;
                return;
            case 6:
                this.f49493g = (CharSequence) obj;
                return;
            case 7:
                this.f49494h = (CharSequence) obj;
                return;
            case 8:
                this.f49495i = (List) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49486m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49485l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
