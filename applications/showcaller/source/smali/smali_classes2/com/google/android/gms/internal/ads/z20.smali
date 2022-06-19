.class public final Lcom/google/android/gms/internal/ads/z20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/kq;",
        ":",
        "Lcom/google/android/gms/internal/ads/nn0;",
        ":",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ":",
        "Lcom/google/android/gms/internal/ads/s40;",
        ":",
        "Lcom/google/android/gms/internal/ads/so0;",
        ":",
        "Lcom/google/android/gms/internal/ads/xo0;",
        ":",
        "Lcom/google/android/gms/internal/ads/bp0;",
        ":",
        "Lcom/google/android/gms/internal/ads/qa1;",
        ":",
        "Lcom/google/android/gms/internal/ads/ep0;",
        ":",
        "Lcom/google/android/gms/internal/ads/gp0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/b;

.field private final b:Lcom/google/android/gms/internal/ads/rn1;

.field private final c:Lcom/google/android/gms/internal/ads/jo2;

.field private final d:Lcom/google/android/gms/internal/ads/ii0;

.field private final e:Lcom/google/android/gms/internal/ads/la0;

.field private final f:Lcom/google/android/gms/internal/ads/dw1;

.field private g:Lcom/google/android/gms/ads/internal/overlay/s;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/la0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z20;->a:Lcom/google/android/gms/ads/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z20;->e:Lcom/google/android/gms/internal/ads/la0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    new-instance p1, Lcom/google/android/gms/internal/ads/ii0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/ii0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z20;->d:Lcom/google/android/gms/internal/ads/ii0;

    return-void
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/e;->h()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/u;->f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaat; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/ph0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_1
    :goto_0
    return-object p2
.end method

