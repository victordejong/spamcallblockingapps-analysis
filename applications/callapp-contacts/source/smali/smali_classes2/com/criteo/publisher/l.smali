.class final Lcom/criteo/publisher/l;
.super Lcom/criteo/publisher/Criteo;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/q;

.field private final c:Lcom/criteo/publisher/e;

.field private final d:Lcom/criteo/publisher/model/u;

.field private final e:Lcom/criteo/publisher/model/t;

.field private final f:Lcom/criteo/publisher/k/c;

.field private final g:Lcom/criteo/publisher/i;

.field private final h:Lcom/criteo/publisher/h/c;

.field private final i:Lcom/criteo/publisher/j/a;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/criteo/publisher/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/q;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/criteo/publisher/Criteo;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->a:Lcom/criteo/publisher/logging/g;

    .line 74
    iput-object p5, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/q;

    .line 76
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->C()Lcom/criteo/publisher/x;

    .line 78
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->m()Lcom/criteo/publisher/model/u;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->d:Lcom/criteo/publisher/model/u;

    .line 79
    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->d()V

    .line 81
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v0

    .line 1069
    invoke-virtual {v0}, Lcom/criteo/publisher/m0/b;->a()Lcom/criteo/publisher/m0/b$b;

    .line 83
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->e:Lcom/criteo/publisher/model/t;

    .line 85
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->l()Lcom/criteo/publisher/e;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/e;

    .line 86
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->v()Lcom/criteo/publisher/i;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->g:Lcom/criteo/publisher/i;

    .line 87
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->w()Lcom/criteo/publisher/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->h:Lcom/criteo/publisher/h/c;

    .line 89
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->x()Lcom/criteo/publisher/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->i:Lcom/criteo/publisher/j/a;

    .line 91
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->k()Lcom/criteo/publisher/k/c;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l;->f:Lcom/criteo/publisher/k/c;

    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/criteo/publisher/k/c;->a(Z)V

    :cond_0
    if-eqz p4, :cond_1

    .line 99
    invoke-virtual {v0, p4}, Lcom/criteo/publisher/k/c;->a(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->n()Lcom/criteo/publisher/m0/e;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->y()Lcom/criteo/publisher/m/b;

    move-result-object p3

    .line 1085
    new-instance p4, Lcom/criteo/publisher/m/b$a;

    invoke-direct {p4, p3}, Lcom/criteo/publisher/m/b$a;-><init>(Lcom/criteo/publisher/m/b;)V

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 106
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->p()Lcom/criteo/publisher/c/a;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/criteo/publisher/c/a;->a()V

    .line 109
    invoke-virtual {p5}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object p1

    .line 1113
    new-instance p3, Lcom/criteo/publisher/l$a;

    invoke-direct {p3, p0, p2}, Lcom/criteo/publisher/l$a;-><init>(Lcom/criteo/publisher/l;Ljava/util/List;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/l;)Lcom/criteo/publisher/e;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/e;

    return-object p0
.end method


# virtual methods
.method public final createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/k;
    .locals 3

    .line 177
    new-instance v0, Lcom/criteo/publisher/k;

    iget-object v1, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/q;

    .line 180
    invoke-virtual {v1}, Lcom/criteo/publisher/q;->y()Lcom/criteo/publisher/m/b;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/q;

    .line 181
    invoke-virtual {v2}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/criteo/publisher/k;-><init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/m/b;Lcom/criteo/publisher/e/c;)V

    return-object v0
.end method

.method public final enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 4

    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/l;->h:Lcom/criteo/publisher/h/c;

    .line 2047
    iget-object v1, v0, Lcom/criteo/publisher/h/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p2}, Lcom/criteo/publisher/h/a;->a(Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    if-eqz p1, :cond_3

    .line 2050
    iget-object v1, v0, Lcom/criteo/publisher/h/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/h/d;

    .line 2051
    invoke-interface {v2, p1}, Lcom/criteo/publisher/h/d;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2052
    iget-object v1, v0, Lcom/criteo/publisher/h/c;->c:Lcom/criteo/publisher/i/c;

    invoke-interface {v2}, Lcom/criteo/publisher/h/d;->a()Lcom/criteo/publisher/i/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 2054
    :cond_1
    invoke-virtual {p2}, Lcom/criteo/publisher/Bid;->a()Lcom/criteo/publisher/model/s;

    move-result-object v1

    .line 2055
    :goto_0
    invoke-interface {v2, p1}, Lcom/criteo/publisher/h/d;->b(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    .line 2058
    iget-object p1, v0, Lcom/criteo/publisher/h/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-interface {v2}, Lcom/criteo/publisher/h/d;->a()Lcom/criteo/publisher/i/a;

    move-result-object p2

    invoke-static {p2}, Lcom/criteo/publisher/h/a;->a(Lcom/criteo/publisher/i/a;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 3061
    :cond_2
    iget-object p2, p2, Lcom/criteo/publisher/Bid;->a:Lcom/criteo/publisher/m0/a;

    .line 2062
    invoke-interface {v2, p1, p2, v1}, Lcom/criteo/publisher/h/d;->a(Ljava/lang/Object;Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/model/s;)V

    return-void

    .line 2068
    :cond_3
    iget-object p2, v0, Lcom/criteo/publisher/h/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/h/a;->a(Ljava/lang/Object;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 126
    iget-object p2, p0, Lcom/criteo/publisher/l;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method final getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method final getConfig()Lcom/criteo/publisher/model/t;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/criteo/publisher/l;->e:Lcom/criteo/publisher/model/t;

    return-object v0
.end method

.method final getDeviceInfo()Lcom/criteo/publisher/model/u;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/criteo/publisher/l;->d:Lcom/criteo/publisher/model/u;

    return-object v0
.end method

.method final getInterstitialActivityHelper()Lcom/criteo/publisher/j/a;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/criteo/publisher/l;->i:Lcom/criteo/publisher/j/a;

    return-object v0
.end method

.method public final loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/l;->g:Lcom/criteo/publisher/i;

    .line 3063
    iget-object v1, v0, Lcom/criteo/publisher/i;->a:Lcom/criteo/publisher/e;

    new-instance v2, Lcom/criteo/publisher/i$a;

    invoke-direct {v2, v0, p1, p3}, Lcom/criteo/publisher/i$a;-><init>(Lcom/criteo/publisher/i;Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 151
    iget-object p2, p0, Lcom/criteo/publisher/l;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    const/4 p1, 0x0

    .line 152
    invoke-interface {p3, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public final setMopubConsent(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/criteo/publisher/l;->f:Lcom/criteo/publisher/k/c;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setUsPrivacyOptOut(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/criteo/publisher/l;->f:Lcom/criteo/publisher/k/c;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k/c;->a(Z)V

    return-void
.end method

.method public final setUserData(Lcom/criteo/publisher/context/UserData;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/q;

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->D()Lcom/criteo/publisher/context/d;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4035
    iget-object v0, v0, Lcom/criteo/publisher/context/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
