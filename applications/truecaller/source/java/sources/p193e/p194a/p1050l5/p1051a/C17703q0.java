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
/* renamed from: e.a.l5.a.q0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/q0.class */
public class C17703q0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: o */
    public static final Schema f50083o;

    /* renamed from: p */
    public static SpecificData f50084p;

    /* renamed from: q */
    public static final DatumWriter<C17703q0> f50085q;

    /* renamed from: r */
    public static final DatumReader<C17703q0> f50086r;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50087a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50088b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50089c;
    @Deprecated

    /* renamed from: d */
    public C17669n3 f50090d;
    @Deprecated

    /* renamed from: e */
    public C17828y3 f50091e;
    @Deprecated

    /* renamed from: f */
    public C17772u3 f50092f;
    @Deprecated

    /* renamed from: g */
    public C17742s3 f50093g;
    @Deprecated

    /* renamed from: h */
    public C17712q3 f50094h;
    @Deprecated

    /* renamed from: i */
    public C17757t3 f50095i;
    @Deprecated

    /* renamed from: j */
    public C17622k3 f50096j;
    @Deprecated

    /* renamed from: k */
    public int f50097k;
    @Deprecated

    /* renamed from: l */
    public List<C17535f4> f50098l;
    @Deprecated

    /* renamed from: m */
    public CharSequence f50099m;
    @Deprecated

    /* renamed from: n */
    public C17445a4 f50100n;

    /* renamed from: e.a.l5.a.q0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/q0$b.class */
    public static class C17705b extends SpecificRecordBuilderBase<C17703q0> implements RecordBuilder<C17703q0> {

        /* renamed from: a */
        public CharSequence f50101a;

        /* renamed from: b */
        public C17669n3 f50102b;

        /* renamed from: c */
        public C17828y3 f50103c;

        /* renamed from: d */
        public C17772u3 f50104d;

        /* renamed from: e */
        public C17742s3 f50105e;

        /* renamed from: f */
        public C17712q3 f50106f;

        /* renamed from: g */
        public C17757t3 f50107g;

        /* renamed from: h */
        public C17622k3 f50108h;

        /* renamed from: i */
        public int f50109i;

        /* renamed from: j */
        public List<C17535f4> f50110j;

        /* renamed from: k */
        public CharSequence f50111k;

        /* renamed from: l */
        public C17445a4 f50112l;

        public C17705b(C17704a c17704a) {
            super(C17703q0.f50083o);
        }

        /* renamed from: a */
        public C17703q0 build() {
            try {
                C17703q0 c17703q0 = new C17703q0();
                c17703q0.f50087a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17703q0.f50088b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17703q0.f50089c = fieldSetFlags()[2] ? this.f50101a : (CharSequence) defaultValue(fields()[2]);
                c17703q0.f50090d = fieldSetFlags()[3] ? this.f50102b : (C17669n3) defaultValue(fields()[3]);
                c17703q0.f50091e = fieldSetFlags()[4] ? this.f50103c : (C17828y3) defaultValue(fields()[4]);
                c17703q0.f50092f = fieldSetFlags()[5] ? this.f50104d : (C17772u3) defaultValue(fields()[5]);
                c17703q0.f50093g = fieldSetFlags()[6] ? this.f50105e : (C17742s3) defaultValue(fields()[6]);
                c17703q0.f50094h = fieldSetFlags()[7] ? this.f50106f : (C17712q3) defaultValue(fields()[7]);
                c17703q0.f50095i = fieldSetFlags()[8] ? this.f50107g : (C17757t3) defaultValue(fields()[8]);
                c17703q0.f50096j = fieldSetFlags()[9] ? this.f50108h : (C17622k3) defaultValue(fields()[9]);
                c17703q0.f50097k = fieldSetFlags()[10] ? this.f50109i : ((Integer) defaultValue(fields()[10])).intValue();
                c17703q0.f50098l = fieldSetFlags()[11] ? this.f50110j : (List) defaultValue(fields()[11]);
                c17703q0.f50099m = fieldSetFlags()[12] ? this.f50111k : (CharSequence) defaultValue(fields()[12]);
                c17703q0.f50100n = fieldSetFlags()[13] ? this.f50112l : (C17445a4) defaultValue(fields()[13]);
                return c17703q0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }

        /* renamed from: b */
        public C17705b m15844b(C17622k3 c17622k3) {
            validate(fields()[9], c17622k3);
            this.f50108h = c17622k3;
            fieldSetFlags()[9] = true;
            return this;
        }

        /* renamed from: c */
        public C17705b m15843c(C17712q3 c17712q3) {
            validate(fields()[7], c17712q3);
            this.f50106f = c17712q3;
            fieldSetFlags()[7] = true;
            return this;
        }

        /* renamed from: d */
        public C17705b m15842d(int i) {
            validate(fields()[10], Integer.valueOf(i));
            this.f50109i = i;
            fieldSetFlags()[10] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppHeartBeat\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"state\",\"type\":\"string\"},{\"name\":\"deviceInfo\",\"type\":{\"type\":\"record\",\"name\":\"DeviceInfo\",\"fields\":[{\"name\":\"manufacturer\",\"type\":\"string\"},{\"name\":\"model\",\"type\":\"string\"},{\"name\":\"imei\",\"type\":[\"null\",\"string\"]},{\"name\":\"screenHeight\",\"type\":\"int\"},{\"name\":\"screenWidth\",\"type\":\"int\"},{\"name\":\"density\",\"type\":\"int\"}]}},{\"name\":\"os\",\"type\":\"OS\"},{\"name\":\"network\",\"type\":{\"type\":\"record\",\"name\":\"Network\",\"fields\":[{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"ip\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}},{\"name\":\"language\",\"type\":{\"type\":\"record\",\"name\":\"Language\",\"fields\":[{\"name\":\"appLanguage\",\"type\":\"string\"},{\"name\":\"appT9Language\",\"type\":\"string\"},{\"name\":\"deviceLanguage\",\"type\":\"string\"}]}},{\"name\":\"gsmCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"GsmCellInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"cid\",\"type\":\"int\"},{\"name\":\"lac\",\"type\":\"int\"}]}],\"default\":null},{\"name\":\"lteCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"LteCellInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"ci\",\"type\":\"int\"},{\"name\":\"tac\",\"type\":\"int\"}]}],\"default\":null},{\"name\":\"cdmaCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CdmaCellInfo\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"}]}],\"default\":null},{\"name\":\"simSlots\",\"type\":\"int\"},{\"name\":\"simInfo\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SimInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"msin\",\"type\":[\"null\",\"string\"]},{\"name\":\"isActive\",\"type\":\"boolean\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]}]}}},{\"name\":\"adId\",\"type\":[\"null\",\"string\"]},{\"name\":\"packageInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"PackageInfo\",\"fields\":[{\"name\":\"installerPackage\",\"type\":\"string\",\"doc\":\"Package name of the application that installed Truecaller\"},{\"name\":\"preloadPartnerName\",\"type\":\"string\",\"doc\":\"Name of the OEM partner (only for preloads, null otherwise)\"}]}],\"default\":null}]}");
        f50083o = m8613i0;
        SpecificData specificData = new SpecificData();
        f50084p = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50084p, m8613i0);
        f50085q = f50084p.createDatumWriter(m8613i0);
        f50086r = f50084p.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50087a = null;
            } else {
                if (this.f50087a == null) {
                    this.f50087a = new C17638l3();
                }
                this.f50087a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50088b = null;
            } else {
                if (this.f50088b == null) {
                    this.f50088b = new ClientHeaderV2();
                }
                this.f50088b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50089c;
            this.f50089c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (this.f50090d == null) {
                this.f50090d = new C17669n3();
            }
            this.f50090d.customDecode(resolvingDecoder);
            if (this.f50091e == null) {
                this.f50091e = new C17828y3();
            }
            this.f50091e.customDecode(resolvingDecoder);
            if (this.f50092f == null) {
                this.f50092f = new C17772u3();
            }
            this.f50092f.customDecode(resolvingDecoder);
            if (this.f50093g == null) {
                this.f50093g = new C17742s3();
            }
            this.f50093g.customDecode(resolvingDecoder);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50094h = null;
            } else {
                if (this.f50094h == null) {
                    this.f50094h = new C17712q3();
                }
                this.f50094h.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50095i = null;
            } else {
                if (this.f50095i == null) {
                    this.f50095i = new C17757t3();
                }
                this.f50095i.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50096j = null;
            } else {
                if (this.f50096j == null) {
                    this.f50096j = new C17622k3();
                }
                this.f50096j.customDecode(resolvingDecoder);
            }
            this.f50097k = resolvingDecoder.readInt();
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17535f4> list = this.f50098l;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f50083o.getField("simInfo").schema());
                this.f50098l = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17535f4 c17535f4 = array != null ? (C17535f4) array.peek() : null;
                    C17535f4 c17535f42 = c17535f4;
                    if (c17535f4 == null) {
                        c17535f42 = new C17535f4();
                    }
                    c17535f42.customDecode(resolvingDecoder);
                    list.add(c17535f42);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50099m = null;
            } else {
                Utf8 utf82 = this.f50099m;
                this.f50099m = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50100n = null;
                return;
            }
            if (this.f50100n == null) {
                this.f50100n = new C17445a4();
            }
            this.f50100n.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 14; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50087a = null;
                        break;
                    } else {
                        if (this.f50087a == null) {
                            this.f50087a = new C17638l3();
                        }
                        this.f50087a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50088b = null;
                        break;
                    } else {
                        if (this.f50088b == null) {
                            this.f50088b = new ClientHeaderV2();
                        }
                        this.f50088b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf83 = this.f50089c;
                    this.f50089c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    break;
                case 3:
                    if (this.f50090d == null) {
                        this.f50090d = new C17669n3();
                    }
                    this.f50090d.customDecode(resolvingDecoder);
                    break;
                case 4:
                    if (this.f50091e == null) {
                        this.f50091e = new C17828y3();
                    }
                    this.f50091e.customDecode(resolvingDecoder);
                    break;
                case 5:
                    if (this.f50092f == null) {
                        this.f50092f = new C17772u3();
                    }
                    this.f50092f.customDecode(resolvingDecoder);
                    break;
                case 6:
                    if (this.f50093g == null) {
                        this.f50093g = new C17742s3();
                    }
                    this.f50093g.customDecode(resolvingDecoder);
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50094h = null;
                        break;
                    } else {
                        if (this.f50094h == null) {
                            this.f50094h = new C17712q3();
                        }
                        this.f50094h.customDecode(resolvingDecoder);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50095i = null;
                        break;
                    } else {
                        if (this.f50095i == null) {
                            this.f50095i = new C17757t3();
                        }
                        this.f50095i.customDecode(resolvingDecoder);
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50096j = null;
                        break;
                    } else {
                        if (this.f50096j == null) {
                            this.f50096j = new C17622k3();
                        }
                        this.f50096j.customDecode(resolvingDecoder);
                        break;
                    }
                case 10:
                    this.f50097k = resolvingDecoder.readInt();
                    break;
                case 11:
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    List<C17535f4> list2 = this.f50098l;
                    if (list2 == null) {
                        list2 = new GenericData.Array<>(readArrayStart2, f50083o.getField("simInfo").schema());
                        this.f50098l = list2;
                    } else {
                        list2.clear();
                    }
                    GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                    while (0 < readArrayStart2) {
                        while (readArrayStart2 != 0) {
                            C17535f4 c17535f43 = array2 != null ? (C17535f4) array2.peek() : null;
                            C17535f4 c17535f44 = c17535f43;
                            if (c17535f43 == null) {
                                c17535f44 = new C17535f4();
                            }
                            c17535f44.customDecode(resolvingDecoder);
                            list2.add(c17535f44);
                            readArrayStart2--;
                        }
                        readArrayStart2 = resolvingDecoder.arrayNext();
                    }
                    break;
                case 12:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50099m = null;
                        break;
                    } else {
                        Utf8 utf84 = this.f50099m;
                        this.f50099m = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                        break;
                    }
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50100n = null;
                        break;
                    } else {
                        if (this.f50100n == null) {
                            this.f50100n = new C17445a4();
                        }
                        this.f50100n.customDecode(resolvingDecoder);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50087a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50087a.customEncode(encoder);
        }
        if (this.f50088b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50088b.customEncode(encoder);
        }
        encoder.writeString(this.f50089c);
        this.f50090d.customEncode(encoder);
        C17828y3 c17828y3 = this.f50091e;
        encoder.writeString(c17828y3.f50747a);
        encoder.writeString(c17828y3.f50748b);
        this.f50092f.customEncode(encoder);
        C17742s3 c17742s3 = this.f50093g;
        encoder.writeString(c17742s3.f50294a);
        encoder.writeString(c17742s3.f50295b);
        encoder.writeString(c17742s3.f50296c);
        if (this.f50094h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17712q3 c17712q3 = this.f50094h;
            encoder.writeInt(c17712q3.f50135a);
            encoder.writeInt(c17712q3.f50136b);
            encoder.writeInt(c17712q3.f50137c);
            encoder.writeInt(c17712q3.f50138d);
        }
        if (this.f50095i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17757t3 c17757t3 = this.f50095i;
            encoder.writeInt(c17757t3.f50350a);
            encoder.writeInt(c17757t3.f50351b);
            encoder.writeInt(c17757t3.f50352c);
            encoder.writeInt(c17757t3.f50353d);
        }
        if (this.f50096j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            C17622k3 c17622k3 = this.f50096j;
            encoder.writeFloat(c17622k3.f49699a);
            encoder.writeFloat(c17622k3.f49700b);
        }
        encoder.writeInt(this.f50097k);
        long size = this.f50098l.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17535f4 c17535f4 : this.f50098l) {
            c++;
            encoder.startItem();
            c17535f4.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            if (this.f50099m == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
            } else {
                encoder.writeIndex(1);
                encoder.writeString(this.f50099m);
            }
            if (this.f50100n == null) {
                encoder.writeIndex(0);
                encoder.writeNull();
                return;
            }
            encoder.writeIndex(1);
            C17445a4 c17445a4 = this.f50100n;
            encoder.writeString(c17445a4.f48868a);
            encoder.writeString(c17445a4.f48869b);
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50087a;
            case 1:
                return this.f50088b;
            case 2:
                return this.f50089c;
            case 3:
                return this.f50090d;
            case 4:
                return this.f50091e;
            case 5:
                return this.f50092f;
            case 6:
                return this.f50093g;
            case 7:
                return this.f50094h;
            case 8:
                return this.f50095i;
            case 9:
                return this.f50096j;
            case 10:
                return Integer.valueOf(this.f50097k);
            case 11:
                return this.f50098l;
            case 12:
                return this.f50099m;
            case 13:
                return this.f50100n;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50083o;
    }

    public SpecificData getSpecificData() {
        return f50084p;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50087a = (C17638l3) obj;
                return;
            case 1:
                this.f50088b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50089c = (CharSequence) obj;
                return;
            case 3:
                this.f50090d = (C17669n3) obj;
                return;
            case 4:
                this.f50091e = (C17828y3) obj;
                return;
            case 5:
                this.f50092f = (C17772u3) obj;
                return;
            case 6:
                this.f50093g = (C17742s3) obj;
                return;
            case 7:
                this.f50094h = (C17712q3) obj;
                return;
            case 8:
                this.f50095i = (C17757t3) obj;
                return;
            case 9:
                this.f50096j = (C17622k3) obj;
                return;
            case 10:
                this.f50097k = ((Integer) obj).intValue();
                return;
            case 11:
                this.f50098l = (List) obj;
                return;
            case 12:
                this.f50099m = (CharSequence) obj;
                return;
            case 13:
                this.f50100n = (C17445a4) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50086r.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50085q.write(this, SpecificData.getEncoder(objectOutput));
    }
}
