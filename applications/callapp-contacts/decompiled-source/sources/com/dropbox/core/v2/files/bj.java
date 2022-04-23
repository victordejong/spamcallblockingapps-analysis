package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.i;
import com.dropbox.core.v2.files.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bj.class */
public final class bj extends ak {

    /* renamed from: d  reason: collision with root package name */
    protected final Long f18281d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bj$a.class */
    public static final class a extends e<bj> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18282a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("video".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.files.bj a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.bj.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.bj");
        }

        /* renamed from: a */
        public final void serialize(bj bjVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("video", jsonGenerator);
            if (bjVar.f18169a != null) {
                jsonGenerator.writeFieldName("dimensions");
                d.a((e) i.a.f18316a).serialize((e) bjVar.f18169a, jsonGenerator);
            }
            if (bjVar.f18170b != null) {
                jsonGenerator.writeFieldName("location");
                d.a((e) z.a.f18386a).serialize((e) bjVar.f18170b, jsonGenerator);
            }
            if (bjVar.f18171c != null) {
                jsonGenerator.writeFieldName("time_taken");
                d.a(d.b.f17711a).serialize((c) bjVar.f18171c, jsonGenerator);
            }
            if (bjVar.f18281d != null) {
                jsonGenerator.writeFieldName(VastIconXmlManager.DURATION);
                d.a(d.e.f17714a).serialize((c) bjVar.f18281d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bj deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public bj() {
        this(null, null, null, null);
    }

    public bj(i iVar, z zVar, Date date, Long l) {
        super(iVar, zVar, date);
        this.f18281d = l;
    }

    @Override // com.dropbox.core.v2.files.ak
    public final String a() {
        return a.f18282a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.ak
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bj bjVar = (bj) obj;
        if (this.f18169a != bjVar.f18169a && (this.f18169a == null || !this.f18169a.equals(bjVar.f18169a))) {
            return false;
        }
        if (this.f18170b != bjVar.f18170b && (this.f18170b == null || !this.f18170b.equals(bjVar.f18170b))) {
            return false;
        }
        if (this.f18171c != bjVar.f18171c && (this.f18171c == null || !this.f18171c.equals(bjVar.f18171c))) {
            return false;
        }
        Long l = this.f18281d;
        Long l2 = bjVar.f18281d;
        if (l != l2) {
            return l != null && l.equals(l2);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.ak
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18281d});
    }

    @Override // com.dropbox.core.v2.files.ak
    public final String toString() {
        return a.f18282a.serialize((a) this, false);
    }
}
