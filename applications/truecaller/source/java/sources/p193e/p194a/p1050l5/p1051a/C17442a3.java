package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.ClientHeaderV2;
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
/* renamed from: e.a.l5.a.a3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/a3.class */
public class C17442a3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f48852f;

    /* renamed from: g */
    public static SpecificData f48853g;

    /* renamed from: h */
    public static final DatumWriter<C17442a3> f48854h;

    /* renamed from: i */
    public static final DatumReader<C17442a3> f48855i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f48856a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f48857b;
    @Deprecated

    /* renamed from: c */
    public int f48858c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f48859d;
    @Deprecated

    /* renamed from: e */
    public boolean f48860e;

    /* renamed from: e.a.l5.a.a3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/a3$b.class */
    public static class C17444b extends SpecificRecordBuilderBase<C17442a3> implements RecordBuilder<C17442a3> {

        /* renamed from: a */
        public int f48861a;

        /* renamed from: b */
        public CharSequence f48862b;

        /* renamed from: c */
        public boolean f48863c;

        public C17444b(C17443a c17443a) {
            super(C17442a3.f48852f);
        }

        /* renamed from: a */
        public C17442a3 build() {
            try {
                C17442a3 c17442a3 = new C17442a3();
                c17442a3.f48856a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17442a3.f48857b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17442a3.f48858c = fieldSetFlags()[2] ? this.f48861a : ((Integer) defaultValue(fields()[2])).intValue();
                c17442a3.f48859d = fieldSetFlags()[3] ? this.f48862b : (CharSequence) defaultValue(fields()[3]);
                c17442a3.f48860e = fieldSetFlags()[4] ? this.f48863c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                return c17442a3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWCCardSeen\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"},{\"name\":\"isPromoShown\",\"type\":\"boolean\",\"doc\":\"Promo shown with WC card\"}]}");
        f48852f = m8613i0;
        SpecificData specificData = new SpecificData();
        f48853g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f48853g, m8613i0);
        f48854h = f48853g.createDatumWriter(m8613i0);
        f48855i = f48853g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48856a = null;
            } else {
                if (this.f48856a == null) {
                    this.f48856a = new C17638l3();
                }
                this.f48856a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48857b = null;
            } else {
                if (this.f48857b == null) {
                    this.f48857b = new ClientHeaderV2();
                }
                this.f48857b.customDecode(resolvingDecoder);
            }
            this.f48858c = resolvingDecoder.readInt();
            Utf8 utf82 = this.f48859d;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f48859d = resolvingDecoder.readString(utf8);
            this.f48860e = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f48858c = resolvingDecoder.readInt();
                    } else if (pos == 3) {
                        Utf8 utf83 = this.f48859d;
                        this.f48859d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f48860e = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f48857b = null;
                } else {
                    if (this.f48857b == null) {
                        this.f48857b = new ClientHeaderV2();
                    }
                    this.f48857b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f48856a = null;
            } else {
                if (this.f48856a == null) {
                    this.f48856a = new C17638l3();
                }
                this.f48856a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f48856a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48856a.customEncode(encoder);
        }
        if (this.f48857b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f48857b.customEncode(encoder);
        }
        encoder.writeInt(this.f48858c);
        encoder.writeString(this.f48859d);
        encoder.writeBoolean(this.f48860e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f48857b;
            }
            if (i == 2) {
                return Integer.valueOf(this.f48858c);
            }
            if (i == 3) {
                return this.f48859d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f48860e);
        }
        return this.f48856a;
    }

    public Schema getSchema() {
        return f48852f;
    }

    public SpecificData getSpecificData() {
        return f48853g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f48856a = (C17638l3) obj;
        } else if (i == 1) {
            this.f48857b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f48858c = ((Integer) obj).intValue();
        } else if (i == 3) {
            this.f48859d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f48860e = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f48855i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f48854h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
