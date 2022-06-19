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
/* renamed from: e.a.l5.a.n3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/n3.class */
public class C17669n3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49901g;

    /* renamed from: h */
    public static SpecificData f49902h;

    /* renamed from: i */
    public static final DatumWriter<C17669n3> f49903i;

    /* renamed from: j */
    public static final DatumReader<C17669n3> f49904j;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49905a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f49906b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49907c;
    @Deprecated

    /* renamed from: d */
    public int f49908d;
    @Deprecated

    /* renamed from: e */
    public int f49909e;
    @Deprecated

    /* renamed from: f */
    public int f49910f;

    /* renamed from: e.a.l5.a.n3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/n3$b.class */
    public static class C17671b extends SpecificRecordBuilderBase<C17669n3> implements RecordBuilder<C17669n3> {

        /* renamed from: a */
        public CharSequence f49911a;

        /* renamed from: b */
        public CharSequence f49912b;

        /* renamed from: c */
        public CharSequence f49913c;

        /* renamed from: d */
        public int f49914d;

        /* renamed from: e */
        public int f49915e;

        /* renamed from: f */
        public int f49916f;

        public C17671b(C17670a c17670a) {
            super(C17669n3.f49901g);
        }

        /* renamed from: a */
        public C17669n3 build() {
            try {
                C17669n3 c17669n3 = new C17669n3();
                c17669n3.f49905a = fieldSetFlags()[0] ? this.f49911a : (CharSequence) defaultValue(fields()[0]);
                c17669n3.f49906b = fieldSetFlags()[1] ? this.f49912b : (CharSequence) defaultValue(fields()[1]);
                c17669n3.f49907c = fieldSetFlags()[2] ? this.f49913c : (CharSequence) defaultValue(fields()[2]);
                c17669n3.f49908d = fieldSetFlags()[3] ? this.f49914d : ((Integer) defaultValue(fields()[3])).intValue();
                c17669n3.f49909e = fieldSetFlags()[4] ? this.f49915e : ((Integer) defaultValue(fields()[4])).intValue();
                c17669n3.f49910f = fieldSetFlags()[5] ? this.f49916f : ((Integer) defaultValue(fields()[5])).intValue();
                return c17669n3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"DeviceInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"manufacturer\",\"type\":\"string\"},{\"name\":\"model\",\"type\":\"string\"},{\"name\":\"imei\",\"type\":[\"null\",\"string\"]},{\"name\":\"screenHeight\",\"type\":\"int\"},{\"name\":\"screenWidth\",\"type\":\"int\"},{\"name\":\"density\",\"type\":\"int\"}]}");
        f49901g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49902h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49902h, m8613i0);
        f49903i = f49902h.createDatumWriter(m8613i0);
        f49904j = f49902h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f49905a;
            this.f49905a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49906b;
            this.f49906b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49907c = null;
            } else {
                Utf8 utf83 = this.f49907c;
                Utf8 utf84 = null;
                if (utf83 instanceof Utf8) {
                    utf84 = utf83;
                }
                this.f49907c = resolvingDecoder.readString(utf84);
            }
            this.f49908d = resolvingDecoder.readInt();
            this.f49909e = resolvingDecoder.readInt();
            this.f49910f = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf85 = this.f49905a;
                this.f49905a = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
            } else if (pos == 1) {
                Utf8 utf86 = this.f49906b;
                this.f49906b = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            } else if (pos != 2) {
                if (pos == 3) {
                    this.f49908d = resolvingDecoder.readInt();
                } else if (pos == 4) {
                    this.f49909e = resolvingDecoder.readInt();
                } else if (pos != 5) {
                    throw new IOException("Corrupt ResolvingDecoder.");
                } else {
                    this.f49910f = resolvingDecoder.readInt();
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49907c = null;
            } else {
                Utf8 utf87 = this.f49907c;
                this.f49907c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f49905a);
        encoder.writeString(this.f49906b);
        if (this.f49907c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49907c);
        }
        encoder.writeInt(this.f49908d);
        encoder.writeInt(this.f49909e);
        encoder.writeInt(this.f49910f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49906b;
            }
            if (i == 2) {
                return this.f49907c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f49908d);
            }
            if (i == 4) {
                return Integer.valueOf(this.f49909e);
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f49910f);
        }
        return this.f49905a;
    }

    public Schema getSchema() {
        return f49901g;
    }

    public SpecificData getSpecificData() {
        return f49902h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49905a = (CharSequence) obj;
        } else if (i == 1) {
            this.f49906b = (CharSequence) obj;
        } else if (i == 2) {
            this.f49907c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49908d = ((Integer) obj).intValue();
        } else if (i == 4) {
            this.f49909e = ((Integer) obj).intValue();
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49910f = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49904j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49903i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
