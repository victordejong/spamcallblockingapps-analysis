package com.freshchat.consumer.sdk.p052e;

import android.content.Context;
import android.util.Base64;
import com.freshchat.consumer.sdk.beans.ConversationReadStatus;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import com.freshchat.consumer.sdk.beans.reqres.ChannelsResponseTimeResponse;
import com.freshchat.consumer.sdk.beans.reqres.ConversationsResponse;
import com.freshchat.consumer.sdk.beans.reqres.CsatResponseRequest;
import com.freshchat.consumer.sdk.beans.reqres.UploadImageResponse;
import com.freshchat.consumer.sdk.beans.reqres.UploadInboundEventsResponse;
import com.freshchat.consumer.sdk.beans.reqres.UserRequest;
import com.freshchat.consumer.sdk.beans.reqres.UserResponse;
import com.freshchat.consumer.sdk.beans.reqres.ValidateJwtIdTokenResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.p048a.C1461a;
import com.freshchat.consumer.sdk.p057j.C1567a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.e.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/e/a.class */
public class C1528a {
    private final Context context;

    public C1528a(Context context) {
        this.context = context;
        C1594aa.m40342fF();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        if (r7.getErrorCode() == com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.ServerErrorCodes.ERROR_CODE_JWT_CLAIMS_TOO_LARGE) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r7.getErrorCode() == com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.ServerErrorCodes.ERROR_CODE_INVALID_JWT_TOKEN) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m40638a(int r5, java.lang.String r6) throws com.freshchat.consumer.sdk.exception.DeletedException {
        /*
            r4 = this;
            com.freshchat.consumer.sdk.j.ab r0 = new com.freshchat.consumer.sdk.j.ab
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.Class<com.freshchat.consumer.sdk.beans.reqres.ErrorResponse> r2 = com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.class
            java.lang.Object r0 = r0.fromJson(r1, r2)     // Catch: java.lang.Exception -> L16
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse r0 = (com.freshchat.consumer.sdk.beans.reqres.ErrorResponse) r0     // Catch: java.lang.Exception -> L16
            r7 = r0
            goto L23
        L16:
            r7 = move-exception
            r0 = r7
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse r0 = new com.freshchat.consumer.sdk.beans.reqres.ErrorResponse
            r1 = r0
            r1.<init>()
            r7 = r0
        L23:
            r0 = 1
            r8 = r0
            r0 = r5
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 != r1) goto L38
            r0 = r4
            android.content.Context r0 = r0.getContext()
            r1 = r6
            com.freshchat.consumer.sdk.p052e.C1533f.m40588o(r0, r1)
            goto L8b
        L38:
            r0 = r5
            r1 = 428(0x1ac, float:6.0E-43)
            if (r0 != r1) goto L49
        L3f:
            r0 = r4
            android.content.Context r0 = r0.getContext()
            com.freshchat.consumer.sdk.p057j.C1720o.m39854bA(r0)
            goto L8b
        L49:
            r0 = r5
            r1 = 413(0x19d, float:5.79E-43)
            if (r0 != r1) goto L5d
            r0 = r7
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r0 = r0.getErrorCode()
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r1 = com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.ServerErrorCodes.ERROR_CODE_JWT_CLAIMS_TOO_LARGE
            if (r0 != r1) goto L88
            goto L3f
        L5d:
            r0 = r5
            r1 = 412(0x19c, float:5.77E-43)
            if (r0 != r1) goto L88
            r0 = r7
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r0 = r0.getErrorCode()
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r1 = com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.ServerErrorCodes.ERROR_CODE_JWT_TOKEN_EXPIRED
            if (r0 != r1) goto L7b
            r0 = r4
            android.content.Context r0 = r0.getContext()
            com.freshchat.consumer.sdk.JwtTokenStatus r1 = com.freshchat.consumer.sdk.JwtTokenStatus.TOKEN_EXPIRED
            com.freshchat.consumer.sdk.p057j.C1720o.m39859a(r0, r1)
            goto L8b
        L7b:
            r0 = r7
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r0 = r0.getErrorCode()
            com.freshchat.consumer.sdk.beans.reqres.ErrorResponse$ServerErrorCodes r1 = com.freshchat.consumer.sdk.beans.reqres.ErrorResponse.ServerErrorCodes.ERROR_CODE_INVALID_JWT_TOKEN
            if (r0 != r1) goto L88
            goto L3f
        L88:
            r0 = 0
            r8 = r0
        L8b:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40638a(int, java.lang.String):boolean");
    }

    private Context getContext() {
        return this.context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
        if (r5 == false) goto L39;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.beans.FAQCategoryFetchResponse m40636a(int r5, java.util.List<java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40636a(int, java.util.List):com.freshchat.consumer.sdk.beans.FAQCategoryFetchResponse");
    }

    /* renamed from: a */
    public ConversationsResponse m40631a(String str, int i) throws DeletedException {
        try {
            C1531d m40604ae = new C1530c(this.context).m40604ae(C1567a.m40489a(this.context, str, i));
            int statusCode = m40604ae.getStatusCode();
            String m40608a = C1530c.m40608a(m40604ae);
            if (!m40638a(statusCode, m40608a) && statusCode != 200) {
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            ConversationsResponse conversationsResponse = (ConversationsResponse) new C1597ab().fromJson(m40608a, (Class<Object>) ConversationsResponse.class);
            conversationsResponse.setStatusCode(statusCode);
            return conversationsResponse;
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: a */
    public UploadImageResponse m40634a(MessageFragment messageFragment, int i) throws DeletedException {
        try {
            C1532e c1532e = new C1532e(this.context, C1567a.m40493J(this.context));
            String content = messageFragment.getContent();
            InputStream m40315aE = C1626as.m40233a(content) ? C1608ad.m40315aE(content) : null;
            if (m40315aE != null) {
                c1532e.m40593a("pic", "picFile", m40315aE, messageFragment.getContentType());
            }
            c1532e.m40591f(AnalyticsConstants.NAME, "pic_" + i);
            C1531d m40592dc = c1532e.m40592dc();
            String m40608a = C1530c.m40608a(m40592dc);
            if (!m40638a(m40592dc.getStatusCode(), m40608a)) {
                return (UploadImageResponse) new C1597ab().fromJson(m40608a, (Class<Object>) UploadImageResponse.class);
            }
            return null;
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            C1723q.m39823a(e2);
            return null;
        }
    }

    /* renamed from: a */
    public UserResponse m40632a(UserRequest userRequest) throws DeletedException {
        try {
            String m40498G = C1567a.m40498G(this.context);
            User user = userRequest.getUser();
            C1530c c1530c = new C1530c(this.context);
            C1597ab c1597ab = new C1597ab();
            C1531d m40599c = c1530c.m40599c(m40498G, c1597ab.toJson(userRequest));
            int statusCode = m40599c.getStatusCode();
            String m40608a = C1530c.m40608a(m40599c);
            if (!m40638a(statusCode, m40608a) && statusCode != 201) {
                if (statusCode == 304) {
                    return new UserResponse(statusCode, user);
                }
                if (statusCode == 409) {
                    return new UserResponse(statusCode, null);
                }
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            return new UserResponse(statusCode, (User) c1597ab.fromJson(m40608a, (Class<Object>) User.class));
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0098, code lost:
        if (r6 == false) goto L39;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.C1886ai m40637a(int r6, java.lang.String r7, java.util.List<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40637a(int, java.lang.String, java.util.List):com.freshchat.consumer.sdk.service.e.ai");
    }

    /* renamed from: a */
    public void m40635a(ConversationReadStatus conversationReadStatus) throws DeletedException {
        try {
            C1531d m40599c = new C1530c(this.context).m40599c(C1567a.m40502B(this.context), new C1597ab().toJson(conversationReadStatus));
            String m40608a = C1530c.m40608a(m40599c);
            if (m40638a(m40599c.getStatusCode(), m40608a) || m40599c.getStatusCode() == 200) {
                return;
            }
            throw new C1529b("sc: " + m40599c.getStatusCode() + " m: " + m40608a);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: a */
    public void m40629a(String str, String str2, String str3, String str4) throws DeletedException {
        try {
            C1531d m40603af = new C1530c(this.context).m40603af(C1567a.m40487a(this.context, str, str2, str3, str4));
            int statusCode = m40603af.getStatusCode();
            String m40608a = C1530c.m40608a(m40603af);
            if (m40638a(statusCode, m40608a) || statusCode == 200) {
                return;
            }
            throw new C1529b("sc: " + statusCode + " m: " + m40608a);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: a */
    public boolean m40633a(CsatResponseRequest csatResponseRequest, String str, String str2) throws DeletedException {
        try {
            C1531d m40599c = new C1530c(this.context).m40599c(C1567a.m40481b(this.context, str, str2), new C1597ab().toJson(csatResponseRequest));
            int statusCode = m40599c.getStatusCode();
            return !m40638a(statusCode, C1530c.m40608a(m40599c)) && statusCode == 201;
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: a */
    public boolean m40630a(String str, CallbackButtonFragment callbackButtonFragment, String str2) throws DeletedException {
        boolean z = false;
        try {
            C1531d m40599c = new C1530c(this.context).m40599c(C1567a.m40472j(this.context, str, str2), C1597ab.m40337in().toJson(callbackButtonFragment));
            int statusCode = m40599c.getStatusCode();
            if (!m40638a(statusCode, C1530c.m40608a(m40599c)) && statusCode == 200) {
                z = true;
            }
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            C1723q.m39823a(e2);
        }
        return z;
    }

    /* renamed from: a */
    public boolean m40628a(String str, String str2, JSONObject jSONObject) throws DeletedException {
        boolean z;
        try {
            C1531d m40598d = new C1530c(this.context).m40598d(C1567a.m40488a(this.context, str, str2), jSONObject.toString());
            if (!m40638a(m40598d.getStatusCode(), C1530c.m40608a(m40598d))) {
                if (m40598d.getStatusCode() == 200) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: aZ */
    public ValidateJwtIdTokenResponse m40627aZ(String str) {
        try {
            String m40479bv = C1567a.m40479bv(this.context);
            C1530c c1530c = new C1530c(this.context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("jwtAuthToken", str);
            C1531d m40599c = c1530c.m40599c(m40479bv, jSONObject.toString());
            int statusCode = m40599c.getStatusCode();
            String m40608a = C1530c.m40608a(m40599c);
            if (!m40638a(statusCode, m40608a) && statusCode != 200) {
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            return (ValidateJwtIdTokenResponse) new C1597ab().fromJson(m40608a, (Class<Object>) ValidateJwtIdTokenResponse.class);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            return null;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: ad */
    public boolean m40626ad(String str) throws DeletedException {
        try {
            C1531d m40603af = new C1530c(this.context).m40603af(C1567a.m40476g(this.context, str));
            int statusCode = m40603af.getStatusCode();
            return !m40638a(statusCode, C1530c.m40608a(m40603af)) && statusCode == 200;
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (r0.getStatusCode() == 202) goto L13;
     */
    /* renamed from: ap */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m40625ap(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            com.freshchat.consumer.sdk.e.c r0 = new com.freshchat.consumer.sdk.e.c     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r7 = r0
            r0 = r7
            r1 = r4
            android.content.Context r1 = r1.context     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r0.<init>(r1)     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r0 = r7
            r1 = r4
            android.content.Context r1 = r1.context     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r2 = r5
            java.lang.String r1 = com.freshchat.consumer.sdk.p057j.C1567a.m40474h(r1, r2)     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            com.freshchat.consumer.sdk.e.d r0 = r0.m40603af(r1)     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r5 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.getStatusCode()     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r2 = r5
            java.lang.String r2 = com.freshchat.consumer.sdk.p052e.C1530c.m40608a(r2)     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            boolean r0 = r0.m40638a(r1, r2)     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            if (r0 == 0) goto L2d
            goto L3e
        L2d:
            r0 = r5
            int r0 = r0.getStatusCode()     // Catch: java.lang.Exception -> L43 com.freshchat.consumer.sdk.exception.DeletedException -> L4f
            r8 = r0
            r0 = r8
            r1 = 202(0xca, float:2.83E-43)
            if (r0 != r1) goto L3e
            goto L4d
        L3e:
            r0 = 0
            r6 = r0
            goto L4d
        L43:
            r5 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        L4d:
            r0 = r6
            return r0
        L4f:
            r5 = move-exception
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40625ap(java.lang.String):boolean");
    }

    /* renamed from: b */
    public UserResponse m40623b(UserRequest userRequest) throws DeletedException {
        try {
            String m40496H = C1567a.m40496H(this.context);
            C1530c c1530c = new C1530c(this.context);
            C1597ab c1597ab = new C1597ab();
            C1531d m40598d = c1530c.m40598d(m40496H, c1597ab.toJson(userRequest));
            int statusCode = m40598d.getStatusCode();
            String m40608a = C1530c.m40608a(m40598d);
            if (!m40638a(statusCode, m40608a)) {
                if (statusCode == 409) {
                    return new UserResponse(statusCode, null);
                }
                if (statusCode != 200) {
                    throw new C1529b("sc: " + statusCode + " m: " + m40608a);
                }
            }
            return new UserResponse(statusCode, (User) c1597ab.fromJson(m40608a, (Class<Object>) User.class));
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0098, code lost:
        if (r6 == false) goto L39;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.C1886ai m40624b(int r6, java.lang.String r7, java.util.List<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40624b(int, java.lang.String, java.util.List):com.freshchat.consumer.sdk.service.e.ai");
    }

    /* renamed from: bp */
    public AgentAvailabilityResponse m40622bp(String str) throws DeletedException {
        try {
            C1531d m40604ae = new C1530c(this.context).m40604ae(C1567a.m40495H(this.context, str));
            int statusCode = m40604ae.getStatusCode();
            String m40608a = C1530c.m40608a(m40604ae);
            if (!m40638a(statusCode, m40608a) && statusCode != 200) {
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            return (AgentAvailabilityResponse) new C1597ab().fromJson(m40608a, (Class<Object>) AgentAvailabilityResponse.class);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: c */
    public UserResponse m40621c(UserRequest userRequest) throws DeletedException {
        User user;
        try {
            String m40478bw = C1567a.m40478bw(this.context);
            C1530c c1530c = new C1530c(this.context);
            C1597ab c1597ab = new C1597ab();
            C1531d m40599c = c1530c.m40599c(m40478bw, c1597ab.toJson(userRequest));
            int statusCode = m40599c.getStatusCode();
            String m40608a = C1530c.m40608a(m40599c);
            if (!m40638a(statusCode, m40608a) && statusCode == 200) {
                user = (User) c1597ab.fromJson(m40608a, (Class<Object>) User.class);
                return new UserResponse(statusCode, user);
            }
            user = null;
            return new UserResponse(statusCode, user);
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: cV */
    public boolean m40620cV() throws DeletedException {
        try {
            C1531d m40602ag = new C1530c(this.context).m40602ag(C1567a.m40501D(this.context));
            int statusCode = m40602ag.getStatusCode();
            return !m40638a(statusCode, C1530c.m40608a(m40602ag)) && statusCode == 200;
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: cW */
    public boolean m40619cW() throws DeletedException {
        try {
            C1531d m40602ag = new C1530c(this.context).m40602ag(C1567a.m40500E(this.context));
            int statusCode = m40602ag.getStatusCode();
            return !m40638a(statusCode, C1530c.m40608a(m40602ag)) && statusCode == 200;
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: cX */
    public boolean m40618cX() throws DeletedException {
        try {
            C1531d m40603af = new C1530c(this.context).m40603af(C1567a.m40499F(this.context));
            int statusCode = m40603af.getStatusCode();
            return !m40638a(statusCode, C1530c.m40608a(m40603af)) && statusCode == 200;
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: cZ */
    public ChannelsResponseTimeResponse m40617cZ() throws DeletedException {
        try {
            C1531d m40604ae = new C1530c(this.context).m40604ae(C1567a.m40492K(this.context));
            int statusCode = m40604ae.getStatusCode();
            String m40608a = C1530c.m40608a(m40604ae);
            if (!m40638a(statusCode, m40608a) && statusCode != 200) {
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            return (ChannelsResponseTimeResponse) new C1597ab().fromJson(m40608a, (Class<Object>) ChannelsResponseTimeResponse.class);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: d */
    public Message m40616d(Message message) throws DeletedException {
        try {
            String m40494I = C1567a.m40494I(this.context);
            C1597ab c1597ab = new C1597ab(new C1597ab.C1601d());
            C1531d m40599c = new C1530c(this.context).m40599c(m40494I, c1597ab.toJson(message));
            String m40608a = C1530c.m40608a(m40599c);
            int statusCode = m40599c.getStatusCode();
            C1461a c1461a = new C1461a(m40608a);
            if (!m40638a(statusCode, m40608a) && statusCode != 201) {
                String str = "sc: " + statusCode + " m: " + m40608a;
                C1613ai.m40284d("FRESHCHAT", str);
                if (c1461a.isValid() && c1461a.m41027cm() != null) {
                    JSONObject m41027cm = c1461a.m41027cm();
                    if (m41027cm.has("errorCode") && m41027cm.getInt("errorCode") == -1) {
                        C1466e.m40905i(this.context).m40947c(false);
                        if (!C1807c.m39518t(this.context)) {
                            C1638b.m40156a(this.context, (User) null, true);
                        }
                        C1638b.m40169M(this.context);
                    }
                }
                throw new C1529b(str);
            }
            return (Message) c1597ab.fromJson(m40608a, (Class<Object>) Message.class);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0068, code lost:
        if (r12 == false) goto L18;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.C1892an m40615d(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            com.freshchat.consumer.sdk.service.e.an r0 = new com.freshchat.consumer.sdk.service.e.an
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r6
            android.content.Context r0 = r0.context     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            java.lang.String r0 = com.freshchat.consumer.sdk.p057j.C1567a.m40480b(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r8 = r0
            com.freshchat.consumer.sdk.e.c r0 = new com.freshchat.consumer.sdk.e.c     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r7 = r0
            r0 = r7
            r1 = r6
            android.content.Context r1 = r1.context     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r0 = r7
            r1 = r8
            com.freshchat.consumer.sdk.e.d r0 = r0.m40603af(r1)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r8 = r0
            r0 = r8
            int r0 = r0.getStatusCode()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r12 = r0
            r0 = r8
            java.lang.String r0 = com.freshchat.consumer.sdk.p052e.C1530c.m40608a(r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r7 = r0
            r0 = r6
            r1 = r12
            r2 = r7
            boolean r0 = r0.m40638a(r1, r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            if (r0 == 0) goto L40
            goto L5e
        L40:
            r0 = r8
            int r0 = r0.getStatusCode()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L5e
            com.freshchat.consumer.sdk.j.ab r0 = com.freshchat.consumer.sdk.p057j.C1597ab.m40337in()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r1 = r7
            java.lang.Class<com.freshchat.consumer.sdk.service.e.an> r2 = com.freshchat.consumer.sdk.service.p068e.C1892an.class
            java.lang.Object r0 = r0.fromJson(r1, r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            com.freshchat.consumer.sdk.service.e.an r0 = (com.freshchat.consumer.sdk.service.p068e.C1892an) r0     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7b
            r7 = r0
            r0 = 0
            r12 = r0
            goto L64
        L5e:
            r0 = 1
            r12 = r0
            r0 = r11
            r7 = r0
        L64:
            r0 = r7
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L86
        L6b:
            r0 = r7
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
            r0 = r7
            r8 = r0
            goto L86
        L77:
            r7 = move-exception
            goto L88
        L7b:
            r7 = move-exception
            r0 = r7
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L77
            r0 = r11
            r7 = r0
            goto L6b
        L86:
            r0 = r8
            return r0
        L88:
            r0 = r11
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40615d(java.lang.String, java.lang.String, java.lang.String, java.lang.String):com.freshchat.consumer.sdk.service.e.an");
    }

    /* renamed from: gg */
    public RemoteConfig m40614gg() throws DeletedException {
        try {
            C1531d m40604ae = new C1530c(this.context).m40604ae(C1567a.m40471y(this.context));
            int statusCode = m40604ae.getStatusCode();
            String m40608a = C1530c.m40608a(m40604ae);
            if (m40638a(statusCode, m40608a) || statusCode != 200) {
                return null;
            }
            return (RemoteConfig) new C1597ab().fromJson(m40608a, (Class<Object>) RemoteConfig.class);
        } catch (DeletedException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: h */
    public UploadInboundEventsResponse m40613h(String str, String str2) throws DeletedException {
        try {
            C1531d m40599c = new C1530c(this.context).m40599c(C1567a.m40497G(this.context, str2), str);
            int statusCode = m40599c.getStatusCode();
            String m40608a = C1530c.m40608a(m40599c);
            if (!m40638a(statusCode, m40608a) && statusCode != 202) {
                throw new C1529b("sc: " + statusCode + " m: " + m40608a);
            }
            return (UploadInboundEventsResponse) new C1597ab().fromJson(m40608a, (Class<Object>) UploadInboundEventsResponse.class);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0069, code lost:
        if (r9 == false) goto L18;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse m40612l(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse r0 = new com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r5
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r1 = r6
            r2 = r7
            java.lang.String r0 = com.freshchat.consumer.sdk.p057j.C1567a.m40475g(r0, r1, r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r7 = r0
            com.freshchat.consumer.sdk.e.c r0 = new com.freshchat.consumer.sdk.e.c     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r6 = r0
            r0 = r6
            r1 = r5
            android.content.Context r1 = r1.context     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0 = r6
            r1 = r7
            com.freshchat.consumer.sdk.e.d r0 = r0.m40604ae(r1)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r6 = r0
            r0 = r6
            int r0 = r0.getStatusCode()     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r9 = r0
            r0 = r6
            java.lang.String r0 = com.freshchat.consumer.sdk.p052e.C1530c.m40608a(r0)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r7 = r0
            r0 = r5
            r1 = r9
            r2 = r7
            boolean r0 = r0.m40638a(r1, r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            if (r0 == 0) goto L3c
            goto L64
        L3c:
            r0 = r6
            int r0 = r0.getStatusCode()     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L64
            r0 = r8
            com.freshchat.consumer.sdk.j.ab r1 = com.freshchat.consumer.sdk.p057j.C1597ab.m40337in()     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r2 = r7
            java.lang.Class<com.freshchat.consumer.sdk.beans.FAQ> r3 = com.freshchat.consumer.sdk.beans.FAQ.class
            java.lang.Object r1 = r1.fromJson(r2, r3)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            com.freshchat.consumer.sdk.beans.FAQ r1 = (com.freshchat.consumer.sdk.beans.FAQ) r1     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0.setFaq(r1)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.SUCCESS     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0.setStatus(r1)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L73
            r0 = 0
            r9 = r0
            goto L67
        L64:
            r0 = 1
            r9 = r0
        L67:
            r0 = r9
            if (r0 == 0) goto L7f
            goto L78
        L6f:
            r6 = move-exception
            goto L81
        L73:
            r6 = move-exception
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L6f
        L78:
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
        L7f:
            r0 = r8
            return r0
        L81:
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40612l(java.lang.String, java.lang.String):com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse");
    }

    /* renamed from: n */
    public UserResponse m40611n(String str, String str2) throws DeletedException {
        User user;
        try {
            C1531d m40604ae = new C1530c(getContext()).m40604ae(C1567a.m40477e(getContext(), Base64.encodeToString(str.getBytes(), 11), str2));
            int statusCode = m40604ae.getStatusCode();
            String m40608a = C1530c.m40608a(m40604ae);
            if (!m40638a(statusCode, m40608a) && statusCode == 200) {
                user = (User) new C1597ab().fromJson(m40608a, (Class<Object>) User.class);
                return new UserResponse(statusCode, user);
            }
            user = null;
            return new UserResponse(statusCode, user);
        } catch (C1529b e) {
            throw e;
        } catch (DeletedException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: q */
    public boolean m40610q(long j) throws DeletedException {
        try {
            Context context = this.context;
            C1532e c1532e = new C1532e(context, C1567a.m40482b(context, j), "PUT");
            c1532e.m40594a(AnalyticsConstants.LOG, C1613ai.m40288aR(this.context));
            C1531d m40592dc = c1532e.m40592dc();
            int statusCode = m40592dc.getStatusCode();
            if (statusCode != 410) {
                return statusCode == 200;
            }
            C1533f.m40588o(this.context, C1530c.m40608a(m40592dc));
            return false;
        } catch (DeletedException e) {
            throw e;
        } catch (IOException e2) {
            C1613ai.m40283e("FRESHCHAT", "Failed to upload log");
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
        if (r9 == false) goto L18;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse m40609z(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse r0 = new com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r5
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r1 = r6
            r2 = r7
            java.lang.String r0 = com.freshchat.consumer.sdk.p057j.C1567a.m40473i(r0, r1, r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r7 = r0
            com.freshchat.consumer.sdk.e.c r0 = new com.freshchat.consumer.sdk.e.c     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r6 = r0
            r0 = r6
            r1 = r5
            android.content.Context r1 = r1.context     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0 = r6
            r1 = r7
            com.freshchat.consumer.sdk.e.d r0 = r0.m40604ae(r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r6 = r0
            r0 = r6
            int r0 = r0.getStatusCode()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r9 = r0
            r0 = r6
            java.lang.String r0 = com.freshchat.consumer.sdk.p052e.C1530c.m40608a(r0)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r6 = r0
            r0 = r5
            r1 = r9
            r2 = r6
            boolean r0 = r0.m40638a(r1, r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            if (r0 == 0) goto L3c
            goto L62
        L3c:
            r0 = r9
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L62
            r0 = r8
            com.freshchat.consumer.sdk.j.ab r1 = com.freshchat.consumer.sdk.p057j.C1597ab.m40337in()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r2 = r6
            java.lang.Class<com.freshchat.consumer.sdk.beans.BotFAQ> r3 = com.freshchat.consumer.sdk.beans.BotFAQ.class
            java.lang.Object r1 = r1.fromJson(r2, r3)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            com.freshchat.consumer.sdk.beans.BotFAQ r1 = (com.freshchat.consumer.sdk.beans.BotFAQ) r1     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0.setBotFAQ(r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.SUCCESS     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0.setStatus(r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L71
            r0 = 0
            r9 = r0
            goto L65
        L62:
            r0 = 1
            r9 = r0
        L65:
            r0 = r9
            if (r0 == 0) goto L7d
            goto L76
        L6d:
            r6 = move-exception
            goto L7f
        L71:
            r6 = move-exception
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L6d
        L76:
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
        L7d:
            r0 = r8
            return r0
        L7f:
            r0 = r8
            com.freshchat.consumer.sdk.service.Status r1 = com.freshchat.consumer.sdk.service.Status.ERROR
            r0.setStatus(r1)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p052e.C1528a.m40609z(java.lang.String, java.lang.String):com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse");
    }
}
