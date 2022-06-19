.class public final Lcom/google/android/gms/internal/ads/bdo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/ads/internal/util/zzf;

.field final b:Lcom/google/android/gms/internal/ads/cpo;

.field final c:Lcom/google/android/gms/internal/ads/bcv;

.field final d:Lcom/google/android/gms/internal/ads/bcr;

.field final e:Lcom/google/android/gms/internal/ads/bdw;

.field final f:Ljava/util/concurrent/Executor;

.field final g:Lcom/google/android/gms/internal/ads/zzaei;

.field final h:Lcom/google/android/gms/internal/ads/bcm;

.field private final i:Lcom/google/android/gms/internal/ads/bef;

.field private final j:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/bcv;Lcom/google/android/gms/internal/ads/bcr;Lcom/google/android/gms/internal/ads/bdw;Lcom/google/android/gms/internal/ads/bef;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bcm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdo;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdo;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdo;->g:Lcom/google/android/gms/internal/ads/zzaei;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdo;->c:Lcom/google/android/gms/internal/ads/bcv;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bdo;->e:Lcom/google/android/gms/internal/ads/bdw;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bdo;->i:Lcom/google/android/gms/internal/ads/bef;

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bdo;->j:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bdo;->f:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bdo;->h:Lcom/google/android/gms/internal/ads/bcm;

    return-void
.end method

.method static a(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 16
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ben;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdo;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/bdn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bdn;-><init>(Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/ben;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->m()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ca:Lcom/google/android/gms/internal/ads/af;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_2

    .line 75
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 77
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ben;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdo;->c:Lcom/google/android/gms/internal/ads/bcv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/cov;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 43
    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string p1, "Activity context is needed for policy validator."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdo;->i:Lcom/google/android/gms/internal/ads/bef;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ben;->b()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    :try_start_0
    const-string v1, "window"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ben;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdo;->i:Lcom/google/android/gms/internal/ads/bef;

    .line 1006
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bef;->a:Lcom/google/android/gms/internal/ads/bif;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    const/4 v4, 0x0

    .line 1007
    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v2

    .line 1009
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v3

    const-string v4, "policy_validator"

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v3, "/sendMessageToSdk"

    .line 1011
    new-instance v4, Lcom/google/android/gms/internal/ads/bee;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/bee;-><init>(Lcom/google/android/gms/internal/ads/bef;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    const-string v3, "/hideValidatorOverlay"

    .line 1012
    new-instance v4, Lcom/google/android/gms/internal/ads/beh;

    invoke-direct {v4, v1, v0, p1}, Lcom/google/android/gms/internal/ads/beh;-><init>(Lcom/google/android/gms/internal/ads/bef;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    const-string v3, "/open"

    .line 1013
    new-instance v10, Lcom/google/android/gms/internal/ads/hq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/hq;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V

    invoke-interface {v2, v3, v10}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1014
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bef;->b:Lcom/google/android/gms/internal/ads/bgy;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v5, "/loadNativeAdPolicyViolations"

    new-instance v6, Lcom/google/android/gms/internal/ads/beg;

    invoke-direct {v6, v1, p1, v0}, Lcom/google/android/gms/internal/ads/beg;-><init>(Lcom/google/android/gms/internal/ads/bef;Landroid/view/View;Landroid/view/WindowManager;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1015
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/bef;->b:Lcom/google/android/gms/internal/ads/bgy;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v3, "/showValidatorOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/bej;->a:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1016
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzaaj()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 53
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfu; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
