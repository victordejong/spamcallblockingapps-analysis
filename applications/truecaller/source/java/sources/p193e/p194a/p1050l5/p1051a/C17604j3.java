package p193e.p194a.p1050l5.p1051a;

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
/* renamed from: e.a.l5.a.j3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j3.class */
public class C17604j3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: h */
    public static final Schema f49591h;

    /* renamed from: i */
    public static SpecificData f49592i;

    /* renamed from: j */
    public static final DatumWriter<C17604j3> f49593j;

    /* renamed from: k */
    public static final DatumReader<C17604j3> f49594k;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49595a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f49596b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49597c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49598d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49599e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49600f;
    @Deprecated

    /* renamed from: g */
    public Integer f49601g;

    /* renamed from: e.a.l5.a.j3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j3$b.class */
    public static class C17606b extends SpecificRecordBuilderBase<C17604j3> implements RecordBuilder<C17604j3> {

        /* renamed from: a */
        public CharSequence f49602a;

        /* renamed from: b */
        public CharSequence f49603b;

        /* renamed from: c */
        public CharSequence f49604c;

        public C17606b(C17605a c17605a) {
            super(C17604j3.f49591h);
        }

        /* renamed from: a */
        public C17604j3 build() {
            try {
                C17604j3 c17604j3 = new C17604j3();
                c17604j3.f49595a = fieldSetFlags()[0] ? this.f49602a : (CharSequence) defaultValue(fields()[0]);
                c17604j3.f49596b = fieldSetFlags()[1] ? this.f49603b : (CharSequence) defaultValue(fields()[1]);
                c17604j3.f49597c = fieldSetFlags()[2] ? this.f49604c : (CharSequence) defaultValue(fields()[2]);
                c17604j3.f49598d = fieldSetFlags()[3] ? null : (CharSequence) defaultValue(fields()[3]);
                c17604j3.f49599e = fieldSetFlags()[4] ? null : (CharSequence) defaultValue(fields()[4]);
                c17604j3.f49600f = fieldSetFlags()[5] ? null : (CharSequence) defaultValue(fields()[5]);
                c17604j3.f49601g = fieldSetFlags()[6] ? null : (Integer) defaultValue(fields()[6]);
                return c17604j3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17606b m15927b(CharSequence charSequence) {
            validate(fields()[0], charSequence);
            this.f49602a = charSequence;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: c */
        public C17606b m15926c(CharSequence charSequence) {
            validate(fields()[1], charSequence);
            this.f49603b = charSequence;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: d */
        public C17606b m15925d(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49604c = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"BusinessDetails\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track business details\",\"fields\":[{\"name\":\"businessCountryCode\",\"type\":[\"null\",\"string\"],\"doc\":\"Country code of business\",\"default\":null},{\"name\":\"businessNumber\",\"type\":[\"null\",\"string\"],\"doc\":\"Business phone number\",\"default\":null},{\"name\":\"partnerAccountIid\",\"type\":\"string\",\"doc\":\"partner account id of the partner\"},{\"name\":\"displayName\",\"type\":[\"null\",\"string\"],\"doc\":\"name displayed for the context\",\"default\":null},{\"name\":\"badge\",\"type\":[\"null\",\"string\"],\"doc\":\"badge displayed\",\"default\":null},{\"name\":\"callReason\",\"type\":[\"null\",\"string\"],\"doc\":\"call reason text shown\",\"default\":null},{\"name\":\"spamScoreShown\",\"type\":[\"null\",\"int\"],\"doc\":\"spam score (if displayed)\",\"default\":null}]}");
        f49591h = m8613i0;
        SpecificData specificData = new SpecificData();
        f49592i = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49592i, m8613i0);
        f49593j = f49592i.createDatumWriter(m8613i0);
        f49594k = f49592i.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17606b m15929a() {
        return new C17606b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49595a = null;
            } else {
                Utf8 utf8 = this.f49595a;
                this.f49595a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49596b = null;
            } else {
                Utf8 utf82 = this.f49596b;
                this.f49596b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            Utf8 utf83 = this.f49597c;
            this.f49597c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49598d = null;
            } else {
                Utf8 utf84 = this.f49598d;
                this.f49598d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49599e = null;
            } else {
                Utf8 utf85 = this.f49599e;
                this.f49599e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49600f = null;
            } else {
                Utf8 utf86 = this.f49600f;
                this.f49600f = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49601g = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f49601g = null;
            return;
        }
        for (int i = 0; i < 7; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49595a = null;
                        break;
                    } else {
                        Utf8 utf87 = this.f49595a;
                        this.f49595a = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49596b = null;
                        break;
                    } else {
                        Utf8 utf88 = this.f49596b;
                        this.f49596b = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                        break;
                    }
                case 2:
                    Utf8 utf89 = this.f49597c;
                    this.f49597c = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                    break;
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49598d = null;
                        break;
                    } else {
                        Utf8 utf810 = this.f49598d;
                        this.f49598d = resolvingDecoder.readString(utf810 instanceof Utf8 ? utf810 : null);
                        break;
                    }
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49599e = null;
                        break;
                    } else {
                        Utf8 utf811 = this.f49599e;
                        this.f49599e = resolvingDecoder.readString(utf811 instanceof Utf8 ? utf811 : null);
                        break;
                    }
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49600f = null;
                        break;
                    } else {
                        Utf8 utf812 = this.f49600f;
                        this.f49600f = resolvingDecoder.readString(utf812 instanceof Utf8 ? utf812 : null);
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49601g = null;
                        break;
                    } else {
                        this.f49601g = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49595a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49595a);
        }
        if (this.f49596b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49596b);
        }
        encoder.writeString(this.f49597c);
        if (this.f49598d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49598d);
        }
        if (this.f49599e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49599e);
        }
        if (this.f49600f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49600f);
        }
        if (this.f49601g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f49601g.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f49595a;
            case 1:
                return this.f49596b;
            case 2:
                return this.f49597c;
            case 3:
                return this.f49598d;
            case 4:
                return this.f49599e;
            case 5:
                return this.f49600f;
            case 6:
                return this.f49601g;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49591h;
    }

    public SpecificData getSpecificData() {
        return f49592i;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49595a = (CharSequence) obj;
                return;
            case 1:
                this.f49596b = (CharSequence) obj;
                return;
            case 2:
                this.f49597c = (CharSequence) obj;
                return;
            case 3:
                this.f49598d = (CharSequence) obj;
                return;
            case 4:
                this.f49599e = (CharSequence) obj;
                return;
            case 5:
                this.f49600f = (CharSequence) obj;
                return;
            case 6:
                this.f49601g = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49594k.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49593j.write(this, SpecificData.getEncoder(objectOutput));
    }
}
