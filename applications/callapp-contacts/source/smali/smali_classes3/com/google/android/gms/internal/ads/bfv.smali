.class public final Lcom/google/android/gms/internal/ads/bfv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cpo;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Lcom/google/android/gms/internal/ads/bif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cpo;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bif;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfv;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bfv;->c:Lcom/google/android/gms/internal/ads/bif;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 8

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->m:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->n:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/acz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/acz;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->q:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->o:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->h:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->i:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/videoClicked"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/afe;->m()V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->d:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/click"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bT:Lcom/google/android/gms/internal/ads/af;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->t:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/getNativeAdViewSignals"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Z)V

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/hq;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/hq;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Z)V

    .line 33
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/ho;

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ho;-><init>(Landroid/content/Context;)V

    const-string v1, "/logScionEvent"

    .line 36
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    :cond_2
    return-void
.end method
