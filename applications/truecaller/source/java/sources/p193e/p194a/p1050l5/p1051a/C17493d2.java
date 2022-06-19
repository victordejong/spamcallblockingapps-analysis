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
/* renamed from: e.a.l5.a.d2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/d2.class */
public class C17493d2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49070j;

    /* renamed from: k */
    public static SpecificData f49071k;

    /* renamed from: l */
    public static final DatumWriter<C17493d2> f49072l;

    /* renamed from: m */
    public static final DatumReader<C17493d2> f49073m;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49074a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49075b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49076c;
    @Deprecated

    /* renamed from: d */
    public Map<CharSequence, CharSequence> f49077d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49078e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49079f;
    @Deprecated

    /* renamed from: g */
    public Map<CharSequence, CharSequence> f49080g;
    @Deprecated

    /* renamed from: h */
    public CharSequence f49081h;
    @Deprecated

    /* renamed from: i */
    public CharSequence f49082i;

    /* renamed from: e.a.l5.a.d2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/d2$b.class */
    public static class C17495b extends SpecificRecordBuilderBase<C17493d2> implements RecordBuilder<C17493d2> {

        /* renamed from: a */
        public CharSequence f49083a;

        /* renamed from: b */
        public Map<CharSequence, CharSequence> f49084b;

        /* renamed from: c */
        public CharSequence f49085c;

        /* renamed from: d */
        public CharSequence f49086d;

        /* renamed from: e */
        public Map<CharSequence, CharSequence> f49087e;

        /* renamed from: f */
        public CharSequence f49088f;

        /* renamed from: g */
        public CharSequence f49089g;

        public C17495b(C17494a c17494a) {
            super(C17493d2.f49070j);
        }

        /* renamed from: a */
        public C17493d2 build() {
            try {
                C17493d2 c17493d2 = new C17493d2();
                c17493d2.f49074a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17493d2.f49075b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17493d2.f49076c = fieldSetFlags()[2] ? this.f49083a : (CharSequence) defaultValue(fields()[2]);
                c17493d2.f49077d = fieldSetFlags()[3] ? this.f49084b : (Map) defaultValue(fields()[3]);
                c17493d2.f49078e = fieldSetFlags()[4] ? this.f49085c : (CharSequence) defaultValue(fields()[4]);
                c17493d2.f49079f = fieldSetFlags()[5] ? this.f49086d : (CharSequence) defaultValue(fields()[5]);
                c17493d2.f49080g = fieldSetFlags()[6] ? this.f49087e : (Map) defaultValue(fields()[6]);
                c17493d2.f49081h = fieldSetFlags()[7] ? this.f49088f : (CharSequence) defaultValue(fields()[7]);
                c17493d2.f49082i = fieldSetFlags()[8] ? this.f49089g : (CharSequence) defaultValue(fields()[8]);
                return c17493d2;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }

        /* renamed from: b */
        public C17495b m16002b(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49085c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: c */
        public C17495b m16001c(Map<CharSequence, CharSequence> map) {
            validate(fields()[3], map);
            this.f49084b = map;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: d */
        public C17495b m16000d(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49083a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: e */
        public C17495b m15999e(Map<CharSequence, CharSequence> map) {
            validate(fields()[6], map);
            this.f49087e = map;
            fieldSetFlags()[6] = true;
            return this;
        }

        /* renamed from: f */
        public C17495b m15998f(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f49086d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSmsFeedback\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"feedbackType\",\"type\":\"string\",\"doc\":\"Feedback Type - not_spam | give_feedback | spam ,etc.\"},{\"name\":\"feedbackReason\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Feedback reason selected - bank_transaction | not_spam | wrongly_classified ,etc.\",\"default\":null},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"Current screen from which feedback was given - conversation_view, insights_tab, pfm_tab, etc.\"},{\"name\":\"senderId\",\"type\":\"string\",\"doc\":\"SMS sender ID\"},{\"name\":\"messageInfo\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Message information including masked body of SMS\",\"default\":null},{\"name\":\"actionInfo\",\"type\":[\"null\",\"string\"],\"doc\":\"Action button information\",\"default\":null},{\"name\":\"eventDate\",\"type\":[\"null\",\"string\"],\"doc\":\"Date of event\",\"default\":null}]}");
        f49070j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49071k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49071k, m8613i0);
        f49072l = f49071k.createDatumWriter(m8613i0);
        f49073m = f49071k.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17495b m16004a() {
        return new C17495b(null);
    }

    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v198, types: [long] */
    /* JADX WARN: Type inference failed for: r0v200, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        HashMap hashMap;
        HashMap hashMap2;
        Utf8 utf8;
        HashMap hashMap3;
        HashMap hashMap4;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49074a = null;
            } else {
                if (this.f49074a == null) {
                    this.f49074a = new C17638l3();
                }
                this.f49074a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49075b = null;
            } else {
                if (this.f49075b == null) {
                    this.f49075b = new ClientHeaderV2();
                }
                this.f49075b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49076c;
            this.f49076c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() == 1) {
                char readMapStart = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map = this.f49077d;
                if (map == null) {
                    HashMap hashMap5 = new HashMap(readMapStart);
                    this.f49077d = hashMap5;
                    hashMap4 = hashMap5;
                } else {
                    map.clear();
                    hashMap4 = map;
                }
                while (true) {
                    utf8 = null;
                    if (0 >= readMapStart) {
                        break;
                    }
                    while (readMapStart != 0) {
                        readMapStart = C22128a.m8550y(resolvingDecoder, null, hashMap4, resolvingDecoder.readString((Utf8) null), readMapStart, 1L);
                    }
                    readMapStart = resolvingDecoder.mapNext();
                }
            } else {
                resolvingDecoder.readNull();
                this.f49077d = null;
                utf8 = null;
            }
            Utf8 utf83 = this.f49078e;
            this.f49078e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : utf8);
            CharSequence charSequence = this.f49079f;
            this.f49079f = resolvingDecoder.readString(charSequence instanceof Utf8 ? (Utf8) charSequence : utf8);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49080g = utf8;
            } else {
                char readMapStart2 = resolvingDecoder.readMapStart();
                Map<CharSequence, CharSequence> map2 = this.f49080g;
                if (map2 == null) {
                    HashMap hashMap6 = new HashMap(readMapStart2);
                    this.f49080g = hashMap6;
                    hashMap3 = hashMap6;
                } else {
                    map2.clear();
                    hashMap3 = map2;
                }
                while (0 < readMapStart2) {
                    while (readMapStart2 != 0) {
                        readMapStart2 = C22128a.m8550y(resolvingDecoder, utf8, hashMap3, resolvingDecoder.readString(utf8), readMapStart2, 1L);
                    }
                    readMapStart2 = resolvingDecoder.mapNext();
                }
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49081h = utf8;
            } else {
                CharSequence charSequence2 = this.f49081h;
                this.f49081h = resolvingDecoder.readString(charSequence2 instanceof Utf8 ? (Utf8) charSequence2 : utf8);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49082i = utf8;
                return;
            }
            CharSequence charSequence3 = this.f49082i;
            if (charSequence3 instanceof Utf8) {
                utf8 = (Utf8) charSequence3;
            }
            this.f49082i = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49074a = null;
                        break;
                    } else {
                        if (this.f49074a == null) {
                            this.f49074a = new C17638l3();
                        }
                        this.f49074a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49075b = null;
                        break;
                    } else {
                        if (this.f49075b == null) {
                            this.f49075b = new ClientHeaderV2();
                        }
                        this.f49075b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf84 = this.f49076c;
                    this.f49076c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49077d = null;
                        break;
                    } else {
                        char readMapStart3 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map3 = this.f49077d;
                        if (map3 == null) {
                            HashMap hashMap7 = new HashMap(readMapStart3);
                            this.f49077d = hashMap7;
                            hashMap = hashMap7;
                        } else {
                            map3.clear();
                            hashMap = map3;
                        }
                        while (0 < readMapStart3) {
                            while (readMapStart3 != 0) {
                                readMapStart3 = C22128a.m8550y(resolvingDecoder, null, hashMap, resolvingDecoder.readString((Utf8) null), readMapStart3, 1L);
                            }
                            readMapStart3 = resolvingDecoder.mapNext();
                        }
                        break;
                    }
                case 4:
                    Utf8 utf85 = this.f49078e;
                    this.f49078e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 5:
                    Utf8 utf86 = this.f49079f;
                    this.f49079f = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49080g = null;
                        break;
                    } else {
                        char readMapStart4 = resolvingDecoder.readMapStart();
                        Map<CharSequence, CharSequence> map4 = this.f49080g;
                        if (map4 == null) {
                            HashMap hashMap8 = new HashMap(readMapStart4);
                            this.f49080g = hashMap8;
                            hashMap2 = hashMap8;
                        } else {
                            map4.clear();
                            hashMap2 = map4;
                        }
                        while (0 < readMapStart4) {
                            while (readMapStart4 != 0) {
                                readMapStart4 = C22128a.m8550y(resolvingDecoder, null, hashMap2, resolvingDecoder.readString((Utf8) null), readMapStart4, 1L);
                            }
                            readMapStart4 = resolvingDecoder.mapNext();
                        }
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49081h = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49081h;
                        this.f49081h = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49082i = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49082i;
                        this.f49082i = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49074a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49074a.customEncode(encoder);
        }
        if (this.f49075b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49075b.customEncode(encoder);
        }
        encoder.writeString(this.f49076c);
        if (this.f49077d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f49077d.size();
            encoder.writeMapStart();
            encoder.setItemCount(size);
            char c = 0;
            for (Map.Entry<CharSequence, CharSequence> entry : this.f49077d.entrySet()) {
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
        encoder.writeString(this.f49078e);
        encoder.writeString(this.f49079f);
        if (this.f49080g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size2 = this.f49080g.size();
            encoder.writeMapStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (Map.Entry<CharSequence, CharSequence> entry2 : this.f49080g.entrySet()) {
                c2++;
                encoder.startItem();
                encoder.writeString(entry2.getKey());
                encoder.writeString(entry2.getValue());
            }
            encoder.writeMapEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Map-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
        }
        if (this.f49081h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49081h);
        }
        if (this.f49082i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49082i);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49074a;
            case 1:
                return this.f49075b;
            case 2:
                return this.f49076c;
            case 3:
                return this.f49077d;
            case 4:
                return this.f49078e;
            case 5:
                return this.f49079f;
            case 6:
                return this.f49080g;
            case 7:
                return this.f49081h;
            case 8:
                return this.f49082i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49070j;
    }

    public SpecificData getSpecificData() {
        return f49071k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49074a = (C17638l3) obj;
                return;
            case 1:
                this.f49075b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49076c = (CharSequence) obj;
                return;
            case 3:
                this.f49077d = (Map) obj;
                return;
            case 4:
                this.f49078e = (CharSequence) obj;
                return;
            case 5:
                this.f49079f = (CharSequence) obj;
                return;
            case 6:
                this.f49080g = (Map) obj;
                return;
            case 7:
                this.f49081h = (CharSequence) obj;
                return;
            case 8:
                this.f49082i = (CharSequence) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49073m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49072l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
