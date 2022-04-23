package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.al;
import com.dropbox.core.v2.sharing.bk;
import com.dropbox.core.v2.sharing.bv;
import com.dropbox.core.v2.sharing.c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    protected final al f18700a;

    /* renamed from: b  reason: collision with root package name */
    protected final al f18701b;

    /* renamed from: c  reason: collision with root package name */
    protected final c f18702c;

    /* renamed from: d  reason: collision with root package name */
    protected final bk f18703d;
    protected final bv e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/r$a.class */
    public static final class a extends e<r> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18704a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ r deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                c cVar = null;
                bk bkVar = null;
                al alVar = null;
                al alVar2 = null;
                bv bvVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("acl_update_policy".equals(currentName)) {
                        c.a aVar = c.a.f18642a;
                        cVar = c.a.a(jsonParser);
                    } else if ("shared_link_policy".equals(currentName)) {
                        bk.a aVar2 = bk.a.f18592a;
                        bkVar = bk.a.a(jsonParser);
                    } else if ("member_policy".equals(currentName)) {
                        alVar = (al) d.a(al.a.f18491a).deserialize(jsonParser);
                    } else if ("resolved_member_policy".equals(currentName)) {
                        alVar2 = (al) d.a(al.a.f18491a).deserialize(jsonParser);
                    } else if ("viewer_info_policy".equals(currentName)) {
                        bvVar = (bv) d.a(bv.a.f18640a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (cVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"acl_update_policy\" missing.");
                } else if (bkVar != null) {
                    r rVar = new r(cVar, bkVar, alVar, alVar2, bvVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18704a.serialize((a) rVar, true);
                    b.a(rVar);
                    return rVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"shared_link_policy\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(r rVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            r rVar2 = rVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("acl_update_policy");
            c.a aVar = c.a.f18642a;
            c.a.a(rVar2.f18702c, jsonGenerator);
            jsonGenerator.writeFieldName("shared_link_policy");
            bk.a aVar2 = bk.a.f18592a;
            bk.a.a(rVar2.f18703d, jsonGenerator);
            if (rVar2.f18700a != null) {
                jsonGenerator.writeFieldName("member_policy");
                d.a(al.a.f18491a).serialize((com.dropbox.core.a.c) rVar2.f18700a, jsonGenerator);
            }
            if (rVar2.f18701b != null) {
                jsonGenerator.writeFieldName("resolved_member_policy");
                d.a(al.a.f18491a).serialize((com.dropbox.core.a.c) rVar2.f18701b, jsonGenerator);
            }
            if (rVar2.e != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                d.a(bv.a.f18640a).serialize((com.dropbox.core.a.c) rVar2.e, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public r(c cVar, bk bkVar) {
        this(cVar, bkVar, null, null, null);
    }

    public r(c cVar, bk bkVar, al alVar, al alVar2, bv bvVar) {
        this.f18700a = alVar;
        this.f18701b = alVar2;
        if (cVar != null) {
            this.f18702c = cVar;
            if (bkVar != null) {
                this.f18703d = bkVar;
                this.e = bvVar;
                return;
            }
            throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
        }
        throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        r rVar = (r) obj;
        c cVar = this.f18702c;
        c cVar2 = rVar.f18702c;
        if (cVar != cVar2 && !cVar.equals(cVar2)) {
            return false;
        }
        bk bkVar = this.f18703d;
        bk bkVar2 = rVar.f18703d;
        if (bkVar != bkVar2 && !bkVar.equals(bkVar2)) {
            return false;
        }
        al alVar = this.f18700a;
        al alVar2 = rVar.f18700a;
        if (alVar != alVar2 && (alVar == null || !alVar.equals(alVar2))) {
            return false;
        }
        al alVar3 = this.f18701b;
        al alVar4 = rVar.f18701b;
        if (alVar3 != alVar4 && (alVar3 == null || !alVar3.equals(alVar4))) {
            return false;
        }
        bv bvVar = this.e;
        bv bvVar2 = rVar.e;
        if (bvVar != bvVar2) {
            return bvVar != null && bvVar.equals(bvVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18700a, this.f18701b, this.f18702c, this.f18703d, this.e});
    }

    public final String toString() {
        return a.f18704a.serialize((a) this, false);
    }
}
