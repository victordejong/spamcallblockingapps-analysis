package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ab;
import com.dropbox.core.v2.sharing.bo;
import com.dropbox.core.v2.sharing.m;
import com.dropbox.core.v2.sharing.p;
import com.dropbox.core.v2.users.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bj.class */
public class bj {
    protected final String e;
    protected final String f;
    protected final String g;
    protected final Date h;
    protected final String i;
    protected final ab j;
    protected final bo k;
    protected final d l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bj$a.class */
    public static final class a extends e<bj> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18590a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("".equals(r0) != false) goto L_0x0018;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.v2.sharing.bj a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 483
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.sharing.bj.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.bj");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bj deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bj bjVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            bj bjVar2 = bjVar;
            if (bjVar2 instanceof m) {
                m.a.f18686a.serialize((m) bjVar2, jsonGenerator, z);
            } else if (bjVar2 instanceof p) {
                p.a.f18695a.serialize((p) bjVar2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("url");
                d.h.f17717a.serialize((d.h) bjVar2.e, jsonGenerator);
                jsonGenerator.writeFieldName("name");
                d.h.f17717a.serialize((d.h) bjVar2.g, jsonGenerator);
                jsonGenerator.writeFieldName("link_permissions");
                ab.a.f18449a.serialize((ab.a) bjVar2.j, jsonGenerator);
                if (bjVar2.f != null) {
                    jsonGenerator.writeFieldName("id");
                    com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) bjVar2.f, jsonGenerator);
                }
                if (bjVar2.h != null) {
                    jsonGenerator.writeFieldName("expires");
                    com.dropbox.core.a.d.a(d.b.f17711a).serialize((c) bjVar2.h, jsonGenerator);
                }
                if (bjVar2.i != null) {
                    jsonGenerator.writeFieldName("path_lower");
                    com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) bjVar2.i, jsonGenerator);
                }
                if (bjVar2.k != null) {
                    jsonGenerator.writeFieldName("team_member_info");
                    com.dropbox.core.a.d.a((e) bo.a.f18602a).serialize((e) bjVar2.k, jsonGenerator);
                }
                if (bjVar2.l != null) {
                    jsonGenerator.writeFieldName("content_owner_team_info");
                    com.dropbox.core.a.d.a((e) d.a.f18869a).serialize((e) bjVar2.l, jsonGenerator);
                }
                if (!z) {
                    jsonGenerator.writeEndObject();
                }
            }
        }
    }

    public bj(String str, String str2, ab abVar) {
        this(str, str2, abVar, null, null, null, null, null);
    }

    public bj(String str, String str2, ab abVar, String str3, Date date, String str4, bo boVar, com.dropbox.core.v2.users.d dVar) {
        if (str != null) {
            this.e = str;
            if (str3 == null || str3.length() > 0) {
                this.f = str3;
                if (str2 != null) {
                    this.g = str2;
                    this.h = com.dropbox.core.util.d.a(date);
                    this.i = str4;
                    if (abVar != null) {
                        this.j = abVar;
                        this.k = boVar;
                        this.l = dVar;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
                }
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public String a() {
        return a.f18590a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bj bjVar = (bj) obj;
        String str = this.e;
        String str2 = bjVar.e;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.g;
        String str4 = bjVar.g;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        ab abVar = this.j;
        ab abVar2 = bjVar.j;
        if (abVar != abVar2 && !abVar.equals(abVar2)) {
            return false;
        }
        String str5 = this.f;
        String str6 = bjVar.f;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        Date date = this.h;
        Date date2 = bjVar.h;
        if (date != date2 && (date == null || !date.equals(date2))) {
            return false;
        }
        String str7 = this.i;
        String str8 = bjVar.i;
        if (str7 != str8 && (str7 == null || !str7.equals(str8))) {
            return false;
        }
        bo boVar = this.k;
        bo boVar2 = bjVar.k;
        if (boVar != boVar2 && (boVar == null || !boVar.equals(boVar2))) {
            return false;
        }
        com.dropbox.core.v2.users.d dVar = this.l;
        com.dropbox.core.v2.users.d dVar2 = bjVar.l;
        if (dVar != dVar2) {
            return dVar != null && dVar.equals(dVar2);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l});
    }

    public String toString() {
        return a.f18590a.serialize((a) this, false);
    }
}
