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
/* renamed from: e.a.l5.a.p1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/p1.class */
public class C17691p1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f50033g;

    /* renamed from: h */
    public static SpecificData f50034h;

    /* renamed from: i */
    public static final DatumWriter<C17691p1> f50035i;

    /* renamed from: j */
    public static final DatumReader<C17691p1> f50036j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50037a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50038b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50039c;
    @Deprecated

    /* renamed from: d */
    public int f50040d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50041e;
    @Deprecated

    /* renamed from: f */
    public Boolean f50042f;

    /* renamed from: e.a.l5.a.p1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/p1$b.class */
    public static class C17693b extends SpecificRecordBuilderBase<C17691p1> implements RecordBuilder<C17691p1> {

        /* renamed from: a */
        public CharSequence f50043a;

        /* renamed from: b */
        public int f50044b;

        /* renamed from: c */
        public CharSequence f50045c;

        /* renamed from: d */
        public Boolean f50046d;

        public C17693b(C17692a c17692a) {
            super(C17691p1.f50033g);
        }

        /* renamed from: a */
        public C17691p1 build() {
            try {
                C17691p1 c17691p1 = new C17691p1();
                c17691p1.f50037a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17691p1.f50038b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17691p1.f50039c = fieldSetFlags()[2] ? this.f50043a : (CharSequence) defaultValue(fields()[2]);
                c17691p1.f50040d = fieldSetFlags()[3] ? this.f50044b : ((Integer) defaultValue(fields()[3])).intValue();
                c17691p1.f50041e = fieldSetFlags()[4] ? this.f50045c : (CharSequence) defaultValue(fields()[4]);
                c17691p1.f50042f = fieldSetFlags()[5] ? this.f50046d : (Boolean) defaultValue(fields()[5]);
                return c17691p1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppPCScheduled\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"delay\",\"type\":\"string\",\"doc\":\"Delay for the scheduled\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"},{\"name\":\"isPromoShown\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Promo shown with PC card\",\"default\":null}]}");
        f50033g = m8613i0;
        SpecificData specificData = new SpecificData();
        f50034h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50034h, m8613i0);
        f50035i = f50034h.createDatumWriter(m8613i0);
        f50036j = f50034h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50037a = null;
            } else {
                if (this.f50037a == null) {
                    this.f50037a = new C17638l3();
                }
                this.f50037a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50038b = null;
            } else {
                if (this.f50038b == null) {
                    this.f50038b = new ClientHeaderV2();
                }
                this.f50038b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50039c;
            this.f50039c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f50040d = resolvingDecoder.readInt();
            Utf8 utf82 = this.f50041e;
            this.f50041e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() == 1) {
                this.f50042f = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f50042f = null;
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f50039c;
                        this.f50039c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f50040d = resolvingDecoder.readInt();
                    } else if (pos == 4) {
                        Utf8 utf84 = this.f50041e;
                        this.f50041e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50042f = null;
                        } else {
                            this.f50042f = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50038b = null;
                } else {
                    if (this.f50038b == null) {
                        this.f50038b = new ClientHeaderV2();
                    }
                    this.f50038b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50037a = null;
            } else {
                if (this.f50037a == null) {
                    this.f50037a = new C17638l3();
                }
                this.f50037a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50037a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50037a.customEncode(encoder);
        }
        if (this.f50038b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50038b.customEncode(encoder);
        }
        encoder.writeString(this.f50039c);
        encoder.writeInt(this.f50040d);
        encoder.writeString(this.f50041e);
        if (this.f50042f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f50042f.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50038b;
            }
            if (i == 2) {
                return this.f50039c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f50040d);
            }
            if (i == 4) {
                return this.f50041e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50042f;
        }
        return this.f50037a;
    }

    public Schema getSchema() {
        return f50033g;
    }

    public SpecificData getSpecificData() {
        return f50034h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50037a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50038b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50039c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50040d = ((Integer) obj).intValue();
        } else if (i == 4) {
            this.f50041e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50042f = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50036j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50035i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
