package p193e.p194a.p1050l5.p1051a;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.avro.Schema;
import org.apache.avro.io.DatumReader;
import org.apache.avro.io.DatumWriter;
import org.apache.avro.io.Encoder;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.message.BinaryMessageDecoder;
import org.apache.avro.message.BinaryMessageEncoder;
import org.apache.avro.specific.SpecificData;
import org.apache.avro.specific.SpecificRecord;
import org.apache.avro.specific.SpecificRecordBase;
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.k4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/k4.class */
public class C17625k4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f49703c;

    /* renamed from: d */
    public static SpecificData f49704d;

    /* renamed from: e */
    public static final DatumWriter<C17625k4> f49705e;

    /* renamed from: f */
    public static final DatumReader<C17625k4> f49706f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49707a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f49708b;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"User\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}");
        f49703c = m8613i0;
        SpecificData specificData = new SpecificData();
        f49704d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49704d, m8613i0);
        f49705e = f49704d.createDatumWriter(m8613i0);
        f49706f = f49704d.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f49707a;
            this.f49707a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49708b;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f49708b = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f49707a;
                this.f49707a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                Utf8 utf85 = this.f49708b;
                this.f49708b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f49707a);
        encoder.writeString(this.f49708b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49708b;
        }
        return this.f49707a;
    }

    public Schema getSchema() {
        return f49703c;
    }

    public SpecificData getSpecificData() {
        return f49704d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49707a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49708b = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49706f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49705e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
