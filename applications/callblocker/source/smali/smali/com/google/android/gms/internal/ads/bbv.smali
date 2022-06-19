.class public final Lcom/google/android/gms/internal/ads/bbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chh;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/bee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chh;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bee;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbv;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbv;->c:Lcom/google/android/gms/internal/ads/bee;

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/act;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    const-string/jumbo v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->l:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 17
    const-string/jumbo v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->m:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 18
    const-string/jumbo v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/ads/acc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/acc;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 19
    const-string/jumbo v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->p:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 20
    const-string/jumbo v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->n:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 21
    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->g:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 22
    const-string/jumbo v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->h:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/aef;->c(Z)V

    .line 24
    const-string/jumbo v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->c:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->c:Lcom/google/android/gms/internal/ads/gn;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/aef;->d(Z)V

    .line 27
    const-string/jumbo v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/ads/fe;

    invoke-direct {v1, v3, v3}, Lcom/google/android/gms/internal/ads/fe;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aef;->d(Z)V

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbv;->c:Lcom/google/android/gms/internal/ads/bee;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyd;->a()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    .line 34
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bbv;->a(Lcom/google/android/gms/internal/ads/act;)V

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/bbz;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/bbz;-><init>(Lcom/google/android/gms/internal/ads/yp;)V

    .line 37
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aeh;)V

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bu:Lcom/google/android/gms/internal/ads/ect;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->loadUrl(Ljava/lang/String;)V

    .line 41
    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bbx;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bbx;-><init>(Lcom/google/android/gms/internal/ads/bbv;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbv;->b:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbv;->c:Lcom/google/android/gms/internal/ads/bee;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyd;->a()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bbv;->a(Lcom/google/android/gms/internal/ads/act;)V

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->c:Lcom/google/android/gms/internal/ads/gn;

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->c()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 51
    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bby;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/bby;-><init>(Lcom/google/android/gms/internal/ads/bbv;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;)V

    .line 52
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 53
    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v1

    .line 49
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->b()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bbw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bbw;-><init>(Lcom/google/android/gms/internal/ads/bbv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbv;->b:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/bbu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bbu;-><init>(Lcom/google/android/gms/internal/ads/bbv;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbv;->b:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->c:Lcom/google/android/gms/internal/ads/gn;

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->c()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 66
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bcb;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/bcb;-><init>(Lcom/google/android/gms/internal/ads/bbv;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;)V

    .line 67
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 68
    const-string/jumbo v1, "google.afma.nativeAds.renderVideo"

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 69
    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->b()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;Z)V
    .locals 3

    .prologue
    .line 55
    if-eqz p3, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->b:Lcom/google/android/gms/internal/ads/ecn;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Lcom/google/android/gms/internal/ads/ecn;)V

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yp;->a()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "Instream video Web View failed to load."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/yp;Z)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->b:Lcom/google/android/gms/internal/ads/ecn;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbv;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Lcom/google/android/gms/internal/ads/ecn;)V

    .line 72
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yp;->a()V

    .line 73
    return-void
.end method
