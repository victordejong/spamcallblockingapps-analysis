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
/* renamed from: e.a.l5.a.y3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/y3.class */
public class C17828y3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f50743c;

    /* renamed from: d */
    public static SpecificData f50744d;

    /* renamed from: e */
    public static final DatumWriter<C17828y3> f50745e;

    /* renamed from: f */
    public static final DatumReader<C17828y3> f50746f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50747a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f50748b;

    /* renamed from: e.a.l5.a.y3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/y3$b.class */
    public static class C17830b extends SpecificRecordBuilderBase<C17828y3> implements RecordBuilder<C17828y3> {

        /* renamed from: a */
        public CharSequence f50749a;

        /* renamed from: b */
        public CharSequence f50750b;

        public C17830b(C17829a c17829a) {
            super(C17828y3.f50743c);
        }

        /* renamed from: a */
        public C17828y3 build() {
            try {
                C17828y3 c17828y3 = new C17828y3();
                c17828y3.f50747a = fieldSetFlags()[0] ? this.f50749a : (CharSequence) defaultValue(fields()[0]);
                c17828y3.f50748b = fieldSetFlags()[1] ? this.f50750b : (CharSequence) defaultValue(fields()[1]);
                return c17828y3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"OS\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}");
        f50743c = m8613i0;
        SpecificData specificData = new SpecificData();
        f50744d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50744d, m8613i0);
        f50745e = f50744d.createDatumWriter(m8613i0);
        f50746f = f50744d.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f50747a;
            this.f50747a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50748b;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f50748b = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f50747a;
                this.f50747a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                Utf8 utf85 = this.f50748b;
                this.f50748b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50747a);
        encoder.writeString(this.f50748b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50748b;
        }
        return this.f50747a;
    }

    public Schema getSchema() {
        return f50743c;
    }

    public SpecificData getSpecificData() {
        return f50744d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50747a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50748b = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50746f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50745e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
