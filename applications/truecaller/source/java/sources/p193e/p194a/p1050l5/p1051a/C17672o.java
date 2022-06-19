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
/* renamed from: e.a.l5.a.o */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/o.class */
public class C17672o extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: g */
    public static final Schema f49917g;

    /* renamed from: h */
    public static SpecificData f49918h;

    /* renamed from: i */
    public static final DatumWriter<C17672o> f49919i;

    /* renamed from: j */
    public static final DatumReader<C17672o> f49920j;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49921a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49922b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49923c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49924d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49925e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f49926f;

    /* renamed from: e.a.l5.a.o$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/o$b.class */
    public static class C17674b extends SpecificRecordBuilderBase<C17672o> implements RecordBuilder<C17672o> {

        /* renamed from: a */
        public CharSequence f49927a;

        /* renamed from: b */
        public CharSequence f49928b;

        /* renamed from: c */
        public CharSequence f49929c;

        /* renamed from: d */
        public CharSequence f49930d;

        public C17674b(C17673a c17673a) {
            super(C17672o.f49917g);
        }

        /* renamed from: a */
        public C17672o build() {
            try {
                C17672o c17672o = new C17672o();
                c17672o.f49921a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17672o.f49922b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17672o.f49923c = fieldSetFlags()[2] ? this.f49927a : (CharSequence) defaultValue(fields()[2]);
                c17672o.f49924d = fieldSetFlags()[3] ? this.f49928b : (CharSequence) defaultValue(fields()[3]);
                c17672o.f49925e = fieldSetFlags()[4] ? this.f49929c : (CharSequence) defaultValue(fields()[4]);
                c17672o.f49926f = fieldSetFlags()[5] ? this.f49930d : (CharSequence) defaultValue(fields()[5]);
                return c17672o;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17674b m15871b(CharSequence charSequence) {
            validate(fields()[4], charSequence);
            this.f49929c = charSequence;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: c */
        public C17674b m15870c(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f49928b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: d */
        public C17674b m15869d(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49927a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppBusinessImpression\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"User was shown a verified/priority business badge for the caller\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"phoneNumber\",\"type\":\"string\",\"doc\":\"The phone number of the other party on the call (not the user reporting the event). This would be in E.64 format whenever possible.\"},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The context in which the badge was shown. [Eg: FullScreenCallerID, PopupCallerID, IncallUI, PopupAfterCallScreen, FullAfterCallScreen]\"},{\"name\":\"badgeType\",\"type\":\"string\",\"doc\":\"The business badge. [Eg: Verified, Priority]\"},{\"name\":\"source\",\"type\":[\"null\",\"string\"],\"doc\":\"The name of the screen from which \\\"New Detail Screen\\\" is getting launched\",\"default\":null}]}");
        f49917g = m8613i0;
        SpecificData specificData = new SpecificData();
        f49918h = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49918h, m8613i0);
        f49919i = f49918h.createDatumWriter(m8613i0);
        f49920j = f49918h.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17674b m15873a() {
        return new C17674b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49921a = null;
            } else {
                if (this.f49921a == null) {
                    this.f49921a = new C17638l3();
                }
                this.f49921a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49922b = null;
            } else {
                if (this.f49922b == null) {
                    this.f49922b = new ClientHeaderV2();
                }
                this.f49922b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49923c;
            this.f49923c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f49924d;
            this.f49924d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f49925e;
            this.f49925e = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49926f = null;
                return;
            }
            Utf8 utf84 = this.f49926f;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f49926f = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 6; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf86 = this.f49923c;
                        this.f49923c = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    } else if (pos == 3) {
                        Utf8 utf87 = this.f49924d;
                        this.f49924d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    } else if (pos == 4) {
                        Utf8 utf88 = this.f49925e;
                        this.f49925e = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    } else if (pos != 5) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49926f = null;
                        } else {
                            Utf8 utf89 = this.f49926f;
                            this.f49926f = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49922b = null;
                } else {
                    if (this.f49922b == null) {
                        this.f49922b = new ClientHeaderV2();
                    }
                    this.f49922b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49921a = null;
            } else {
                if (this.f49921a == null) {
                    this.f49921a = new C17638l3();
                }
                this.f49921a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49921a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49921a.customEncode(encoder);
        }
        if (this.f49922b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49922b.customEncode(encoder);
        }
        encoder.writeString(this.f49923c);
        encoder.writeString(this.f49924d);
        encoder.writeString(this.f49925e);
        if (this.f49926f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49926f);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49922b;
            }
            if (i == 2) {
                return this.f49923c;
            }
            if (i == 3) {
                return this.f49924d;
            }
            if (i == 4) {
                return this.f49925e;
            }
            if (i != 5) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49926f;
        }
        return this.f49921a;
    }

    public Schema getSchema() {
        return f49917g;
    }

    public SpecificData getSpecificData() {
        return f49918h;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49921a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49922b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49923c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49924d = (CharSequence) obj;
        } else if (i == 4) {
            this.f49925e = (CharSequence) obj;
        } else if (i != 5) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49926f = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49920j.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49919i.write(this, SpecificData.getEncoder(objectOutput));
    }
}
