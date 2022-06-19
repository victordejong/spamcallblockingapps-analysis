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
/* renamed from: e.a.l5.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a.class */
public class C17432a extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: c */
    public static final Schema f48812c;

    /* renamed from: d */
    public static SpecificData f48813d;

    /* renamed from: e */
    public static final DatumWriter<C17432a> f48814e;

    /* renamed from: f */
    public static final DatumReader<C17432a> f48815f;
    @Deprecated

    /* renamed from: a */
    public CharSequence f48816a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f48817b;

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AdContext\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The context for the ad\"},{\"name\":\"id\",\"type\":\"string\",\"doc\":\"The identifier for the ad context\"}]}");
        f48812c = m8613i0;
        SpecificData specificData = new SpecificData();
        f48813d = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48813d, m8613i0);
        f48814e = f48813d.createDatumWriter(m8613i0);
        f48815f = f48813d.createDatumReader(m8613i0);
    }

    public C17432a() {
    }

    public C17432a(CharSequence charSequence, CharSequence charSequence2) {
        this.f48816a = charSequence;
        this.f48817b = charSequence2;
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f48816a;
            this.f48816a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48817b;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48817b = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 2; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f48816a;
                this.f48816a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                Utf8 utf85 = this.f48817b;
                this.f48817b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f48816a);
        encoder.writeString(this.f48817b);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48817b;
        }
        return this.f48816a;
    }

    public Schema getSchema() {
        return f48812c;
    }

    public SpecificData getSpecificData() {
        return f48813d;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48816a = (CharSequence) obj;
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48817b = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48815f.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48814e.write(this, SpecificData.getEncoder(objectOutput));
    }
}
