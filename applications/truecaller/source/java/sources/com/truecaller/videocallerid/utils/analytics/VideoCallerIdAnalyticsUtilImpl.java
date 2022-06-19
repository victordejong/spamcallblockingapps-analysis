package com.truecaller.videocallerid.utils.analytics;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.api.FailedBinderCallBack;
import com.truecaller.videocallerid.utils.OwnVideoUploadResult;
import e.m.d.y.n;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p969c.C15986g;
import p193e.p194a.p947k.p969c.C16068r1;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import p193e.p194a.p947k.p969c.p970h2.C15994a;
import p193e.p194a.p947k.p969c.p970h2.C15995b;
import p193e.p194a.p947k.p969c.p970h2.C15996c;
import p193e.p194a.p947k.p969c.p970h2.C15998e;
import p193e.p194a.p947k.p969c.p970h2.C15999f;
import p193e.p194a.p947k.p969c.p970h2.C16000g;
import p193e.p194a.p947k.p969c.p970h2.C16001h;
import p193e.p194a.p947k.p969c.p970h2.C16002i;
import p193e.p194a.p947k.p969c.p970h2.C16003j;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl.class */
public final class VideoCallerIdAnalyticsUtilImpl implements AbstractC15997d, i0 {

    /* renamed from: a */
    public final f f16184a;

    /* renamed from: b */
    public final AbstractC19462a f16185b;

    /* renamed from: c */
    public final AbstractC16044q f16186c;

    /* renamed from: d */
    public final AbstractC16067r0 f16187d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Le/m/a/c/b0;", "ex", "Le/m/a/c/b0;", "getEx", "()Le/m/a/c/b0;", "setEx", "(Le/m/a/c/b0;)V", "<init>", "(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;)V", "CACHE", "MEDIA_PLAYER", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason.class */
    public enum VideoCallerIdNotShownReason {
        CACHE("Cache", null, 2, null),
        MEDIA_PLAYER("MediaPlayer", null, 2, null);
        

        /* renamed from: ex */
        private C24189b0 f16188ex;
        private final String value;

        VideoCallerIdNotShownReason(String str, C24189b0 c24189b0) {
            this.value = str;
            this.f16188ex = c24189b0;
        }

        /* synthetic */ VideoCallerIdNotShownReason(String str, C24189b0 c24189b0, int i, s1.z.c.f fVar) {
            this(str, (i & 2) != 0 ? null : c24189b0);
        }

        public final C24189b0 getEx() {
            return this.f16188ex;
        }

        public final String getValue() {
            return this.value;
        }

        public final void setEx(C24189b0 c24189b0) {
            this.f16188ex = c24189b0;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$logFetchUploadLinksFailed$1", f = "VideoCallerIdAnalyticsUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a.class */
    public static final class C4771a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Exception f16190f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4771a(Exception exc, d dVar) {
            super(2, dVar);
            VideoCallerIdAnalyticsUtilImpl.this = r5;
            this.f16190f = exc;
        }

        /* renamed from: i */
        public final d<s> m34377i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4771a(this.f16190f, dVar);
        }