.method static f(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    :try_start_0
    const-string v0, "aclk_ms"

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/z20;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z20;->k(I)V

    return-void
.end method

.method private final h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/c2;->i(Landroid/content/Context;)Z

    move-result v7

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/c2;->d(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/u0;

    move-result-object v8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    const-string v6, "offline_open"

    move-object v1, p2

    move-object/from16 v5, p4

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/lw1;->G6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/dw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v7, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z20;->d:Lcom/google/android/gms/internal/ads/ii0;

    .line 6
    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/ads/dw1;->f(Lcom/google/android/gms/internal/ads/ii0;Ljava/lang/String;)V

    return v11

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    .line 8
    invoke-static {p2}, Landroidx/core/app/k;->b(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/k;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->a6:Lcom/google/android/gms/internal/ads/cw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    move-object v3, v8

    move-object/from16 v7, p4

    move-object v8, p3

    .line 14
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/lw1;->F6(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/util/u0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/bp0;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/e;->h()I

    move-result v11

    move-object v2, v8

    move-object/from16 v6, p4

    move-object v7, p3

    move v8, v11

    .line 17
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/bp0;->S(Lcom/google/android/gms/ads/internal/util/u0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    const-string v6, "dialog_impression"

    move-object v1, p2

    move-object/from16 v5, p4

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/lw1;->G6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/dw1;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kq;->z0()V

    return v10

    .line 21
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    .line 22
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/dw1;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    if-eqz v1, :cond_b

    new-instance v7, Ljava/util/HashMap;

    .line 23
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    .line 25
    invoke-static {p2}, Landroidx/core/app/k;->b(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/k;->a()Z

    move-result v1

    const-string v3, "dialog_not_shown_reason"

    if-nez v1, :cond_7

    const-string v1, "notifications_disabled"

    .line 26
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v1, "work_manager_unavailable"

    .line 27
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->a6:Lcom/google/android/gms/internal/ads/cw;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "notification_flow_disabled"

    .line 31
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fullscreen_no_activity"

    .line 32
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    const-string v6, "dialog_not_shown"

    move-object v1, p2

    move-object/from16 v5, p4

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/lw1;->H6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/dw1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return v11
.end method

.method private final i(Lcom/google/android/gms/internal/ads/kq;Ljava/util/Map;ZLjava/lang/String;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    .line 2
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/wn0;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v7

    const-string v8, "activity"

    .line 4
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const-string v9, "u"

    .line 5
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 8
    invoke-static {v5, v6, v9, v7, v11}, Lcom/google/android/gms/internal/ads/z20;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v9

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/z20;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "use_first_package"

    .line 10
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v12, "use_running_process"

    .line 11
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "use_custom_tabs"

    .line 12
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->T2:Lcom/google/android/gms/internal/ads/cw;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v14, "http"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "https"

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 19
    :cond_4
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {v9, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v9

    .line 22
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v3, :cond_5

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v5, v9}, Lcom/google/android/gms/ads/internal/util/c2;->b0(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v5, v11}, Lcom/google/android/gms/ads/internal/util/c2;->b0(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    :cond_5
    invoke-static {v9, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->c(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 26
    invoke-static {v9, v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_7

    .line 27
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->b(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 28
    invoke-static {v9, v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    .line 29
    invoke-static {v11, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->b(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_d

    .line 30
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_b

    if-eqz v8, :cond_b

    .line 31
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_b

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 33
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    add-int/lit8 v15, v11, 0x1

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    iget-object v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 36
    invoke-static {v9, v12, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_a
    move v11, v15

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v9, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/y20;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_c
    :goto_3
    move-object v11, v9

    :cond_d
    :goto_4
    if-eqz p3, :cond_f

    .line 38
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    if-eqz v2, :cond_f

    if-eqz v11, :cond_f

    .line 39
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    .line 40
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/z20;->h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    return-void

    .line 41
    :cond_f
    :goto_5
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/bp0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v2, v11, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)V

    move/from16 v3, p5

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bp0;->C0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z20;->e:Lcom/google/android/gms/internal/ads/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/la0;->i(Z)V

    :cond_0
    return-void
.end method

.method private final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->i6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z20;->c:Lcom/google/android/gms/internal/ads/jo2;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/io2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ix;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 6
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z20;->b:Lcom/google/android/gms/internal/ads/rn1;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rn1;->d()Lcom/google/android/gms/internal/ads/qn1;

    move-result-object v0

    const-string v3, "action"

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/qn1;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ix;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/qn1;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn1;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qn1;->e()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/kq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/z20;->b(Lcom/google/android/gms/internal/ads/kq;Ljava/util/Map;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/kq;Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "u"

    .line 1
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    move-object v10, v8

    check-cast v10, Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ng0;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v11

    const-string v0, "a"

    .line 3
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "Action missing from an open GMSG."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/z20;->a:Lcom/google/android/gms/ads/internal/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/z20;->a:Lcom/google/android/gms/ads/internal/b;

    .line 6
    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/internal/b;->c(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->z()Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v0

    .line 8
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->B()Lcom/google/android/gms/internal/ads/jj2;

    move-result-object v3

    const/4 v12, 0x0

    const-string v4, ""

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    move v13, v0

    move-object v14, v3

    goto :goto_1

    :cond_3
    move-object v14, v4

    const/4 v13, 0x0

    .line 9
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->Z6:Lcom/google/android/gms/internal/ads/cw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sc"

    .line 12
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    :goto_2
    const-string v0, "expand"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_5
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    .line 18
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/bp0;

    .line 19
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->c(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->d(Ljava/util/Map;)I

    move-result v2

    .line 20
    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/bp0;->S0(ZIZ)V

    return-void

    :cond_6
    const-string v0, "webapp"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    if-eqz v11, :cond_7

    .line 23
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/bp0;

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->c(Ljava/util/Map;)Z

    move-result v1

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->d(Ljava/util/Map;)I

    move-result v2

    .line 26
    invoke-interface {v0, v1, v2, v11, v6}, Lcom/google/android/gms/internal/ads/bp0;->o0(ZILjava/lang/String;Z)V

    return-void

    .line 27
    :cond_7
    move-object v15, v8

    check-cast v15, Lcom/google/android/gms/internal/ads/bp0;

    .line 28
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->c(Ljava/util/Map;)Z

    move-result v16

    .line 29
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/z20;->d(Ljava/util/Map;)I

    move-result v17

    const-string v0, "html"

    .line 30
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    const-string v0, "baseurl"

    .line 31
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move/from16 v20, v6

    .line 32
    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/bp0;->Q0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_8
    const-string v0, "chrome_custom_tab"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "true"

    if-eqz v0, :cond_13

    .line 34
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->V2:Lcom/google/android/gms/internal/ads/cw;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    .line 37
    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->b3:Lcom/google/android/gms/internal/ads/cw;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "User opt out chrome custom tab."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->Z2:Lcom/google/android/gms/internal/ads/cw;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->a3:Lcom/google/android/gms/internal/ads/cw;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    if-nez v0, :cond_c

    goto :goto_4

    .line 46
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3b

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ku2;->b(C)Lcom/google/android/gms/internal/ads/ku2;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hv2;->b(Lcom/google/android/gms/internal/ads/ku2;)Lcom/google/android/gms/internal/ads/hv2;

    move-result-object v4

    .line 47
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/hv2;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    .line 49
    :cond_e
    :goto_4
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jx;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v12, :cond_12

    if-nez v0, :cond_f

    const/4 v0, 0x4

    .line 50
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/z20;->k(I)V

    goto :goto_5

    .line 51
    :cond_f
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    .line 52
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Cannot open browser with null or empty url"

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 54
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/z20;->k(I)V

    return-void

    .line 55
    :cond_10
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object v2

    .line 58
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v3

    .line 59
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v4

    .line 60
    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/z20;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z20;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v13, :cond_11

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    if-eqz v1, :cond_11

    .line 62
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-direct {v7, v8, v1, v2, v14}, Lcom/google/android/gms/internal/ads/z20;->h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/v20;

    .line 64
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/v20;-><init>(Lcom/google/android/gms/internal/ads/z20;)V

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    .line 65
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/bp0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const/4 v9, 0x0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x1

    move-object v8, v2

    .line 68
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    .line 69
    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/bp0;->C0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void

    :cond_12
    :goto_5
    const-string v0, "use_first_package"

    .line 70
    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    .line 71
    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/z20;->i(Lcom/google/android/gms/internal/ads/kq;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_13
    const-string v0, "app"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "system_browser"

    .line 74
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/z20;->i(Lcom/google/android/gms/internal/ads/kq;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_15
    :goto_6
    const-string v0, "open_app"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "p"

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->S5:Lcom/google/android/gms/internal/ads/cw;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 79
    :cond_16
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    .line 80
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "Package name missing from open app action."

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_17
    if-eqz v13, :cond_19

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    if-eqz v1, :cond_19

    .line 82
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v8, v1, v0, v14}, Lcom/google/android/gms/internal/ads/z20;->h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    return-void

    .line 83
    :cond_19
    :goto_7
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v0, "Cannot get package manager from open app action."

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1a
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 86
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/bp0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)V

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/bp0;->C0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    :cond_1b
    return-void

    .line 87
    :cond_1c
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/z20;->j(Z)V

    const-string v0, "intent_url"

    .line 88
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1e

    .line 90
    :try_start_0
    invoke-static {v3, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error parsing the url: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1d

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_9
    move-object v0, v4

    if-eqz v0, :cond_20

    .line 92
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 93
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 94
    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 95
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 96
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object v5

    .line 97
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v2

    .line 98
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v12

    .line 99
    invoke-static {v4, v5, v3, v2, v12}, Lcom/google/android/gms/internal/ads/z20;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/z20;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->T5:Lcom/google/android/gms/internal/ads/cw;

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 104
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 105
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    :cond_20
    :goto_a
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->e6:Lcom/google/android/gms/internal/ads/cw;

    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v12, "event_id"

    if-eqz v2, :cond_21

    const-string v2, "intent_async"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 110
    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v16, 0x1

    goto :goto_b

    :cond_21
    const/16 v16, 0x0

    :goto_b
    new-instance v5, Ljava/util/HashMap;

    .line 111
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_22

    new-instance v4, Lcom/google/android/gms/internal/ads/x20;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    move-object/from16 v19, v15

    move-object v15, v6

    move-object/from16 v6, p2

    .line 112
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/x20;-><init>(Lcom/google/android/gms/internal/ads/z20;ZLcom/google/android/gms/internal/ads/kq;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v15, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    const/4 v6, 0x0

    goto :goto_c

    :cond_22
    move-object/from16 v18, v5

    move-object/from16 v19, v15

    :goto_c
    const-string v1, "openIntentAsync"

    if-eqz v0, :cond_25

    if-eqz v13, :cond_24

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    if-eqz v2, :cond_24

    .line 113
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {v7, v8, v2, v3, v14}, Lcom/google/android/gms/internal/ads/z20;->h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-eqz v16, :cond_23

    .line 115
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v18

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/s40;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void

    .line 117
    :cond_24
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/bp0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)V

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/bp0;->C0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void

    :cond_25
    move-object/from16 v3, v18

    .line 118
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 119
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object v4

    .line 122
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v5

    .line 123
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v11

    .line 124
    invoke-static {v2, v4, v0, v5, v11}, Lcom/google/android/gms/internal/ads/z20;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z20;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_26
    if-eqz v13, :cond_28

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/z20;->f:Lcom/google/android/gms/internal/ads/dw1;

    if-eqz v0, :cond_28

    .line 127
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v8, v0, v11, v14}, Lcom/google/android/gms/internal/ads/z20;->h(Lcom/google/android/gms/internal/ads/kq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v16, :cond_27

    .line 128
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/s40;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    return-void

    .line 130
    :cond_28
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/bp0;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v2, "i"

    .line 131
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    const-string v2, "m"

    .line 132
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    move-object/from16 v2, v19

    .line 133
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    const-string v2, "c"

    .line 134
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    const-string v2, "f"

    .line 135
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    const-string v2, "e"

    .line 136
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/z20;->g:Lcom/google/android/gms/ads/internal/overlay/s;

    move-object/from16 v20, v1

    move-object/from16 v22, v11

    move-object/from16 v28, v2

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/s;)V

    .line 137
    invoke-interface {v0, v1, v6}, Lcom/google/android/gms/internal/ads/bp0;->C0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void
.end method
