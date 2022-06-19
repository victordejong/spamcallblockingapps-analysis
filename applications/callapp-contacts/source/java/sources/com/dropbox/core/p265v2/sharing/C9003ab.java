package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.EnumC9066au;
import com.dropbox.core.p265v2.sharing.EnumC9069av;
import com.dropbox.core.p265v2.sharing.EnumC9103bg;
import com.dropbox.core.p265v2.sharing.EnumC9212x;
import com.dropbox.core.p265v2.sharing.EnumC9218z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.ab */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ab.class */
public final class C9003ab {

    /* renamed from: a */
    protected final EnumC9069av f31402a;

    /* renamed from: b */
    protected final EnumC9066au f31403b;

    /* renamed from: c */
    protected final boolean f31404c;

    /* renamed from: d */
    protected final EnumC9103bg f31405d;

    /* renamed from: e */
    protected final EnumC9218z f31406e;

    /* renamed from: f */
    protected final EnumC9212x f31407f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.ab$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ab$a.class */
    public static final class C9004a extends AbstractC8558e<C9003ab> {

        /* renamed from: a */
        public static final C9004a f31408a = new C9004a();

        C9004a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9003ab deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            EnumC9069av enumC9069av = null;
            EnumC9066au enumC9066au = null;
            EnumC9103bg enumC9103bg = null;
            EnumC9218z enumC9218z = null;
            EnumC9212x enumC9212x = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("can_revoke".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("resolved_visibility".equals(currentName)) {
                    enumC9069av = (EnumC9069av) C8548d.m25354a(EnumC9069av.C9071a.f31534a).deserialize(jsonParser);
                } else if ("requested_visibility".equals(currentName)) {
                    enumC9066au = (EnumC9066au) C8548d.m25354a(EnumC9066au.C9068a.f31532a).deserialize(jsonParser);
                } else if ("revoke_failure_reason".equals(currentName)) {
                    enumC9103bg = (EnumC9103bg) C8548d.m25354a(EnumC9103bg.C9105a.f31609a).deserialize(jsonParser);
                } else if ("effective_audience".equals(currentName)) {
                    enumC9218z = (EnumC9218z) C8548d.m25354a(EnumC9218z.C9220a.f31798a).deserialize(jsonParser);
                } else if ("link_access_level".equals(currentName)) {
                    enumC9212x = (EnumC9212x) C8548d.m25354a(EnumC9212x.C9214a.f31794a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"can_revoke\" missing.");
            }
            C9003ab c9003ab = new C9003ab(bool.booleanValue(), enumC9069av, enumC9066au, enumC9103bg, enumC9218z, enumC9212x);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31408a.serialize((C9004a) c9003ab, true);
            C8546b.m25355a(c9003ab);
            return c9003ab;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9003ab c9003ab, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9003ab c9003ab2 = c9003ab;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("can_revoke");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9003ab2.f31404c), jsonGenerator);
            if (c9003ab2.f31402a != null) {
                jsonGenerator.writeFieldName("resolved_visibility");
                C8548d.m25354a(EnumC9069av.C9071a.f31534a).serialize((AbstractC8547c) c9003ab2.f31402a, jsonGenerator);
            }
            if (c9003ab2.f31403b != null) {
                jsonGenerator.writeFieldName("requested_visibility");
                C8548d.m25354a(EnumC9066au.C9068a.f31532a).serialize((AbstractC8547c) c9003ab2.f31403b, jsonGenerator);
            }
            if (c9003ab2.f31405d != null) {
                jsonGenerator.writeFieldName("revoke_failure_reason");
                C8548d.m25354a(EnumC9103bg.C9105a.f31609a).serialize((AbstractC8547c) c9003ab2.f31405d, jsonGenerator);
            }
            if (c9003ab2.f31406e != null) {
                jsonGenerator.writeFieldName("effective_audience");
                C8548d.m25354a(EnumC9218z.C9220a.f31798a).serialize((AbstractC8547c) c9003ab2.f31406e, jsonGenerator);
            }
            if (c9003ab2.f31407f != null) {
                jsonGenerator.writeFieldName("link_access_level");
                C8548d.m25354a(EnumC9212x.C9214a.f31794a).serialize((AbstractC8547c) c9003ab2.f31407f, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9003ab(boolean z) {
        this(z, null, null, null, null, null);
    }

    public C9003ab(boolean z, EnumC9069av enumC9069av, EnumC9066au enumC9066au, EnumC9103bg enumC9103bg, EnumC9218z enumC9218z, EnumC9212x enumC9212x) {
        this.f31402a = enumC9069av;
        this.f31403b = enumC9066au;
        this.f31404c = z;
        this.f31405d = enumC9103bg;
        this.f31406e = enumC9218z;
        this.f31407f = enumC9212x;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9003ab c9003ab = (C9003ab) obj;
        if (this.f31404c != c9003ab.f31404c) {
            return false;
        }
        EnumC9069av enumC9069av = this.f31402a;
        EnumC9069av enumC9069av2 = c9003ab.f31402a;
        if (enumC9069av != enumC9069av2 && (enumC9069av == null || !enumC9069av.equals(enumC9069av2))) {
            return false;
        }
        EnumC9066au enumC9066au = this.f31403b;
        EnumC9066au enumC9066au2 = c9003ab.f31403b;
        if (enumC9066au != enumC9066au2 && (enumC9066au == null || !enumC9066au.equals(enumC9066au2))) {
            return false;
        }
        EnumC9103bg enumC9103bg = this.f31405d;
        EnumC9103bg enumC9103bg2 = c9003ab.f31405d;
        if (enumC9103bg != enumC9103bg2 && (enumC9103bg == null || !enumC9103bg.equals(enumC9103bg2))) {
            return false;
        }
        EnumC9218z enumC9218z = this.f31406e;
        EnumC9218z enumC9218z2 = c9003ab.f31406e;
        if (enumC9218z != enumC9218z2 && (enumC9218z == null || !enumC9218z.equals(enumC9218z2))) {
            return false;
        }
        EnumC9212x enumC9212x = this.f31407f;
        EnumC9212x enumC9212x2 = c9003ab.f31407f;
        if (enumC9212x == enumC9212x2) {
            return true;
        }
        return enumC9212x != null && enumC9212x.equals(enumC9212x2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31402a, this.f31403b, Boolean.valueOf(this.f31404c), this.f31405d, this.f31406e, this.f31407f});
    }

    public final String toString() {
        return C9004a.f31408a.serialize((C9004a) this, false);
    }
}