        /* renamed from: k */
        public final Object m34376k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            VideoCallerIdAnalyticsUtilImpl videoCallerIdAnalyticsUtilImpl = VideoCallerIdAnalyticsUtilImpl.this;
            Exception exc = this.f16190f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            exc.getMessage();
            n.B0(new C15994a(String.valueOf(exc.getMessage())), videoCallerIdAnalyticsUtilImpl.f16185b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m34375s(Object obj) {
            C25225a.m3932a3(obj);
            this.f16190f.getMessage();
            n.B0(new C15994a(String.valueOf(this.f16190f.getMessage())), VideoCallerIdAnalyticsUtilImpl.this.f16185b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$logVideoNotShown$1", f = "VideoCallerIdAnalyticsUtil.kt", l = {167}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b.class */
    public static final class C4772b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f16191e;

        /* renamed from: g */
        public final /* synthetic */ String f16193g;

        /* renamed from: h */
        public final /* synthetic */ String f16194h;

        /* renamed from: i */
        public final /* synthetic */ VideoPlayerContext f16195i;

        /* renamed from: j */
        public final /* synthetic */ String f16196j;

        /* renamed from: k */
        public final /* synthetic */ VideoCallerIdNotShownReason f16197k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4772b(String str, String str2, VideoPlayerContext videoPlayerContext, String str3, VideoCallerIdNotShownReason videoCallerIdNotShownReason, d dVar) {
            super(2, dVar);
            VideoCallerIdAnalyticsUtilImpl.this = r5;
            this.f16193g = str;
            this.f16194h = str2;
            this.f16195i = videoPlayerContext;
            this.f16196j = str3;
            this.f16197k = videoCallerIdNotShownReason;
        }

        /* renamed from: i */
        public final d<s> m34374i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4772b(this.f16193g, this.f16194h, this.f16195i, this.f16196j, this.f16197k, dVar);
        }

        /* renamed from: k */
        public final Object m34373k(Object obj, Object obj2) {
            return m34374i(obj, (d) obj2).m34372s(s.a);
        }

        /* renamed from: s */
        public final Object m34372s(Object obj) {
            a aVar = a.a;
            int i = this.f16191e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f16195i.getValue();
                AbstractC16044q abstractC16044q = VideoCallerIdAnalyticsUtilImpl.this.f16186c;
                String str = this.f16196j;
                this.f16191e = 1;
                Object mo17957f = abstractC16044q.mo17957f(str, this);
                obj = mo17957f;
                if (mo17957f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C15986g c15986g = (C15986g) obj;
            VideoCallerIdAnalyticsUtilImpl.this.f16185b.mo13274b(new C15998e(this.f16195i, this.f16193g, this.f16194h, this.f16197k.getValue(), c15986g != null ? new Integer(c15986g.m18039a()).intValue() : 0));
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$logVideoShownFailed$1", f = "VideoCallerIdAnalyticsUtil.kt", l = {173}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$c.class */
    public static final class C4773c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f16198e;

        /* renamed from: g */
        public final /* synthetic */ String f16200g;

        /* renamed from: h */
        public final /* synthetic */ String f16201h;

        /* renamed from: i */
        public final /* synthetic */ VideoPlayerContext f16202i;

        /* renamed from: j */
        public final /* synthetic */ C24189b0 f16203j;

        /* renamed from: k */
        public final /* synthetic */ String f16204k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4773c(String str, String str2, VideoPlayerContext videoPlayerContext, C24189b0 c24189b0, String str3, d dVar) {
            super(2, dVar);
            VideoCallerIdAnalyticsUtilImpl.this = r5;
            this.f16200g = str;
            this.f16201h = str2;
            this.f16202i = videoPlayerContext;
            this.f16203j = c24189b0;
            this.f16204k = str3;
        }

        /* renamed from: i */
        public final d<s> m34371i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4773c(this.f16200g, this.f16201h, this.f16202i, this.f16203j, this.f16204k, dVar);
        }

        /* renamed from: k */
        public final Object m34370k(Object obj, Object obj2) {
            return m34371i(obj, (d) obj2).m34369s(s.a);
        }

        /* renamed from: s */
        public final Object m34369s(Object obj) {
            a aVar = a.a;
            int i = this.f16198e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f16202i.getValue();
                C24189b0 c24189b0 = this.f16203j;
                if (c24189b0 != null) {
                    c24189b0.getMessage();
                }
                AbstractC16044q abstractC16044q = VideoCallerIdAnalyticsUtilImpl.this.f16186c;
                String str = this.f16204k;
                this.f16198e = 1;
                Object mo17957f = abstractC16044q.mo17957f(str, this);
                obj = mo17957f;
                if (mo17957f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C15986g c15986g = (C15986g) obj;
            int intValue = c15986g != null ? new Integer(c15986g.m18039a()).intValue() : 0;
            VideoPlayerContext videoPlayerContext = this.f16202i;
            String str2 = this.f16200g;
            String str3 = this.f16201h;
            String value = VideoCallerIdNotShownReason.MEDIA_PLAYER.getValue();
            C24189b0 c24189b02 = this.f16203j;
            n.B0(new C16003j(videoPlayerContext, str2, str3, value, intValue, String.valueOf(c24189b02 != null ? c24189b02.getMessage() : null)), VideoCallerIdAnalyticsUtilImpl.this.f16185b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$onCallAlertReceived$1", f = "VideoCallerIdAnalyticsUtil.kt", l = {185}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$d.class */
    public static final class C4774d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f16205e;

        /* renamed from: g */
        public final /* synthetic */ String f16207g;

        /* renamed from: h */
        public final /* synthetic */ String f16208h;

        /* renamed from: i */
        public final /* synthetic */ boolean f16209i;

        /* renamed from: j */
        public final /* synthetic */ String f16210j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4774d(String str, String str2, boolean z, String str3, d dVar) {
            super(2, dVar);
            VideoCallerIdAnalyticsUtilImpl.this = r5;
            this.f16207g = str;
            this.f16208h = str2;
            this.f16209i = z;
            this.f16210j = str3;
        }

        /* renamed from: i */
        public final d<s> m34368i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4774d(this.f16207g, this.f16208h, this.f16209i, this.f16210j, dVar);
        }

        /* renamed from: k */
        public final Object m34367k(Object obj, Object obj2) {
            return m34368i(obj, (d) obj2).m34366s(s.a);
        }

        /* renamed from: s */
        public final Object m34366s(Object obj) {
            a aVar = a.a;
            int i = this.f16205e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16044q abstractC16044q = VideoCallerIdAnalyticsUtilImpl.this.f16186c;
                String str = this.f16210j;
                this.f16205e = 1;
                Object mo17957f = abstractC16044q.mo17957f(str, this);
                obj = mo17957f;
                if (mo17957f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C15986g c15986g = (C15986g) obj;
            if (c15986g == null || c15986g.m18039a() != 100) {
                z = false;
            }
            VideoCallerIdAnalyticsUtilImpl.this.f16185b.mo13274b(new C16000g(this.f16207g, this.f16208h, z, this.f16209i));
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$onCallAlertSent$1", f = "VideoCallerIdAnalyticsUtil.kt", l = {179}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$e.class */
    public static final class C4775e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f16211e;

        /* renamed from: g */
        public final /* synthetic */ String f16213g;

        /* renamed from: h */
        public final /* synthetic */ String f16214h;

        /* renamed from: i */
        public final /* synthetic */ String f16215i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4775e(String str, String str2, String str3, d dVar) {
            super(2, dVar);
            VideoCallerIdAnalyticsUtilImpl.this = r5;
            this.f16213g = str;
            this.f16214h = str2;
            this.f16215i = str3;
        }

        /* renamed from: i */
        public final d<s> m34365i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4775e(this.f16213g, this.f16214h, this.f16215i, dVar);
        }

        /* renamed from: k */
        public final Object m34364k(Object obj, Object obj2) {
            return m34365i(obj, (d) obj2).m34363s(s.a);
        }

        /* renamed from: s */
        public final Object m34363s(Object obj) {
            int i;
            a aVar = a.a;
            int i2 = this.f16211e;
            if (i2 == 0) {
                C25225a.m3932a3(obj);
                String str = this.f16213g;
                if (str == null) {
                    i = 0;
                    VideoCallerIdAnalyticsUtilImpl.this.f16185b.mo13274b(new C16001h(this.f16214h, this.f16215i, i));
                    return s.a;
                }
                AbstractC16067r0 abstractC16067r0 = VideoCallerIdAnalyticsUtilImpl.this.f16187d;
                this.f16211e = 1;
                Object mo17919g = abstractC16067r0.mo17919g(str, this);
                obj = mo17919g;
                if (mo17919g == aVar) {
                    return aVar;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            i = new Integer(((Number) obj).intValue()).intValue();
            VideoCallerIdAnalyticsUtilImpl.this.f16185b.mo13274b(new C16001h(this.f16214h, this.f16215i, i));
            return s.a;
        }
    }

    @Inject
    public VideoCallerIdAnalyticsUtilImpl(@Named("IO") f fVar, AbstractC19462a abstractC19462a, AbstractC16044q abstractC16044q, AbstractC16067r0 abstractC16067r0) {
        l.e(fVar, "ioContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC16044q, "exoPlayerUtil");
        l.e(abstractC16067r0, "availability");
        this.f16184a = fVar;
        this.f16185b = abstractC19462a;
        this.f16186c = abstractC16044q;
        this.f16187d = abstractC16067r0;
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: a */
    public p1 mo18019a(String str, String str2, String str3) {
        l.e(str2, "videoId");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4775e(str, str2, str3, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: b */
    public void mo18018b(OnboardingContext onboardingContext, String str) {
        l.e(onboardingContext, "onboardingContext");
        l.e(str, "videoId");
        this.f16185b.mo13274b(new C15995b(onboardingContext, str));
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: c */
    public void mo18017c(VideoPlayerContext videoPlayerContext, String str, String str2, String str3, int i) {
        l.e(videoPlayerContext, "playerContext");
        l.e(str, "videoId");
        l.e(str2, "videoUrl");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        String str4 = "Logging video shown. Context:" + videoPlayerContext + " videoId:" + str + " callId:" + str3 + ", cache percentage: " + i;
        this.f16185b.mo13274b(new C16002i(videoPlayerContext, str, str3, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r5v0 */
    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: d */
    public void mo18016d(OnboardingContext onboardingContext, OwnVideoUploadResult ownVideoUploadResult) {
        C15996c c15996c;
        UploadResult uploadResult;
        l.e(onboardingContext, "onboardingContext");
        l.e(ownVideoUploadResult, "result");
        String str = "Logging upload result:" + ownVideoUploadResult;
        if (ownVideoUploadResult instanceof OwnVideoUploadResult.C4769a) {
            OwnVideoUploadResult.C4769a c4769a = (OwnVideoUploadResult.C4769a) ownVideoUploadResult;
            String str2 = c4769a.f16181a;
            C16068r1 c16068r1 = c4769a.f16182b;
            c15996c = new C15996c(onboardingContext, str2, c16068r1.f45288d, c16068r1.f45287c, UploadResult.SUCCESS);
        } else if (!(ownVideoUploadResult instanceof OwnVideoUploadResult.Failed)) {
            throw new s1.i();
        } else {
            OwnVideoUploadResult.Failed failed = (OwnVideoUploadResult.Failed) ownVideoUploadResult;
            String str3 = failed.f16179b;
            if (str3 == null) {
                str3 = "";
            }
            C16068r1 c16068r12 = failed.f16180c;
            ?? r15 = c16068r12 != null ? c16068r12.f45288d : false;
            ?? r17 = c16068r12 != null ? c16068r12.f45287c : false;
            int ordinal = failed.f16178a.ordinal();
            if (ordinal == 0) {
                uploadResult = UploadResult.READ_FILE_FAILED;
            } else if (ordinal == 1) {
                uploadResult = UploadResult.FETCH_UPLOAD_LINKS_FAILED;
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                uploadResult = UploadResult.UPLOAD_FAILED;
            }
            c15996c = new C15996c(onboardingContext, str3, r15 == true ? 1L : 0L, r17 == true ? 1L : 0L, uploadResult);
        }
        this.f16185b.mo13274b(c15996c);
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: e */
    public p1 mo18015e(VideoPlayerContext videoPlayerContext, String str, String str2, String str3, C24189b0 c24189b0) {
        l.e(videoPlayerContext, "playerContext");
        l.e(str, "videoId");
        l.e(str2, "videoUrl");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4773c(str, str3, videoPlayerContext, c24189b0, str2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: f */
    public p1 mo18014f(VideoPlayerContext videoPlayerContext, String str, String str2, String str3, VideoCallerIdNotShownReason videoCallerIdNotShownReason) {
        l.e(videoPlayerContext, "playerContext");
        l.e(str, "videoId");
        l.e(str2, "videoUrl");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        l.e(videoCallerIdNotShownReason, "reason");
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4772b(str, str3, videoPlayerContext, str2, videoCallerIdNotShownReason, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: g */
    public p1 mo18013g(Exception exc) {
        l.e(exc, "ex");
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4771a(exc, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f16184a;
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: h */
    public p1 mo18012h(String str, String str2, String str3, boolean z) {
        l.e(str, "videoId");
        l.e(str2, "videoUrl");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4774d(str, str3, z, str2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p969c.p970h2.AbstractC15997d
    /* renamed from: i */
    public void mo18011i(OnboardingData onboardingData, OnboardingStep onboardingStep) {
        l.e(onboardingData, "onboardingData");
        l.e(onboardingStep, "step");
        String id = onboardingData.getId();
        if (id != null) {
            OnboardingContext context = onboardingData.getContext();
            String str = "Logging video caller id onboarding event id: " + id + ", context: " + context + ", step: " + onboardingStep;
            this.f16185b.mo13274b(new C15999f(id, context, onboardingStep));
        }
    }
}
