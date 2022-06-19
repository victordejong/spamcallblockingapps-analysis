package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
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
/* renamed from: e.a.l5.a.g2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/g2.class */
public class C17547g2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49343h;

    /* renamed from: i */
    public static SpecificData f49344i;

    /* renamed from: j */
    public static final DatumWriter<C17547g2> f49345j;

    /* renamed from: k */
    public static final DatumReader<C17547g2> f49346k;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49347a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49348b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49349c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49350d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49351e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49352f;
    @Deprecated

    /* renamed from: g */
    public Boolean f49353g;

    /* renamed from: e.a.l5.a.g2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/g2$b.class */
    public static class C17549b extends SpecificRecordBuilderBase<C17547g2> implements RecordBuilder<C17547g2> {

        /* renamed from: a */
        public CharSequence f49354a;

        /* renamed from: b */
        public CharSequence f49355b;

        /* renamed from: c */
        public CharSequence f49356c;

        /* renamed from: d */
        public CharSequence f49357d;

        /* renamed from: e */
        public Boolean f49358e;

        public C17549b(C17548a c17548a) {
            super(C17547g2.f49343h);
        }

        /* renamed from: a */
        public C17547g2 build() {
            try {
                C17547g2 c17547g2 = new C17547g2();
                c17547g2.f49347a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17547g2.f49348b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17547g2.f49349c = fieldSetFlags()[2] ? this.f49354a : (CharSequence) defaultValue(fields()[2]);
                c17547g2.f49350d = fieldSetFlags()[3] ? this.f49355b : (CharSequence) defaultValue(fields()[3]);
                c17547g2.f49351e = fieldSetFlags()[4] ? this.f49356c : (CharSequence) defaultValue(fields()[4]);
                c17547g2.f49352f = fieldSetFlags()[5] ? this.f49357d : (CharSequence) defaultValue(fields()[5]);
                c17547g2.f49353g = fieldSetFlags()[6] ? this.f49358e : (Boolean) defaultValue(fields()[6]);
                return c17547g2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17549b m15955b(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49355b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: c */
        public C17549b m15954c(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f49357d = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: d */
        public C17549b m15953d(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49356c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: e */
        public C17549b m15952e(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49354a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppStartupDialog\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Shows interactions with app startup dialogs\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"type\",\"type\":\"string\",\"doc\":\"dialog type\"},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"action on dialog\"},{\"name\":\"subAction\",\"type\":[\"null\",\"string\"],\"doc\":\"dialog-specific sub-action\",\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"context (source) of the dialog\",\"default\":null},{\"name\":\"newUser\",\"type\":[\"null\",\"boolean\"],\"doc\":\"whether it is a returning user or a new one. Currently used only for credit dialogs\",\"default\":null}]}");
        f49343h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49344i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49344i, m8613i0);
        f49345j = f49344i.createDatumWriter(m8613i0);
        f49346k = f49344i.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17549b m15957a() {
        return new C17549b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49347a = null;
            } else {
                if (this.f49347a == null) {
                    this.f49347a = new C17638l3();
                }
                this.f49347a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49348b = null;
            } else {
                if (this.f49348b == null) {
                    this.f49348b = new ClientHeaderV2();
                }
                this.f49348b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49349c;
            this.f49349c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49350d;
            this.f49350d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49351e = null;
            } else {
                Utf8 utf83 = this.f49351e;
                this.f49351e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49352f = null;
            } else {
                Utf8 utf84 = this.f49352f;
                this.f49352f = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49353g = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49353g = null;
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49347a = null;
                        break;
                    } else {
                        if (this.f49347a == null) {
                            this.f49347a = new C17638l3();
                        }
                        this.f49347a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49348b = null;
                        break;
                    } else {
                        if (this.f49348b == null) {
                            this.f49348b = new ClientHeaderV2();
                        }
                        this.f49348b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    Utf8 utf85 = this.f49349c;
                    this.f49349c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    break;
                case 3:
                    Utf8 utf86 = this.f49350d;
                    this.f49350d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49351e = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49351e;
                        this.f49351e = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49352f = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49352f;
                        this.f49352f = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49353g = null;
                        break;
                    } else {
                        this.f49353g = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49347a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49347a.customEncode(encoder);
        }
        if (this.f49348b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49348b.customEncode(encoder);
        }
        encoder.writeString(this.f49349c);
        encoder.writeString(this.f49350d);
        if (this.f49351e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49351e);
        }
        if (this.f49352f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49352f);
        }
        if (this.f49353g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49353g.booleanValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49347a;
            case 1:
                return this.f49348b;
            case 2:
                return this.f49349c;
            case 3:
                return this.f49350d;
            case 4:
                return this.f49351e;
            case 5:
                return this.f49352f;
            case 6:
                return this.f49353g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49343h;
    }

    public SpecificData getSpecificData() {
        return f49344i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49347a = (C17638l3) obj;
                return;
            case 1:
                this.f49348b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f49349c = (CharSequence) obj;
                return;
            case 3:
                this.f49350d = (CharSequence) obj;
                return;
            case 4:
                this.f49351e = (CharSequence) obj;
                return;
            case 5:
                this.f49352f = (CharSequence) obj;
                return;
            case 6:
                this.f49353g = (Boolean) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49346k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49345j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
