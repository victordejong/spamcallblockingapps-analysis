package com.truecaller.tracking.events;

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
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/ClientHeaderV2.class */
public class ClientHeaderV2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: i */
    public static final Schema f15421i;

    /* renamed from: j */
    public static SpecificData f15422j;

    /* renamed from: k */
    public static final DatumWriter<ClientHeaderV2> f15423k;

    /* renamed from: l */
    public static final DatumReader<ClientHeaderV2> f15424l;
    @Deprecated

    /* renamed from: a */
    public long f15425a;
    @Deprecated

    /* renamed from: b */
    public long f15426b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f15427c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f15428d;
    @Deprecated

    /* renamed from: e */
    public App f15429e;
    @Deprecated

    /* renamed from: f */
    public CharSequence f15430f;
    @Deprecated

    /* renamed from: g */
    public CharSequence f15431g;
    @Deprecated

    /* renamed from: h */
    public Coordinates f15432h;

    /* renamed from: com.truecaller.tracking.events.ClientHeaderV2$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/ClientHeaderV2$b.class */
    public static class C4639b extends SpecificRecordBuilderBase<ClientHeaderV2> implements RecordBuilder<ClientHeaderV2> {

        /* renamed from: a */
        public long f15433a;

        /* renamed from: b */
        public long f15434b;

        /* renamed from: c */
        public CharSequence f15435c;

        /* renamed from: d */
        public CharSequence f15436d;

        /* renamed from: e */
        public App f15437e;

        /* renamed from: f */
        public CharSequence f15438f;

        /* renamed from: g */
        public CharSequence f15439g;

        /* renamed from: h */
        public Coordinates f15440h;

        public C4639b(C4638a c4638a) {
            super(ClientHeaderV2.f15421i);
        }

        /* JADX WARN: Type inference failed for: r0v70, types: [long] */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* renamed from: a */
        public ClientHeaderV2 build() {
            try {
                ClientHeaderV2 clientHeaderV2 = new ClientHeaderV2();
                clientHeaderV2.f15425a = fieldSetFlags()[0] ? this.f15433a : ((Long) defaultValue(fields()[0])).longValue();
                clientHeaderV2.f15426b = fieldSetFlags()[1] ? this.f15434b : ((Long) defaultValue(fields()[1])).longValue();
                clientHeaderV2.f15427c = fieldSetFlags()[2] ? this.f15435c : (CharSequence) defaultValue(fields()[2]);
                clientHeaderV2.f15428d = fieldSetFlags()[3] ? this.f15436d : (CharSequence) defaultValue(fields()[3]);
                clientHeaderV2.f15429e = fieldSetFlags()[4] ? this.f15437e : (App) defaultValue(fields()[4]);
                clientHeaderV2.f15430f = fieldSetFlags()[5] ? this.f15438f : (CharSequence) defaultValue(fields()[5]);
                clientHeaderV2.f15431g = fieldSetFlags()[6] ? this.f15439g : (CharSequence) defaultValue(fields()[6]);
                clientHeaderV2.f15432h = fieldSetFlags()[7] ? this.f15440h : (Coordinates) defaultValue(fields()[7]);
                return clientHeaderV2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}");
        f15421i = m8613i0;
        SpecificData specificData = new SpecificData();
        f15422j = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f15422j, m8613i0);
        f15423k = f15422j.createDatumWriter(m8613i0);
        f15424l = f15422j.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f15425a = resolvingDecoder.readLong();
            this.f15426b = resolvingDecoder.readLong();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f15427c = null;
            } else {
                Utf8 utf8 = this.f15427c;
                this.f15427c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            Utf8 utf82 = this.f15428d;
            this.f15428d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (this.f15429e == null) {
                this.f15429e = new App();
            }
            this.f15429e.customDecode(resolvingDecoder);
            Utf8 utf83 = this.f15430f;
            this.f15430f = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            Utf8 utf84 = this.f15431g;
            this.f15431g = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f15432h = null;
                return;
            }
            if (this.f15432h == null) {
                this.f15432h = new Coordinates();
            }
            this.f15432h.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 8; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    this.f15425a = resolvingDecoder.readLong();
                    break;
                case 1:
                    this.f15426b = resolvingDecoder.readLong();
                    break;
                case 2:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f15427c = null;
                        break;
                    } else {
                        Utf8 utf85 = this.f15427c;
                        this.f15427c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                        break;
                    }
                case 3:
                    Utf8 utf86 = this.f15428d;
                    this.f15428d = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                    break;
                case 4:
                    if (this.f15429e == null) {
                        this.f15429e = new App();
                    }
                    this.f15429e.customDecode(resolvingDecoder);
                    break;
                case 5:
                    Utf8 utf87 = this.f15430f;
                    this.f15430f = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    break;
                case 6:
                    Utf8 utf88 = this.f15431g;
                    this.f15431g = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
                    break;
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f15432h = null;
                        break;
                    } else {
                        if (this.f15432h == null) {
                            this.f15432h = new Coordinates();
                        }
                        this.f15432h.customDecode(resolvingDecoder);
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeLong(this.f15425a);
        encoder.writeLong(this.f15426b);
        if (this.f15427c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f15427c);
        }
        encoder.writeString(this.f15428d);
        this.f15429e.customEncode(encoder);
        encoder.writeString(this.f15430f);
        encoder.writeString(this.f15431g);
        if (this.f15432h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        this.f15432h.customEncode(encoder);
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return Long.valueOf(this.f15425a);
            case 1:
                return Long.valueOf(this.f15426b);
            case 2:
                return this.f15427c;
            case 3:
                return this.f15428d;
            case 4:
                return this.f15429e;
            case 5:
                return this.f15430f;
            case 6:
                return this.f15431g;
            case 7:
                return this.f15432h;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f15421i;
    }

    public SpecificData getSpecificData() {
        return f15422j;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f15425a = ((Long) obj).longValue();
                return;
            case 1:
                this.f15426b = ((Long) obj).longValue();
                return;
            case 2:
                this.f15427c = (CharSequence) obj;
                return;
            case 3:
                this.f15428d = (CharSequence) obj;
                return;
            case 4:
                this.f15429e = (App) obj;
                return;
            case 5:
                this.f15430f = (CharSequence) obj;
                return;
            case 6:
                this.f15431g = (CharSequence) obj;
                return;
            case 7:
                this.f15432h = (Coordinates) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f15424l.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f15423k.write(this, SpecificData.getEncoder(objectOutput));
    }
}
