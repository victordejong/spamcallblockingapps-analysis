package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Map;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
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
/* renamed from: e.a.l5.a.e2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e2.class */
public class C17511e2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: l */
    public static final Schema f49142l;

    /* renamed from: m */
    public static SpecificData f49143m;

    /* renamed from: n */
    public static final DatumWriter<C17511e2> f49144n;

    /* renamed from: o */
    public static final DatumReader<C17511e2> f49145o;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49146a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49147b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49148c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49149d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49150e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49151f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f49152g;
    @Deprecated

    /* renamed from: h */
    public int f49153h;
    @Deprecated

    /* renamed from: i */
    public Map<CharSequence, CharSequence> f49154i;
    @Deprecated

    /* renamed from: j */
    public CharSequence f49155j;
    @Deprecated

    /* renamed from: k */
    public CharSequence f49156k;

    /* renamed from: e.a.l5.a.e2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e2$b.class */
    public static class C17513b extends SpecificRecordBuilderBase<C17511e2> implements RecordBuilder<C17511e2> {

        /* renamed from: a */
        public CharSequence f49157a;

        /* renamed from: b */
        public CharSequence f49158b;

        /* renamed from: c */
        public CharSequence f49159c;

        /* renamed from: d */
        public CharSequence f49160d;

        /* renamed from: e */
        public CharSequence f49161e;

        /* renamed from: f */
        public int f49162f;

        /* renamed from: g */
        public CharSequence f49163g;

        /* renamed from: h */
        public CharSequence f49164h;

        public C17513b(C17512a c17512a) {
            super(C17511e2.f49142l);
        }

        /* renamed from: a */
        public C17511e2 build() {
            try {
                C17511e2 c17511e2 = new C17511e2();
                c17511e2.f49146a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17511e2.f49147b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17511e2.f49148c = fieldSetFlags()[2] ? this.f49157a : (CharSequence) defaultValue(fields()[2]);
                c17511e2.f49149d = fieldSetFlags()[3] ? this.f49158b : (CharSequence) defaultValue(fields()[3]);
                c17511e2.f49150e = fieldSetFlags()[4] ? this.f49159c : (CharSequence) defaultValue(fields()[4]);
                c17511e2.f49151f = fieldSetFlags()[5] ? this.f49160d : (CharSequence) defaultValue(fields()[5]);
                c17511e2.f49152g = fieldSetFlags()[6] ? this.f49161e : (CharSequence) defaultValue(fields()[6]);
                c17511e2.f49153h = fieldSetFlags()[7] ? this.f49162f : ((Integer) defaultValue(fields()[7])).intValue();
                c17511e2.f49154i = fieldSetFlags()[8] ? null : (Map) defaultValue(fields()[8]);
                c17511e2.f49155j = fieldSetFlags()[9] ? this.f49163g : (CharSequence) defaultValue(fields()[9]);
                c17511e2.f49156k = fieldSetFlags()[10] ? this.f49164h : (CharSequence) defaultValue(fields()[10]);
                return c17511e2;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSmsInsights\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"feature\",\"type\":\"string\",\"doc\":\"Feature Name - smart_action | smart_notif | info_cards ,etc.\"},{\"name\":\"eventCategory\",\"type\":\"string\",\"doc\":\"Category of event/SMS - bank | bill | travel ,etc.\"},{\"name\":\"eventInfo\",\"type\":\"string\",\"doc\":\"Sender ID of SMS or other misc info\"},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"actionType\",\"type\":\"string\",\"doc\":\"Type of action -  click | view | conversion | rendered\"},{\"name\":\"actions\",\"type\":\"int\"},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Event misc properties\",\"default\":null},{\"name\":\"actionInfo\",\"type\":[\"null\",\"string\"],\"doc\":\"Action button information\",\"default\":null},{\"name\":\"eventDate\",\"type\":[\"null\",\"string\"],\"doc\":\"Date of event\",\"default\":null}]}");
        f49142l = m8613i0;
        SpecificData specificData = new SpecificData();
        f49143m = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49143m, m8613i0);
        f49144n = f49143m.createDatumWriter(m8613i0);
        f49145o = f49143m.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        Utf8 utf8;
        HashMap hashMap2;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49146a = null;
            } else {
                if (this.f49146a == null) {
                    this.f49146a = new C17638l3();
                }
                this.f49146a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49147b = null;
            } else {
                if (this.f49147b == null) {
                    this.f49147b = new ClientHeaderV2();
                }
                this.f49147b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49148c;
            this.f49148c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49149d;
            this.f49149d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f49150e;
            this.f49150e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            Utf8 utf85 = this.f49151f;
            this.f49151f = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            Utf8 utf86 = this.f49152g;
            this.f49152g = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            this.f49153h = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() == 1) {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f49154i;
                if (map == null) {
                    HashMap hashMap3 = new HashMap(readMapStart);
                    this.f49154i = hashMap3;
                    hashMap2 = hashMap3;
                } else {
                    map.clear();
                    hashMap2 = map;
                }
                while (true) {
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
                this.f49154i = null;
                utf8 = null;
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49155j = utf8;
            } else {
                CharSequence charSequence = this.f49155j;
                this.f49155j = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf8);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49156k = utf8;
                return;
            }
            Utf8 utf87 = this.f49156k;
            if (utf87 instanceof Utf8) {
                utf8 = utf87;
            }
            this.f49156k = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 11; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49146a = null;
                        break;
                    } else {
                        if (this.f49146a == null) {
                            this.f49146a = new C17638l3();
                        }
                        this.f49146a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49147b = null;
                        break;
                    } else {
                        if (this.f49147b == null) {
                            this.f49147b = new ClientHeaderV2();
                        }
                        this.f49147b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf88 = this.f49148c;
                    this.f49148c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 3:
                    Utf8 utf89 = this.f49149d;
                    this.f49149d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 4:
                    Utf8 utf810 = this.f49150e;
                    this.f49150e = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                    break;
                case 5:
                    Utf8 utf811 = this.f49151f;
                    this.f49151f = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                    break;
                case 6:
                    Utf8 utf812 = this.f49152g;
                    this.f49152g = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                    break;
                case 7:
                    this.f49153h = resolvingDecoder.readInt();
                    break;
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49154i = null;
                        break;
                    } else {
                        char readMapStart2 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map2 = this.f49154i;
                        if (map2 == null) {
                            HashMap hashMap4 = new HashMap(readMapStart2);
                            this.f49154i = hashMap4;
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
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49155j = null;
                        break;
                    } else {
                        Utf8 utf813 = this.f49155j;
                        this.f49155j = resolvingDecoder.readString(utf813 instanceof Utf8 ? utf813 : null);
                        break;
                    }
                case 10:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49156k = null;
                        break;
                    } else {
                        Utf8 utf814 = this.f49156k;
                        this.f49156k = resolvingDecoder.readString(utf814 instanceof Utf8 ? utf814 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49146a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49146a.customEncode(encoder);
        }
        if (this.f49147b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49147b.customEncode(encoder);
        }
        encoder.writeString(this.f49148c);
        encoder.writeString(this.f49149d);
        encoder.writeString(this.f49150e);
        encoder.writeString(this.f49151f);
        encoder.writeString(this.f49152g);
        encoder.writeInt(this.f49153h);
        if (this.f49154i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f49154i.size();
            encoder.writeMapStart();
            encoder.setItemCount(size);
            char c = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f49154i.entrySet()) {
                c++;
                encoder.startItem();
                encoder.writeString(entry.getKey());
                encoder.writeString(entry.getValue());
            }
            encoder.writeMapEnd();
            if (c != size) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size, ", but element count was "), c, StringConstant.DOT));
            }
        }
        if (this.f49155j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49155j);
        }
        if (this.f49156k == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49156k);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49146a;
            case 1:
                return this.f49147b;
            case 2:
                return this.f49148c;
            case 3:
                return this.f49149d;
            case 4:
                return this.f49150e;
            case 5:
                return this.f49151f;
            case 6:
                return this.f49152g;
            case 7:
                return Integer.valueOf(this.f49153h);
            case 8:
                return this.f49154i;
            case 9:
                return this.f49155j;
            case 10:
                return this.f49156k;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49142l;
    }

    public SpecificData getSpecificData() {
        return f49143m;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49146a = (C17638l3) obj;
                return;
            case 1:
                this.f49147b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49148c = (CharSequence) obj;
                return;
            case 3:
                this.f49149d = (CharSequence) obj;
                return;
            case 4:
                this.f49150e = (CharSequence) obj;
                return;
            case 5:
                this.f49151f = (CharSequence) obj;
                return;
            case 6:
                this.f49152g = (CharSequence) obj;
                return;
            case 7:
                this.f49153h = ((Integer) obj).intValue();
                return;
            case 8:
                this.f49154i = (Map) obj;
                return;
            case 9:
                this.f49155j = (CharSequence) obj;
                return;
            case 10:
                this.f49156k = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49145o.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49144n.write(this, SpecificData.getEncoder(objectOutput));
    }
}
