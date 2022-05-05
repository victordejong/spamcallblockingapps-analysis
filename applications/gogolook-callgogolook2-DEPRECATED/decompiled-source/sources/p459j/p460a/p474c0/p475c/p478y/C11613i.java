package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import android.provider.BaseColumns;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018�� B2\u00020\u0001:\u0002BCB\u0081\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00102\u001a\u00020\fHÆ\u0003J\t\u00103\u001a\u00020\fHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00108\u001a\u00020\tHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010:\u001a\u00020\fHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0085\u0001\u0010<\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fHÆ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\fHÖ\u0001J\t\u0010A\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\u000e\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0016\"\u0004\b\"\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010\u000f\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0012\"\u0004\b,\u0010\u0014¨\u0006D"}, m815d2 = {"Lgogolook/callgogolook2/messaging/datamodel/data/ConversationsData;", "", "conversationId", "", "name", "icon", "snippetText", "previewContentType", "timestamp", "", "otherParticipantNormalizedDestination", "archiveStatus", "", "subjectText", "participantCount", "unreadCount", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V", "getArchiveStatus", "()I", "setArchiveStatus", "(I)V", "getConversationId", "()Ljava/lang/String;", "setConversationId", "(Ljava/lang/String;)V", "getIcon", "setIcon", "getName", "setName", "getOtherParticipantNormalizedDestination", "setOtherParticipantNormalizedDestination", "getParticipantCount", "setParticipantCount", "getPreviewContentType", "setPreviewContentType", "getSnippetText", "setSnippetText", "getSubjectText", "setSubjectText", "getTimestamp", "()J", "setTimestamp", "(J)V", "getUnreadCount", "setUnreadCount", "bind", "", "cursor", "Landroid/database/Cursor;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "ConversationsDataColumns", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.c.y.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/i.class */
public final class C11613i {

    /* renamed from: l */
    public static final int f26035l = 0;

    /* renamed from: a */
    public String f26048a;

    /* renamed from: b */
    public String f26049b;

    /* renamed from: c */
    public String f26050c;

    /* renamed from: d */
    public String f26051d;

    /* renamed from: e */
    public String f26052e;

    /* renamed from: f */
    public long f26053f;

    /* renamed from: g */
    public String f26054g;

    /* renamed from: h */
    public int f26055h;

    /* renamed from: i */
    public String f26056i;

    /* renamed from: j */
    public int f26057j;

    /* renamed from: k */
    public int f26058k;

    /* renamed from: x */
    public static final C11614a f26047x = new C11614a(null);

    /* renamed from: m */
    public static final int f26036m = 1;

    /* renamed from: n */
    public static final int f26037n = 2;

    /* renamed from: o */
    public static final int f26038o = 3;

    /* renamed from: p */
    public static final int f26039p = 4;

    /* renamed from: q */
    public static final int f26040q = 5;

    /* renamed from: r */
    public static final int f26041r = 6;

    /* renamed from: s */
    public static final int f26042s = 7;

    /* renamed from: t */
    public static final int f26043t = 8;

    /* renamed from: u */
    public static final int f26044u = 9;

    /* renamed from: v */
    public static final int f26045v = 10;

    /* renamed from: w */
    public static final String[] f26046w = {"conversations." + C11615b.f26069k.m8841j(), C11615b.f26069k.m8848c(), C11615b.f26069k.m8849b(), C11615b.f26069k.m8844g(), C11615b.f26069k.m8845f(), C11615b.f26069k.m8843h(), C11615b.f26069k.m8847d(), C11615b.f26069k.m8850a(), C11615b.f26069k.m8842i(), C11615b.f26069k.m8846e(), "SUM(case when read=0 and 100<=message_status then 1 else 0 end) as unread"};

    /* renamed from: j.a.c0.c.y.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/i$a.class */
    public static final class C11614a {
        public C11614a() {
        }

        public /* synthetic */ C11614a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final String[] m8861a() {
            return C11613i.f26046w;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m815d2 = {"Lgogolook/callgogolook2/messaging/datamodel/data/ConversationsData$ConversationsDataColumns;", "Landroid/provider/BaseColumns;", "()V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.c.y.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/i$b.class */
    public static final class C11615b implements BaseColumns {

        /* renamed from: k */
        public static final C11616a f26069k = new C11616a(null);

        /* renamed from: a */
        public static final String f26059a = "_id";

        /* renamed from: b */
        public static final String f26060b = "name";

        /* renamed from: c */
        public static final String f26061c = "icon";

        /* renamed from: d */
        public static final String f26062d = f26062d;

        /* renamed from: d */
        public static final String f26062d = f26062d;

        /* renamed from: e */
        public static final String f26063e = f26063e;

        /* renamed from: e */
        public static final String f26063e = f26063e;

        /* renamed from: f */
        public static final String f26064f = f26064f;

        /* renamed from: f */
        public static final String f26064f = f26064f;

        /* renamed from: g */
        public static final String f26065g = f26065g;

        /* renamed from: g */
        public static final String f26065g = f26065g;

        /* renamed from: h */
        public static final String f26066h = f26066h;

        /* renamed from: h */
        public static final String f26066h = f26066h;

        /* renamed from: i */
        public static final String f26067i = f26067i;

        /* renamed from: i */
        public static final String f26067i = f26067i;

        /* renamed from: j */
        public static final String f26068j = f26068j;

        /* renamed from: j */
        public static final String f26068j = f26068j;

        /* renamed from: j.a.c0.c.y.i$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/i$b$a.class */
        public static final class C11616a {
            public C11616a() {
            }

            public /* synthetic */ C11616a(C15145g gVar) {
                this();
            }

            /* renamed from: a */
            public final String m8850a() {
                return C11615b.f26066h;
            }

            /* renamed from: b */
            public final String m8849b() {
                return C11615b.f26061c;
            }

            /* renamed from: c */
            public final String m8848c() {
                return C11615b.f26060b;
            }

            /* renamed from: d */
            public final String m8847d() {
                return C11615b.f26065g;
            }

            /* renamed from: e */
            public final String m8846e() {
                return C11615b.f26068j;
            }

            /* renamed from: f */
            public final String m8845f() {
                return C11615b.f26063e;
            }

            /* renamed from: g */
            public final String m8844g() {
                return C11615b.f26062d;
            }

            /* renamed from: h */
            public final String m8843h() {
                return C11615b.f26064f;
            }

            /* renamed from: i */
            public final String m8842i() {
                return C11615b.f26067i;
            }

            /* renamed from: j */
            public final String m8841j() {
                return C11615b.f26059a;
            }
        }
    }

    public C11613i() {
        this(null, null, null, null, null, 0L, null, 0, null, 0, 0, 2047, null);
    }

    public C11613i(String str, String str2, String str3, String str4, String str5, long j, String str6, int i, String str7, int i2, int i3) {
        this.f26048a = str;
        this.f26049b = str2;
        this.f26050c = str3;
        this.f26051d = str4;
        this.f26052e = str5;
        this.f26053f = j;
        this.f26054g = str6;
        this.f26055h = i;
        this.f26056i = str7;
        this.f26057j = i2;
        this.f26058k = i3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C11613i(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, long r20, java.lang.String r22, int r23, java.lang.String r24, int r25, int r26, int r27, p626l.p641z.p643d.C15145g r28) {
        /*
            r14 = this;
            r0 = 0
            r28 = r0
            r0 = r27
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000f
            r0 = 0
            r15 = r0
            goto L_0x000f
        L_0x000f:
            r0 = r27
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r16 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r27
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = 0
            r17 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r27
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0035
            r0 = 0
            r18 = r0
            goto L_0x0035
        L_0x0035:
            r0 = r27
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0043
            r0 = 0
            r19 = r0
            goto L_0x0043
        L_0x0043:
            r0 = r27
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0051
            r0 = 0
            r20 = r0
            goto L_0x0051
        L_0x0051:
            r0 = r27
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x005f
            r0 = 0
            r22 = r0
            goto L_0x005f
        L_0x005f:
            r0 = 0
            r29 = r0
            r0 = r27
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0071
            r0 = 0
            r23 = r0
            goto L_0x0071
        L_0x0071:
            r0 = r27
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0081
            r0 = r28
            r24 = r0
            goto L_0x0081
        L_0x0081:
            r0 = r27
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0090
            r0 = 0
            r25 = r0
            goto L_0x0090
        L_0x0090:
            r0 = r27
            r1 = 1024(0x400, float:1.435E-42)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x00a0
            r0 = r29
            r26 = r0
            goto L_0x00a0
        L_0x00a0:
            r0 = r14
            r1 = r15
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r22
            r8 = r23
            r9 = r24
            r10 = r25
            r11 = r26
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p478y.C11613i.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long, java.lang.String, int, java.lang.String, int, int, int, l.z.d.g):void");
    }

    /* renamed from: a */
    public final int m8872a() {
        return this.f26055h;
    }

    /* renamed from: a */
    public final void m8871a(Cursor cursor) {
        C15149k.m377b(cursor, "cursor");
        this.f26048a = cursor.getString(f26035l);
        this.f26049b = cursor.getString(f26036m);
        this.f26050c = cursor.getString(f26037n);
        this.f26051d = cursor.getString(f26038o);
        this.f26052e = cursor.getString(f26039p);
        this.f26053f = cursor.getLong(f26040q);
        this.f26054g = cursor.getString(f26041r);
        this.f26055h = cursor.getInt(f26042s);
        this.f26056i = cursor.getString(f26043t);
        this.f26057j = cursor.getInt(f26044u);
        this.f26058k = cursor.getInt(f26045v);
    }

    /* renamed from: b */
    public final String m8870b() {
        return this.f26048a;
    }

    /* renamed from: c */
    public final String m8869c() {
        return this.f26049b;
    }

    /* renamed from: d */
    public final String m8868d() {
        return this.f26054g;
    }

    /* renamed from: e */
    public final int m8867e() {
        return this.f26057j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11613i)) {
            return false;
        }
        C11613i iVar = (C11613i) obj;
        if (!C15149k.m384a((Object) this.f26048a, (Object) iVar.f26048a) || !C15149k.m384a((Object) this.f26049b, (Object) iVar.f26049b) || !C15149k.m384a((Object) this.f26050c, (Object) iVar.f26050c) || !C15149k.m384a((Object) this.f26051d, (Object) iVar.f26051d) || !C15149k.m384a((Object) this.f26052e, (Object) iVar.f26052e)) {
            return false;
        }
        if (!(this.f26053f == iVar.f26053f) || !C15149k.m384a((Object) this.f26054g, (Object) iVar.f26054g)) {
            return false;
        }
        if (!(this.f26055h == iVar.f26055h) || !C15149k.m384a((Object) this.f26056i, (Object) iVar.f26056i)) {
            return false;
        }
        if (!(this.f26057j == iVar.f26057j)) {
            return false;
        }
        return this.f26058k == iVar.f26058k;
    }

    /* renamed from: f */
    public final String m8866f() {
        return this.f26052e;
    }

    /* renamed from: g */
    public final String m8865g() {
        return this.f26051d;
    }

    /* renamed from: h */
    public final long m8864h() {
        return this.f26053f;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.f26048a;
        int i = 0;
        int hashCode5 = str != null ? str.hashCode() : 0;
        String str2 = this.f26049b;
        int hashCode6 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f26050c;
        int hashCode7 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f26051d;
        int hashCode8 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f26052e;
        int hashCode9 = str5 != null ? str5.hashCode() : 0;
        hashCode = Long.valueOf(this.f26053f).hashCode();
        String str6 = this.f26054g;
        int hashCode10 = str6 != null ? str6.hashCode() : 0;
        hashCode2 = Integer.valueOf(this.f26055h).hashCode();
        String str7 = this.f26056i;
        if (str7 != null) {
            i = str7.hashCode();
        }
        hashCode3 = Integer.valueOf(this.f26057j).hashCode();
        hashCode4 = Integer.valueOf(this.f26058k).hashCode();
        return (((((((((((((((((((hashCode5 * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode) * 31) + hashCode10) * 31) + hashCode2) * 31) + i) * 31) + hashCode3) * 31) + hashCode4;
    }

    /* renamed from: i */
    public final int m8863i() {
        return this.f26058k;
    }

    public String toString() {
        return "ConversationsData(conversationId=" + this.f26048a + ", name=" + this.f26049b + ", icon=" + this.f26050c + ", snippetText=" + this.f26051d + ", previewContentType=" + this.f26052e + ", timestamp=" + this.f26053f + ", otherParticipantNormalizedDestination=" + this.f26054g + ", archiveStatus=" + this.f26055h + ", subjectText=" + this.f26056i + ", participantCount=" + this.f26057j + ", unreadCount=" + this.f26058k + ")";
    }
}
