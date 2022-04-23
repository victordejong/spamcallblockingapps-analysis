package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.an;
import com.dropbox.core.v2.files.bj;
import com.dropbox.core.v2.files.i;
import com.dropbox.core.v2.files.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ak.class */
public class ak {

    /* renamed from: a  reason: collision with root package name */
    protected final i f18169a;

    /* renamed from: b  reason: collision with root package name */
    protected final z f18170b;

    /* renamed from: c  reason: collision with root package name */
    protected final Date f18171c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ak$a.class */
    public static final class a extends e<ak> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18172a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.v2.files.ak a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.ak.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.ak");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ak deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ak akVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ak akVar2 = akVar;
            if (akVar2 instanceof an) {
                an.a.f18176a.serialize((an) akVar2, jsonGenerator, z);
            } else if (akVar2 instanceof bj) {
                bj.a.f18282a.serialize((bj) akVar2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                if (akVar2.f18169a != null) {
                    jsonGenerator.writeFieldName("dimensions");
                    d.a((e) i.a.f18316a).serialize((e) akVar2.f18169a, jsonGenerator);
                }
                if (akVar2.f18170b != null) {
                    jsonGenerator.writeFieldName("location");
                    d.a((e) z.a.f18386a).serialize((e) akVar2.f18170b, jsonGenerator);
                }
                if (akVar2.f18171c != null) {
                    jsonGenerator.writeFieldName("time_taken");
                    d.a(d.b.f17711a).serialize((c) akVar2.f18171c, jsonGenerator);
                }
                if (!z) {
                    jsonGenerator.writeEndObject();
                }
            }
        }
    }

    public ak() {
        this(null, null, null);
    }

    public ak(i iVar, z zVar, Date date) {
        this.f18169a = iVar;
        this.f18170b = zVar;
        this.f18171c = com.dropbox.core.util.d.a(date);
    }

    public String a() {
        return a.f18172a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ak akVar = (ak) obj;
        i iVar = this.f18169a;
        i iVar2 = akVar.f18169a;
        if (iVar != iVar2 && (iVar == null || !iVar.equals(iVar2))) {
            return false;
        }
        z zVar = this.f18170b;
        z zVar2 = akVar.f18170b;
        if (zVar != zVar2 && (zVar == null || !zVar.equals(zVar2))) {
            return false;
        }
        Date date = this.f18171c;
        Date date2 = akVar.f18171c;
        if (date != date2) {
            return date != null && date.equals(date2);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18169a, this.f18170b, this.f18171c});
    }

    public String toString() {
        return a.f18172a.serialize((a) this, false);
    }
}
