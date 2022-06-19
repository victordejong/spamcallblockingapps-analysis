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
/* renamed from: e.a.l5.a.i */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/i.class */
public class C17574i extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49463f;

    /* renamed from: g */
    public static SpecificData f49464g;

    /* renamed from: h */
    public static final DatumWriter<C17574i> f49465h;

    /* renamed from: i */
    public static final DatumReader<C17574i> f49466i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49467a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49468b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49469c;
    @Deprecated

    /* renamed from: d */
    public int f49470d;
    @Deprecated

    /* renamed from: e */
    public Boolean f49471e;

    /* renamed from: e.a.l5.a.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/i$b.class */
    public static class C17576b extends SpecificRecordBuilderBase<C17574i> implements RecordBuilder<C17574i> {

        /* renamed from: a */
        public CharSequence f49472a;

        /* renamed from: b */
        public int f49473b;

        /* renamed from: c */
        public Boolean f49474c;

        public C17576b(C17575a c17575a) {
            super(C17574i.f49463f);
        }

        /* renamed from: a */
        public C17574i build() {
            try {
                C17574i c17574i = new C17574i();
                c17574i.f49467a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17574i.f49468b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17574i.f49469c = fieldSetFlags()[2] ? this.f49472a : (CharSequence) defaultValue(fields()[2]);
                c17574i.f49470d = fieldSetFlags()[3] ? this.f49473b : ((Integer) defaultValue(fields()[3])).intValue();
                c17574i.f49471e = fieldSetFlags()[4] ? this.f49474c : (Boolean) defaultValue(fields()[4]);
                return c17574i;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACToggleEnabled\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Location source where the toggle was enabled\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"isPromoShown\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Promo shown with AC card\",\"default\":null}]}");
        f49463f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49464g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49464g, m8613i0);
        f49465h = f49464g.createDatumWriter(m8613i0);
        f49466i = f49464g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49467a = null;
            } else {
                if (this.f49467a == null) {
                    this.f49467a = new C17638l3();
                }
                this.f49467a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49468b = null;
            } else {
                if (this.f49468b == null) {
                    this.f49468b = new ClientHeaderV2();
                }
                this.f49468b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49469c;
            this.f49469c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f49470d = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() == 1) {
                this.f49471e = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49471e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf82 = this.f49469c;
                        this.f49469c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                    } else if (pos == 3) {
                        this.f49470d = resolvingDecoder.readInt();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49471e = null;
                        } else {
                            this.f49471e = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49468b = null;
                } else {
                    if (this.f49468b == null) {
                        this.f49468b = new ClientHeaderV2();
                    }
                    this.f49468b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49467a = null;
            } else {
                if (this.f49467a == null) {
                    this.f49467a = new C17638l3();
                }
                this.f49467a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49467a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49467a.customEncode(encoder);
        }
        if (this.f49468b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49468b.customEncode(encoder);
        }
        encoder.writeString(this.f49469c);
        encoder.writeInt(this.f49470d);
        if (this.f49471e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49471e.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49468b;
            }
            if (i == 2) {
                return this.f49469c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f49470d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49471e;
        }
        return this.f49467a;
    }

    public Schema getSchema() {
        return f49463f;
    }

    public SpecificData getSpecificData() {
        return f49464g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49467a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49468b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49469c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49470d = ((Integer) obj).intValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49471e = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49466i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49465h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
