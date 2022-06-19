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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.m3 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/m3.class */
public class C17654m3 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: j */
    public static final Schema f49821j;

    /* renamed from: k */
    public static SpecificData f49822k;

    /* renamed from: l */
    public static final DatumWriter<C17654m3> f49823l;

    /* renamed from: m */
    public static final DatumReader<C17654m3> f49824m;
    @Deprecated

    /* renamed from: a */
    public boolean f49825a;
    @Deprecated

    /* renamed from: b */
    public boolean f49826b;
    @Deprecated

    /* renamed from: c */
    public Boolean f49827c;
    @Deprecated

    /* renamed from: d */
    public Boolean f49828d;
    @Deprecated

    /* renamed from: e */
    public Boolean f49829e;
    @Deprecated

    /* renamed from: f */
    public Boolean f49830f;
    @Deprecated

    /* renamed from: g */
    public Integer f49831g;
    @Deprecated

    /* renamed from: h */
    public Boolean f49832h;
    @Deprecated

    /* renamed from: i */
    public Integer f49833i;

    /* renamed from: e.a.l5.a.m3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/m3$b.class */
    public static class C17656b extends SpecificRecordBuilderBase<C17654m3> implements RecordBuilder<C17654m3> {

        /* renamed from: a */
        public boolean f49834a;

        /* renamed from: b */
        public boolean f49835b;

        /* renamed from: c */
        public Boolean f49836c;

        /* renamed from: d */
        public Boolean f49837d;

        /* renamed from: e */
        public Boolean f49838e;

        /* renamed from: f */
        public Boolean f49839f;

        /* renamed from: g */
        public Integer f49840g;

        /* renamed from: h */
        public Boolean f49841h;

        /* renamed from: i */
        public Integer f49842i;

        public C17656b(C17655a c17655a) {
            super(C17654m3.f49821j);
        }

        /* renamed from: a */
        public C17654m3 build() {
            try {
                C17654m3 c17654m3 = new C17654m3();
                c17654m3.f49825a = fieldSetFlags()[0] ? this.f49834a : ((Boolean) defaultValue(fields()[0])).booleanValue();
                c17654m3.f49826b = fieldSetFlags()[1] ? this.f49835b : ((Boolean) defaultValue(fields()[1])).booleanValue();
                c17654m3.f49827c = fieldSetFlags()[2] ? this.f49836c : (Boolean) defaultValue(fields()[2]);
                c17654m3.f49828d = fieldSetFlags()[3] ? this.f49837d : (Boolean) defaultValue(fields()[3]);
                c17654m3.f49829e = fieldSetFlags()[4] ? this.f49838e : (Boolean) defaultValue(fields()[4]);
                c17654m3.f49830f = fieldSetFlags()[5] ? this.f49839f : (Boolean) defaultValue(fields()[5]);
                c17654m3.f49831g = fieldSetFlags()[6] ? this.f49840g : (Integer) defaultValue(fields()[6]);
                c17654m3.f49832h = fieldSetFlags()[7] ? this.f49841h : (Boolean) defaultValue(fields()[7]);
                c17654m3.f49833i = fieldSetFlags()[8] ? this.f49842i : (Integer) defaultValue(fields()[8]);
                return c17654m3;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17656b m15889b(boolean z) {
            validate(fields()[1], Boolean.valueOf(z));
            this.f49835b = z;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: c */
        public C17656b m15888c(Boolean bool) {
            validate(fields()[7], bool);
            this.f49841h = bool;
            fieldSetFlags()[7] = true;
            return this;
        }

        /* renamed from: d */
        public C17656b m15887d(boolean z) {
            validate(fields()[0], Boolean.valueOf(z));
            this.f49834a = z;
            fieldSetFlags()[0] = true;
            return this;
        }

        /* renamed from: e */
        public C17656b m15886e(Boolean bool) {
            validate(fields()[3], bool);
            this.f49837d = bool;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: f */
        public C17656b m15885f(Boolean bool) {
            validate(fields()[2], bool);
            this.f49836c = bool;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: g */
        public C17656b m15884g(Boolean bool) {
            validate(fields()[4], bool);
            this.f49838e = bool;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: h */
        public C17656b m15883h(Integer num) {
            validate(fields()[6], num);
            this.f49840g = num;
            fieldSetFlags()[6] = true;
            return this;
        }

        /* renamed from: i */
        public C17656b m15882i(Boolean bool) {
            validate(fields()[5], bool);
            this.f49839f = bool;
            fieldSetFlags()[5] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"ContactInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}");
        f49821j = m8613i0;
        SpecificData specificData = new SpecificData();
        f49822k = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49822k, m8613i0);
        f49823l = f49822k.createDatumWriter(m8613i0);
        f49824m = f49822k.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17656b m15891a() {
        return new C17656b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f49825a = resolvingDecoder.readBoolean();
            this.f49826b = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49827c = null;
            } else {
                this.f49827c = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49828d = null;
            } else {
                this.f49828d = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49829e = null;
            } else {
                this.f49829e = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49830f = null;
            } else {
                this.f49830f = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49831g = null;
            } else {
                this.f49831g = Integer.valueOf(resolvingDecoder.readInt());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49832h = null;
            } else {
                this.f49832h = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49833i = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f49833i = null;
            return;
        }
        for (int i = 0; i < 9; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    this.f49825a = resolvingDecoder.readBoolean();
                    break;
                case 1:
                    this.f49826b = resolvingDecoder.readBoolean();
                    break;
                case 2:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49827c = null;
                        break;
                    } else {
                        this.f49827c = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 3:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49828d = null;
                        break;
                    } else {
                        this.f49828d = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 4:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49829e = null;
                        break;
                    } else {
                        this.f49829e = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49830f = null;
                        break;
                    } else {
                        this.f49830f = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49831g = null;
                        break;
                    } else {
                        this.f49831g = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49832h = null;
                        break;
                    } else {
                        this.f49832h = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49833i = null;
                        break;
                    } else {
                        this.f49833i = Integer.valueOf(resolvingDecoder.readInt());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeBoolean(this.f49825a);
        encoder.writeBoolean(this.f49826b);
        if (this.f49827c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49827c.booleanValue());
        }
        if (this.f49828d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49828d.booleanValue());
        }
        if (this.f49829e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49829e.booleanValue());
        }
        if (this.f49830f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49830f.booleanValue());
        }
        if (this.f49831g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeInt(this.f49831g.intValue());
        }
        if (this.f49832h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f49832h.booleanValue());
        }
        if (this.f49833i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f49833i.intValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return Boolean.valueOf(this.f49825a);
            case 1:
                return Boolean.valueOf(this.f49826b);
            case 2:
                return this.f49827c;
            case 3:
                return this.f49828d;
            case 4:
                return this.f49829e;
            case 5:
                return this.f49830f;
            case 6:
                return this.f49831g;
            case 7:
                return this.f49832h;
            case 8:
                return this.f49833i;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f49821j;
    }

    public SpecificData getSpecificData() {
        return f49822k;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f49825a = ((Boolean) obj).booleanValue();
                return;
            case 1:
                this.f49826b = ((Boolean) obj).booleanValue();
                return;
            case 2:
                this.f49827c = (Boolean) obj;
                return;
            case 3:
                this.f49828d = (Boolean) obj;
                return;
            case 4:
                this.f49829e = (Boolean) obj;
                return;
            case 5:
                this.f49830f = (Boolean) obj;
                return;
            case 6:
                this.f49831g = (Integer) obj;
                return;
            case 7:
                this.f49832h = (Boolean) obj;
                return;
            case 8:
                this.f49833i = (Integer) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49824m.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49823l.write(this, SpecificData.getEncoder(objectOutput));
    }
}
