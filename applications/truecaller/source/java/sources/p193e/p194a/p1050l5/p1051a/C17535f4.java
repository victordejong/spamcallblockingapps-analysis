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
/* renamed from: e.a.l5.a.f4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/f4.class */
public class C17535f4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49245g;

    /* renamed from: h */
    public static SpecificData f49246h;

    /* renamed from: i */
    public static final DatumWriter<C17535f4> f49247i;

    /* renamed from: j */
    public static final DatumReader<C17535f4> f49248j;
    @Deprecated

    /* renamed from: a */
    public int f49249a;
    @Deprecated

    /* renamed from: b */
    public int f49250b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49251c;
    @Deprecated

    /* renamed from: d */
    public boolean f49252d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49253e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49254f;

    /* renamed from: e.a.l5.a.f4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/f4$b.class */
    public static class C17537b extends SpecificRecordBuilderBase<C17535f4> implements RecordBuilder<C17535f4> {

        /* renamed from: a */
        public int f49255a;

        /* renamed from: b */
        public int f49256b;

        /* renamed from: c */
        public CharSequence f49257c;

        /* renamed from: d */
        public boolean f49258d;

        /* renamed from: e */
        public CharSequence f49259e;

        /* renamed from: f */
        public CharSequence f49260f;

        public C17537b(C17536a c17536a) {
            super(C17535f4.f49245g);
        }

        /* renamed from: a */
        public C17535f4 build() {
            try {
                C17535f4 c17535f4 = new C17535f4();
                c17535f4.f49249a = fieldSetFlags()[0] ? this.f49255a : ((Integer) defaultValue(fields()[0])).intValue();
                c17535f4.f49250b = fieldSetFlags()[1] ? this.f49256b : ((Integer) defaultValue(fields()[1])).intValue();
                c17535f4.f49251c = fieldSetFlags()[2] ? this.f49257c : (CharSequence) defaultValue(fields()[2]);
                c17535f4.f49252d = fieldSetFlags()[3] ? this.f49258d : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17535f4.f49253e = fieldSetFlags()[4] ? this.f49259e : (CharSequence) defaultValue(fields()[4]);
                c17535f4.f49254f = fieldSetFlags()[5] ? this.f49260f : (CharSequence) defaultValue(fields()[5]);
                return c17535f4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17537b m15966b(boolean z) {
            validate(fields()[3], Boolean.valueOf(z));
            this.f49258d = z;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: c */
        public C17537b m15965c(int i) {
            validate(fields()[0], Integer.valueOf(i));
            this.f49255a = i;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: d */
        public C17537b m15964d(int i) {
            validate(fields()[1], Integer.valueOf(i));
            this.f49256b = i;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: e */
        public C17537b m15963e(CharSequence charSequence) {
            validate(fields()[2], (Object) null);
            this.f49257c = null;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: f */
        public C17537b m15962f(CharSequence charSequence) {
            validate(fields()[5], charSequence);
            this.f49260f = charSequence;
            fieldSetFlags()[5] = true;
            return this;
        }

        /* renamed from: g */
        public C17537b m15961g(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49259e = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"SimInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"msin\",\"type\":[\"null\",\"string\"]},{\"name\":\"isActive\",\"type\":\"boolean\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]}]}");
        f49245g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49246h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49246h, m8613i0);
        f49247i = f49246h.createDatumWriter(m8613i0);
        f49248j = f49246h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49249a = resolvingDecoder.readInt();
            this.f49250b = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49251c = null;
            } else {
                Utf8 utf8 = this.f49251c;
                this.f49251c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            this.f49252d = resolvingDecoder.readBoolean();
            Utf8 utf82 = this.f49253e;
            this.f49253e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49254f = null;
                return;
            }
            Utf8 utf83 = this.f49254f;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f49254f = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f49249a = resolvingDecoder.readInt();
            } else if (pos == 1) {
                this.f49250b = resolvingDecoder.readInt();
            } else if (pos != 2) {
                if (pos == 3) {
                    this.f49252d = resolvingDecoder.readBoolean();
                } else if (pos == 4) {
                    Utf8 utf85 = this.f49253e;
                    this.f49253e = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                } else if (pos != 5) {
                    throw new IOException("Corrupt ResolvingDecoder.");
                } else {
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49254f = null;
                    } else {
                        Utf8 utf86 = this.f49254f;
                        this.f49254f = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    }
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49251c = null;
            } else {
                Utf8 utf87 = this.f49251c;
                this.f49251c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f49249a);
        encoder.writeInt(this.f49250b);
        if (this.f49251c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49251c);
        }
        encoder.writeBoolean(this.f49252d);
        encoder.writeString(this.f49253e);
        if (this.f49254f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49254f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Integer.valueOf(this.f49250b);
            }
            if (i == 2) {
                return this.f49251c;
            }
            if (i == 3) {
                return Boolean.valueOf(this.f49252d);
            }
            if (i == 4) {
                return this.f49253e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49254f;
        }
        return Integer.valueOf(this.f49249a);
    }

    public Schema getSchema() {
        return f49245g;
    }

    public SpecificData getSpecificData() {
        return f49246h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49249a = ((Integer) obj).intValue();
        } else if (i == 1) {
            this.f49250b = ((Integer) obj).intValue();
        } else if (i == 2) {
            this.f49251c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49252d = ((Boolean) obj).booleanValue();
        } else if (i == 4) {
            this.f49253e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49254f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49248j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49247i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
