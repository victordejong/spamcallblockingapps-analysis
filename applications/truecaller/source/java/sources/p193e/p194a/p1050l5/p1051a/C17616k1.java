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
/* renamed from: e.a.l5.a.k1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/k1.class */
public class C17616k1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49671g;

    /* renamed from: h */
    public static SpecificData f49672h;

    /* renamed from: i */
    public static final DatumWriter<C17616k1> f49673i;

    /* renamed from: j */
    public static final DatumReader<C17616k1> f49674j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49675a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49676b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49677c;
    @Deprecated

    /* renamed from: d */
    public int f49678d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49679e;
    @Deprecated

    /* renamed from: f */
    public Boolean f49680f;

    /* renamed from: e.a.l5.a.k1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/k1$b.class */
    public static class C17618b extends SpecificRecordBuilderBase<C17616k1> implements RecordBuilder<C17616k1> {

        /* renamed from: a */
        public CharSequence f49681a;

        /* renamed from: b */
        public int f49682b;

        /* renamed from: c */
        public CharSequence f49683c;

        /* renamed from: d */
        public Boolean f49684d;

        public C17618b(C17617a c17617a) {
            super(C17616k1.f49671g);
        }

        /* renamed from: a */
        public C17616k1 build() {
            try {
                C17616k1 c17616k1 = new C17616k1();
                c17616k1.f49675a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17616k1.f49676b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17616k1.f49677c = fieldSetFlags()[2] ? this.f49681a : (CharSequence) defaultValue(fields()[2]);
                c17616k1.f49678d = fieldSetFlags()[3] ? this.f49682b : ((Integer) defaultValue(fields()[3])).intValue();
                c17616k1.f49679e = fieldSetFlags()[4] ? this.f49683c : (CharSequence) defaultValue(fields()[4]);
                c17616k1.f49680f = fieldSetFlags()[5] ? this.f49684d : (Boolean) defaultValue(fields()[5]);
                return c17616k1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppPCActionOnCard\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"Action name for user performed action on the card\"},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"},{\"name\":\"isPromoShown\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Promo shown with PC card\",\"default\":null}]}");
        f49671g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49672h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49672h, m8613i0);
        f49673i = f49672h.createDatumWriter(m8613i0);
        f49674j = f49672h.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49675a = null;
            } else {
                if (this.f49675a == null) {
                    this.f49675a = new C17638l3();
                }
                this.f49675a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49676b = null;
            } else {
                if (this.f49676b == null) {
                    this.f49676b = new ClientHeaderV2();
                }
                this.f49676b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49677c;
            this.f49677c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            this.f49678d = resolvingDecoder.readInt();
            Utf8 utf82 = this.f49679e;
            this.f49679e = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() == 1) {
                this.f49680f = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49680f = null;
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f49677c;
                        this.f49677c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        this.f49678d = resolvingDecoder.readInt();
                    } else if (pos == 4) {
                        Utf8 utf84 = this.f49679e;
                        this.f49679e = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49680f = null;
                        } else {
                            this.f49680f = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49676b = null;
                } else {
                    if (this.f49676b == null) {
                        this.f49676b = new ClientHeaderV2();
                    }
                    this.f49676b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49675a = null;
            } else {
                if (this.f49675a == null) {
                    this.f49675a = new C17638l3();
                }
                this.f49675a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49675a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49675a.customEncode(encoder);
        }
        if (this.f49676b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49676b.customEncode(encoder);
        }
        encoder.writeString(this.f49677c);
        encoder.writeInt(this.f49678d);
        encoder.writeString(this.f49679e);
        if (this.f49680f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49680f.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49676b;
            }
            if (i == 2) {
                return this.f49677c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f49678d);
            }
            if (i == 4) {
                return this.f49679e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49680f;
        }
        return this.f49675a;
    }

    public Schema getSchema() {
        return f49671g;
    }

    public SpecificData getSpecificData() {
        return f49672h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49675a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49676b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49677c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49678d = ((Integer) obj).intValue();
        } else if (i == 4) {
            this.f49679e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49680f = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49674j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49673i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
