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
/* renamed from: e.a.l5.a.v3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/v3.class */
public class C17787v3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f50532c;

    /* renamed from: d */
    public static SpecificData f50533d;

    /* renamed from: e */
    public static final DatumWriter<C17787v3> f50534e;

    /* renamed from: f */
    public static final DatumReader<C17787v3> f50535f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50536a;
    @Deprecated

    /* renamed from: b */
    public boolean f50537b;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"NotificationChannel\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Unique id of the channel\"},{\"name\":\"channelSetting\",\"type\":\"boolean\",\"doc\":\"User setting for the channel\"}]}");
        f50532c = m8613i0;
        SpecificData specificData = new SpecificData();
        f50533d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50533d, m8613i0);
        f50534e = f50533d.createDatumWriter(m8613i0);
        f50535f = f50533d.createDatumReader(m8613i0);
    }

    public C17787v3() {
    }

    public C17787v3(CharSequence charSequence, Boolean bool) {
        this.f50536a = charSequence;
        this.f50537b = bool.booleanValue();
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            Utf8 utf82 = this.f50536a;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f50536a = resolvingDecoder.readString(utf8);
            this.f50537b = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf83 = this.f50536a;
                this.f50536a = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f50537b = resolvingDecoder.readBoolean();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50536a);
        encoder.writeBoolean(this.f50537b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f50537b);
        }
        return this.f50536a;
    }

    public Schema getSchema() {
        return f50532c;
    }

    public SpecificData getSpecificData() {
        return f50533d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50536a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50537b = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50535f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50534e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
