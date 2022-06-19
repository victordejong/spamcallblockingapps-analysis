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
/* renamed from: e.a.l5.a.r3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/r3.class */
public class C17727r3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f50222d;

    /* renamed from: e */
    public static SpecificData f50223e;

    /* renamed from: f */
    public static final DatumWriter<C17727r3> f50224f;

    /* renamed from: g */
    public static final DatumReader<C17727r3> f50225g;
    @Deprecated

    /* renamed from: a */
    public CharSequence f50226a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f50227b;
    @Deprecated

    /* renamed from: c */
    public C17654m3 f50228c;

    /* renamed from: e.a.l5.a.r3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/r3$b.class */
    public static class C17729b extends SpecificRecordBuilderBase<C17727r3> implements RecordBuilder<C17727r3> {

        /* renamed from: a */
        public CharSequence f50229a;

        /* renamed from: b */
        public CharSequence f50230b;

        /* renamed from: c */
        public C17654m3 f50231c;

        public C17729b(C17728a c17728a) {
            super(C17727r3.f50222d);
        }

        /* renamed from: a */
        public C17727r3 build() {
            try {
                C17727r3 c17727r3 = new C17727r3();
                c17727r3.f50226a = fieldSetFlags()[0] ? this.f50229a : (CharSequence) defaultValue(fields()[0]);
                c17727r3.f50227b = fieldSetFlags()[1] ? this.f50230b : (CharSequence) defaultValue(fields()[1]);
                c17727r3.f50228c = fieldSetFlags()[2] ? this.f50231c : (C17654m3) defaultValue(fields()[2]);
                return c17727r3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"ImParticipant\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"imId\",\"type\":\"string\"},{\"name\":\"phoneNumber\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}");
        f50222d = m8613i0;
        SpecificData specificData = new SpecificData();
        f50223e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50223e, m8613i0);
        f50224f = f50223e.createDatumWriter(m8613i0);
        f50225g = f50223e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f50226a;
            this.f50226a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50227b = null;
            } else {
                Utf8 utf82 = this.f50227b;
                Utf8 utf83 = null;
                if (utf82 instanceof Utf8) {
                    utf83 = utf82;
                }
                this.f50227b = resolvingDecoder.readString(utf83);
            }
            if (this.f50228c == null) {
                this.f50228c = new C17654m3();
            }
            this.f50228c.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f50226a;
                this.f50226a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                if (pos != 2) {
                    throw new IOException("Corrupt ResolvingDecoder.");
                }
                if (this.f50228c == null) {
                    this.f50228c = new C17654m3();
                }
                this.f50228c.customDecode(resolvingDecoder);
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50227b = null;
            } else {
                Utf8 utf85 = this.f50227b;
                this.f50227b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f50226a);
        if (this.f50227b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50227b);
        }
        this.f50228c.customEncode(encoder);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50227b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50228c;
        }
        return this.f50226a;
    }

    public Schema getSchema() {
        return f50222d;
    }

    public SpecificData getSpecificData() {
        return f50223e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50226a = (CharSequence) obj;
        } else if (i == 1) {
            this.f50227b = (CharSequence) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50228c = (C17654m3) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50225g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50224f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
