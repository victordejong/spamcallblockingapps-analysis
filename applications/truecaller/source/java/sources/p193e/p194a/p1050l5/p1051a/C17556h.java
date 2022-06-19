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
/* renamed from: e.a.l5.a.h */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/h.class */
public class C17556h extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49378f;

    /* renamed from: g */
    public static SpecificData f49379g;

    /* renamed from: h */
    public static final DatumWriter<C17556h> f49380h;

    /* renamed from: i */
    public static final DatumReader<C17556h> f49381i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49382a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49383b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49384c;
    @Deprecated

    /* renamed from: d */
    public int f49385d;
    @Deprecated

    /* renamed from: e */
    public Boolean f49386e;

    /* renamed from: e.a.l5.a.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/h$b.class */
    public static class C17558b extends SpecificRecordBuilderBase<C17556h> implements RecordBuilder<C17556h> {

        /* renamed from: a */
        public CharSequence f49387a;

        /* renamed from: b */
        public int f49388b;

        /* renamed from: c */
        public Boolean f49389c;

        public C17558b(C17557a c17557a) {
            super(C17556h.f49378f);
        }

        /* renamed from: a */
        public C17556h build() {
            try {
                C17556h c17556h = new C17556h();
                c17556h.f49382a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17556h.f49383b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17556h.f49384c = fieldSetFlags()[2] ? this.f49387a : (CharSequence) defaultValue(fields()[2]);
                c17556h.f49385d = fieldSetFlags()[3] ? this.f49388b : ((Integer) defaultValue(fields()[3])).intValue();
                c17556h.f49386e = fieldSetFlags()[4] ? this.f49389c : (Boolean) defaultValue(fields()[4]);
                return c17556h;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACToggleDisabled\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Location source where the toggle was enabled\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"isPromoShown\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Promo shown with AC card\",\"default\":null}]}");
        f49378f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49379g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49379g, m8613i0);
        f49380h = f49379g.createDatumWriter(m8613i0);
        f49381i = f49379g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49382a = null;
            } else {
                if (this.f49382a == null) {
                    this.f49382a = new C17638l3();
                }
                this.f49382a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49383b = null;
            } else {
                if (this.f49383b == null) {
                    this.f49383b = new ClientHeaderV2();
                }
                this.f49383b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49384c;
            this.f49384c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f49385d = resolvingDecoder.readInt();
            if (resolvingDecoder.readIndex() == 1) {
                this.f49386e = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49386e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf82 = this.f49384c;
                        this.f49384c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                    } else if (pos == 3) {
                        this.f49385d = resolvingDecoder.readInt();
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49386e = null;
                        } else {
                            this.f49386e = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49383b = null;
                } else {
                    if (this.f49383b == null) {
                        this.f49383b = new ClientHeaderV2();
                    }
                    this.f49383b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49382a = null;
            } else {
                if (this.f49382a == null) {
                    this.f49382a = new C17638l3();
                }
                this.f49382a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49382a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49382a.customEncode(encoder);
        }
        if (this.f49383b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49383b.customEncode(encoder);
        }
        encoder.writeString(this.f49384c);
        encoder.writeInt(this.f49385d);
        if (this.f49386e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49386e.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49383b;
            }
            if (i == 2) {
                return this.f49384c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f49385d);
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49386e;
        }
        return this.f49382a;
    }

    public Schema getSchema() {
        return f49378f;
    }

    public SpecificData getSpecificData() {
        return f49379g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49382a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49383b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49384c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49385d = ((Integer) obj).intValue();
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49386e = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49381i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49380h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
