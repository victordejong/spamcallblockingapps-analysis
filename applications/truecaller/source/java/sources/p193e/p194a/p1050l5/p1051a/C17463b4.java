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
/* renamed from: e.a.l5.a.b4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/b4.class */
public class C17463b4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f48938d;

    /* renamed from: e */
    public static SpecificData f48939e;

    /* renamed from: f */
    public static final DatumWriter<C17463b4> f48940f;

    /* renamed from: g */
    public static final DatumReader<C17463b4> f48941g;
    @Deprecated

    /* renamed from: a */
    public CharSequence f48942a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f48943b;
    @Deprecated

    /* renamed from: c */
    public C17654m3 f48944c;

    /* renamed from: e.a.l5.a.b4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/b4$b.class */
    public static class C17465b extends SpecificRecordBuilderBase<C17463b4> implements RecordBuilder<C17463b4> {

        /* renamed from: a */
        public CharSequence f48945a;

        /* renamed from: b */
        public CharSequence f48946b;

        /* renamed from: c */
        public C17654m3 f48947c;

        public C17465b(C17464a c17464a) {
            super(C17463b4.f48938d);
        }

        /* renamed from: a */
        public C17463b4 build() {
            try {
                C17463b4 c17463b4 = new C17463b4();
                c17463b4.f48942a = fieldSetFlags()[0] ? this.f48945a : (CharSequence) defaultValue(fields()[0]);
                c17463b4.f48943b = fieldSetFlags()[1] ? this.f48946b : (CharSequence) defaultValue(fields()[1]);
                c17463b4.f48944c = fieldSetFlags()[2] ? this.f48947c : (C17654m3) defaultValue(fields()[2]);
                return c17463b4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17465b m16016b(C17654m3 c17654m3) {
            validate(fields()[2], c17654m3);
            this.f48947c = c17654m3;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17465b m16015c(CharSequence charSequence) {
            validate(fields()[0], charSequence);
            this.f48945a = charSequence;
            fieldSetFlags()[0] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"Participant\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}");
        f48938d = m8613i0;
        SpecificData specificData = new SpecificData();
        f48939e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48939e, m8613i0);
        f48940f = f48939e.createDatumWriter(m8613i0);
        f48941g = f48939e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f48942a;
            this.f48942a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f48943b;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f48943b = resolvingDecoder.readString(utf83);
            if (this.f48944c == null) {
                this.f48944c = new C17654m3();
            }
            this.f48944c.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f48942a;
                this.f48942a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos == 1) {
                Utf8 utf85 = this.f48943b;
                this.f48943b = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                if (this.f48944c == null) {
                    this.f48944c = new C17654m3();
                }
                this.f48944c.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f48942a);
        encoder.writeString(this.f48943b);
        this.f48944c.customEncode(encoder);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48943b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f48944c;
        }
        return this.f48942a;
    }

    public Schema getSchema() {
        return f48938d;
    }

    public SpecificData getSpecificData() {
        return f48939e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48942a = (CharSequence) obj;
        } else if (i == 1) {
            this.f48943b = (CharSequence) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48944c = (C17654m3) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48941g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48940f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
