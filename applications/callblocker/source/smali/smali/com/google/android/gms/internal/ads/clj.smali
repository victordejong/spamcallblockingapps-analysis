.class public final Lcom/google/android/gms/internal/ads/clj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/yf;

.field private final c:Lcom/google/android/gms/internal/ads/bpv;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/ads/chb;

.field private final i:Lcom/google/android/gms/common/util/e;

.field private final j:Lcom/google/android/gms/internal/ads/ctl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/yf;Lcom/google/android/gms/internal/ads/bpv;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/chb;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/ctl;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clj;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clj;->b:Lcom/google/android/gms/internal/ads/yf;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/clj;->c:Lcom/google/android/gms/internal/ads/bpv;

    .line 5
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/clj;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/clj;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/clj;->g:Landroid/content/Context;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/clj;->h:Lcom/google/android/gms/internal/ads/chb;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/clj;->i:Lcom/google/android/gms/common/util/e;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/clj;->j:Lcom/google/android/gms/internal/ads/ctl;

    .line 12
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo p2, ""

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo p0, "fakeForAdDebugLog"

    .line 74
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;ZLjava/lang/String;Ljava/util/List;)V

    .line 14
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;Lcom/google/android/gms/internal/ads/qr;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/qr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->i:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 43
    :try_start_0
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/qr;->a()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/qr;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->h:Lcom/google/android/gms/internal/ads/chb;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->h:Lcom/google/android/gms/internal/ads/chb;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    move-object v2, v0

    .line 51
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    const-string/jumbo v9, "@gw_rwd_userid@"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v9, "@gw_rwd_custom_data@"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v9, "@gw_tmstmp@"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string/jumbo v9, "@gw_rwd_itm@"

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v9, "@gw_rwd_amt@"

    invoke-static {v0, v9, v6}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v9, "@gw_sdkver@"

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/clj;->d:Ljava/lang/String;

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/clj;->g:Landroid/content/Context;

    iget-boolean v10, p2, Lcom/google/android/gms/internal/ads/cgr;->M:Z

    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/ads/tq;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->h:Lcom/google/android/gms/internal/ads/chb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/clj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->h:Lcom/google/android/gms/internal/ads/chb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/clj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/util/List;)V

    .line 62
    :goto_3
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;ZLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    if-eqz p3, :cond_1

    const-string/jumbo v0, "1"

    move-object v1, v0

    .line 17
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    const-string/jumbo v2, "@gw_adlocid@"

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string/jumbo v2, "@gw_adnetrefresh@"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string/jumbo v2, "@gw_sdkver@"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clj;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    const-string/jumbo v2, "@gw_qdata@"

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cgr;->v:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string/jumbo v2, "@gw_adnetid@"

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cgr;->u:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string/jumbo v2, "@gw_allocid@"

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cgr;->t:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/clj;->g:Landroid/content/Context;

    iget-boolean v5, p2, Lcom/google/android/gms/internal/ads/cgr;->M:Z

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/tq;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_0
    const-string/jumbo v2, "@gw_adnetstatus@"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clj;->c:Lcom/google/android/gms/internal/ads/bpv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bpv;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v2, "@gw_seqnum@"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clj;->e:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string/jumbo v2, "@gw_sessid@"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clj;->f:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bq:Lcom/google/android/gms/internal/ads/ect;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/clj;->j:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 36
    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 16
    :cond_1
    const-string/jumbo v0, "0"

    move-object v1, v0

    goto/16 :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/util/List;)V

    .line 41
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/clm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/clm;-><init>(Lcom/google/android/gms/internal/ads/clj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method final synthetic b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->b:Lcom/google/android/gms/internal/ads/yf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yf;->a(Ljava/lang/String;)V

    return-void
.end method
