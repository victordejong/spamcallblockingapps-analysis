package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/o.class */
public enum o {
    CHANGE_OPTIONS,
    DISABLE_VIEWER_INFO,
    EDIT_CONTENTS,
    ENABLE_VIEWER_INFO,
    INVITE_EDITOR,
    INVITE_VIEWER,
    INVITE_VIEWER_NO_COMMENT,
    RELINQUISH_MEMBERSHIP,
    UNMOUNT,
    UNSHARE,
    LEAVE_A_COPY,
    SHARE_LINK,
    CREATE_LINK,
    SET_ACCESS_INHERITANCE,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.o$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/o$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18693a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[o.values().length];
            f18693a = iArr;
            try {
                iArr[o.CHANGE_OPTIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18693a[o.DISABLE_VIEWER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18693a[o.EDIT_CONTENTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18693a[o.ENABLE_VIEWER_INFO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18693a[o.INVITE_EDITOR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18693a[o.INVITE_VIEWER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18693a[o.INVITE_VIEWER_NO_COMMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18693a[o.RELINQUISH_MEMBERSHIP.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18693a[o.UNMOUNT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18693a[o.UNSHARE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f18693a[o.LEAVE_A_COPY.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f18693a[o.SHARE_LINK.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f18693a[o.CREATE_LINK.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f18693a[o.SET_ACCESS_INHERITANCE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/o$a.class */
    static final class a extends f<o> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18694a = new a();

        a() {
        }

        public static o a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                z = true;
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
            } else {
                z = false;
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            }
            if (str != null) {
                o oVar = "change_options".equals(str) ? o.CHANGE_OPTIONS : "disable_viewer_info".equals(str) ? o.DISABLE_VIEWER_INFO : "edit_contents".equals(str) ? o.EDIT_CONTENTS : "enable_viewer_info".equals(str) ? o.ENABLE_VIEWER_INFO : "invite_editor".equals(str) ? o.INVITE_EDITOR : "invite_viewer".equals(str) ? o.INVITE_VIEWER : "invite_viewer_no_comment".equals(str) ? o.INVITE_VIEWER_NO_COMMENT : "relinquish_membership".equals(str) ? o.RELINQUISH_MEMBERSHIP : "unmount".equals(str) ? o.UNMOUNT : "unshare".equals(str) ? o.UNSHARE : "leave_a_copy".equals(str) ? o.LEAVE_A_COPY : "share_link".equals(str) ? o.SHARE_LINK : "create_link".equals(str) ? o.CREATE_LINK : "set_access_inheritance".equals(str) ? o.SET_ACCESS_INHERITANCE : o.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return oVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(o oVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18693a[oVar.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("change_options");
                    return;
                case 2:
                    jsonGenerator.writeString("disable_viewer_info");
                    return;
                case 3:
                    jsonGenerator.writeString("edit_contents");
                    return;
                case 4:
                    jsonGenerator.writeString("enable_viewer_info");
                    return;
                case 5:
                    jsonGenerator.writeString("invite_editor");
                    return;
                case 6:
                    jsonGenerator.writeString("invite_viewer");
                    return;
                case 7:
                    jsonGenerator.writeString("invite_viewer_no_comment");
                    return;
                case 8:
                    jsonGenerator.writeString("relinquish_membership");
                    return;
                case 9:
                    jsonGenerator.writeString("unmount");
                    return;
                case 10:
                    jsonGenerator.writeString("unshare");
                    return;
                case 11:
                    jsonGenerator.writeString("leave_a_copy");
                    return;
                case 12:
                    jsonGenerator.writeString("share_link");
                    return;
                case 13:
                    jsonGenerator.writeString("create_link");
                    return;
                case 14:
                    jsonGenerator.writeString("set_access_inheritance");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((o) obj, jsonGenerator);
        }
    }
}
