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
/* renamed from: e.a.l5.a.h3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h3.class */
public class C17568h3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49442f;

    /* renamed from: g */
    public static SpecificData f49443g;

    /* renamed from: h */
    public static final DatumWriter<C17568h3> f49444h;

    /* renamed from: i */
    public static final DatumReader<C17568h3> f49445i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49446a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49447b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49448c;
    @Deprecated

    /* renamed from: d */
    public int f49449d;
    @Deprecated

    /* renamed from: e */
    public boolean f49450e;

    /* renamed from: e.a.l5.a.h3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h3$b.class */
    public static class C17570b extends SpecificRecordBuilderBase<C17568h3> implements RecordBuilder<C17568h3> {

        /* renamed from: a */
        public CharSequence f49451a;

        /* renamed from: b */
        public int f49452b;

        /* renamed from: c */
        public boolean f49453c;

        public C17570b(C17569a c17569a) {
            super(C17568h3.f49442f);
        }

        /* renamed from: a */
        public C17568h3 build() {
            try {
                C17568h3 c17568h3 = new C17568h3();
                c17568h3.f49446a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17568h3.f49447b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17568h3.f49448c = fieldSetFlags()[2] ? this.f49451a : (CharSequence) defaultValue(fields()[2]);
                c17568h3.f49449d = fieldSetFlags()[3] ? this.f49452b : ((Integer) defaultValue(fields()[3])).intValue();
                c17568h3.f49450e = fieldSetFlags()[4] ? this.f49453c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                return c17568h3;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppWCToggleEnabled\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Location source where the toggle was enabled\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"isPromoShown\",\"type\":\"boolean\",\"doc\":\"Promo shown with WC card\"}]}");
        f49442f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49443g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49443g, m8613i0);
        f49444h = f49443g.createDatumWriter(m8613i0);
        f49445i = f49443g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49446a = null;
            } else {
                if (this.f49446a == null) {
                    this.f49446a = new C17638l3();
                }
                this.f49446a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49447b = null;
            } else {
                if (this.f49447b == null) {
                    this.f49447b = new ClientHeaderV2();
                }
                this.f49447b.customDecode(resolvingDecoder);
            }
            Utf8 utf82 = this.f49448c;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49448c = resolvingDecoder.readString(utf8);
            this.f49449d = resolvingDecoder.readInt();
            this.f49450e = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f49448c;
                        this.f49448c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f49449d = resolvingDecoder.readInt();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f49450e = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49447b = null;
                } else {
                    if (this.f49447b == null) {
                        this.f49447b = new ClientHeaderV2();
                    }
                    this.f49447b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49446a = null;
            } else {
                if (this.f49446a == null) {
                    this.f49446a = new C17638l3();
                }
                this.f49446a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49446a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49446a.customEncode(encoder);
        }
        if (this.f49447b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49447b.customEncode(encoder);
        }
        encoder.writeString(this.f49448c);
        encoder.writeInt(this.f49449d);
        encoder.writeBoolean(this.f49450e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49447b;
            }
            if (i == 2) {
                return this.f49448c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f49449d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f49450e);
        }
        return this.f49446a;
    }

    public Schema getSchema() {
        return f49442f;
    }

    public SpecificData getSpecificData() {
        return f49443g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49446a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49447b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49448c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49449d = ((Integer) obj).intValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49450e = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49445i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49444h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
