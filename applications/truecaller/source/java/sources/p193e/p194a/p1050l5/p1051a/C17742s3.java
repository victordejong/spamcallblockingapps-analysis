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
/* renamed from: e.a.l5.a.s3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/s3.class */
public class C17742s3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50290d;

    /* renamed from: e */
    public static SpecificData f50291e;

    /* renamed from: f */
    public static final DatumWriter<C17742s3> f50292f;

    /* renamed from: g */
    public static final DatumReader<C17742s3> f50293g;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50294a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f50295b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50296c;

    /* renamed from: e.a.l5.a.s3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/s3$b.class */
    public static class C17744b extends SpecificRecordBuilderBase<C17742s3> implements RecordBuilder<C17742s3> {

        /* renamed from: a */
        public CharSequence f50297a;

        /* renamed from: b */
        public CharSequence f50298b;

        /* renamed from: c */
        public CharSequence f50299c;

        public C17744b(C17743a c17743a) {
            super(C17742s3.f50290d);
        }

        /* renamed from: a */
        public C17742s3 build() {
            try {
                C17742s3 c17742s3 = new C17742s3();
                c17742s3.f50294a = fieldSetFlags()[0] ? this.f50297a : (CharSequence) defaultValue(fields()[0]);
                c17742s3.f50295b = fieldSetFlags()[1] ? this.f50298b : (CharSequence) defaultValue(fields()[1]);
                c17742s3.f50296c = fieldSetFlags()[2] ? this.f50299c : (CharSequence) defaultValue(fields()[2]);
                return c17742s3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17744b m15815b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50299c = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"Language\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"appLanguage\",\"type\":\"string\"},{\"name\":\"appT9Language\",\"type\":\"string\"},{\"name\":\"deviceLanguage\",\"type\":\"string\"}]}");
        f50290d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50291e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50291e, m8613i0);
        f50292f = f50291e.createDatumWriter(m8613i0);
        f50293g = f50291e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f50294a;
            this.f50294a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50295b;
            this.f50295b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f50296c;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50296c = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf85 = this.f50294a;
                this.f50294a = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            } else if (pos == 1) {
                Utf8 utf86 = this.f50295b;
                this.f50295b = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                Utf8 utf87 = this.f50296c;
                this.f50296c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50294a);
        encoder.writeString(this.f50295b);
        encoder.writeString(this.f50296c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50295b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50296c;
        }
        return this.f50294a;
    }

    public Schema getSchema() {
        return f50290d;
    }

    public SpecificData getSpecificData() {
        return f50291e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50294a = (CharSequence) obj;
        } else if (i == 1) {
            this.f50295b = (CharSequence) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50296c = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50293g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50292f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
