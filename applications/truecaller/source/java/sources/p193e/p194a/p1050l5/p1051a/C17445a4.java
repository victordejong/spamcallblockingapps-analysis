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
/* renamed from: e.a.l5.a.a4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a4.class */
public class C17445a4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f48864c;

    /* renamed from: d */
    public static SpecificData f48865d;

    /* renamed from: e */
    public static final DatumWriter<C17445a4> f48866e;

    /* renamed from: f */
    public static final DatumReader<C17445a4> f48867f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f48868a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f48869b;

    /* renamed from: e.a.l5.a.a4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/a4$b.class */
    public static class C17447b extends SpecificRecordBuilderBase<C17445a4> implements RecordBuilder<C17445a4> {

        /* renamed from: a */
        public CharSequence f48870a;

        /* renamed from: b */
        public CharSequence f48871b;

        public C17447b(C17446a c17446a) {
            super(C17445a4.f48864c);
        }

        /* renamed from: a */
        public C17445a4 build() {
            try {
                C17445a4 c17445a4 = new C17445a4();
                c17445a4.f48868a = fieldSetFlags()[0] ? this.f48870a : (CharSequence) defaultValue(fields()[0]);
                c17445a4.f48869b = fieldSetFlags()[1] ? this.f48871b : (CharSequence) defaultValue(fields()[1]);
                return c17445a4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"PackageInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"installerPackage\",\"type\":\"string\",\"doc\":\"Package name of the application that installed Truecaller\"},{\"name\":\"preloadPartnerName\",\"type\":\"string\",\"doc\":\"Name of the OEM partner (only for preloads, null otherwise)\"}]}");
        f48864c = m8613i0;
        SpecificData specificData = new SpecificData();
        f48865d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48865d, m8613i0);
        f48866e = f48865d.createDatumWriter(m8613i0);
        f48867f = f48865d.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f48868a;
            this.f48868a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48869b;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48869b = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f48868a;
                this.f48868a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                Utf8 utf85 = this.f48869b;
                this.f48869b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f48868a);
        encoder.writeString(this.f48869b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48869b;
        }
        return this.f48868a;
    }

    public Schema getSchema() {
        return f48864c;
    }

    public SpecificData getSpecificData() {
        return f48865d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48868a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48869b = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48867f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48866e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
