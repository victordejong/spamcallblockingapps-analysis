.class public final Lcom/google/android/gms/internal/ads/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/eir;",
        ":",
        "Lcom/google/android/gms/internal/ads/adh;",
        ":",
        "Lcom/google/android/gms/internal/ads/adt;",
        ":",
        "Lcom/google/android/gms/internal/ads/jq;",
        ":",
        "Lcom/google/android/gms/internal/ads/aen;",
        ":",
        "Lcom/google/android/gms/internal/ads/aeu;",
        ":",
        "Ljava/lang/Object;",
        ":",
        "Lcom/google/android/gms/internal/ads/aey;",
        ":",
        "Lcom/google/android/gms/internal/ads/aez;",
        ":",
        "Lcom/google/android/gms/internal/ads/afb;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zza;

.field private final b:Lcom/google/android/gms/internal/ads/bli;

.field private final c:Lcom/google/android/gms/internal/ads/cty;

.field private final d:Lcom/google/android/gms/internal/ads/zc;

.field private final e:Lcom/google/android/gms/internal/ads/pp;

.field private final f:Lcom/google/android/gms/internal/ads/brs;

.field private g:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->a:Lcom/google/android/gms/ads/internal/zza;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hq;->e:Lcom/google/android/gms/internal/ads/pp;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->d:Lcom/google/android/gms/internal/ads/zc;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    .line 2034
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2035
    sget-object v0, Lcom/google/android/gms/internal/ads/die;->a:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2036
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_3
    :goto_2
    return-object p2
.end method

.method private static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    :try_start_0
    const-string v0, "aclk_ms"

    .line 88
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 91
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Error adding click uptime parameter to url: "

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method private final a(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->e:Lcom/google/android/gms/internal/ads/pp;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pp;->a(Z)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
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

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v7

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbg(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbg;

    move-result-object v8

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    if-eqz v2, :cond_0

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    const-string v6, "offline_open"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/internal/ads/brs;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/adt;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hq;->d:Lcom/google/android/gms/internal/ads/zc;

    .line 1051
    new-instance v3, Lcom/google/android/gms/internal/ads/brw;

    invoke-direct {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/brw;-><init>(Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/zc;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/css;)V

    return v11

    .line 19
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbf(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->eX:Lcom/google/android/gms/internal/ads/af;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    move-object v3, v8

    move-object/from16 v7, p4

    move-object v8, p3

    .line 41
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/aey;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result v11

    move-object v2, v8

    move-object/from16 v6, p4

    move-object v7, p3

    move v8, v11

    .line 44
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    if-eqz v2, :cond_5

    .line 46
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    const-string v6, "dialog_impression"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/internal/ads/brs;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V

    return v10

    .line 23
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/brs;->a(Ljava/lang/String;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    if-eqz v1, :cond_b

    .line 25
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbf(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "dialog_not_shown_reason"

    if-nez v1, :cond_7

    const-string v1, "notifications_disabled"

    .line 27
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v1, "work_manager_unavailable"

    .line 29
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eX:Lcom/google/android/gms/internal/ads/af;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "notification_flow_disabled"

    .line 33
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fullscreen_no_activity"

    .line 35
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    const-string v6, "dialog_not_shown"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/internal/ads/brs;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return v11
.end method

.method private static a(Ljava/util/Map;)Z
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

    .line 65
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/util/Map;)I
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

    .line 66
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/bt;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->fe:Lcom/google/android/gms/internal/ads/af;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->c:Lcom/google/android/gms/internal/ads/cty;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 58
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bli;->a()Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v3, "action"

    .line 61
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 98
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/eir;

    const-string v0, "u"

    .line 99
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/ads/xg;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    const-string v6, "a"

    .line 101
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v0, "Action missing from an open GMSG."

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/hq;->a:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result v8

    if-nez v8, :cond_1

    .line 106
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hq;->a:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_1
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->q()Lcom/google/android/gms/internal/ads/cov;

    move-result-object v8

    .line 111
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->S()Lcom/google/android/gms/internal/ads/coz;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 113
    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    .line 114
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v9, ""

    const/4 v8, 0x0

    :goto_0
    const-string v11, "expand"

    .line 115
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 116
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_3
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    .line 120
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->b(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/ads/aey;->b(ZI)V

    return-void

    :cond_4
    const-string v11, "webapp"

    .line 121
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 122
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    if-eqz v4, :cond_5

    .line 124
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->b(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/aey;->a(ZILjava/lang/String;)V

    return-void

    .line 125
    :cond_5
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    .line 126
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->a(Ljava/util/Map;)Z

    move-result v0

    .line 127
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/hq;->b(Ljava/util/Map;)I

    move-result v4

    const-string v5, "html"

    .line 128
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "baseurl"

    .line 129
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-interface {v3, v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/aey;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v11, "chrome_custom_tab"

    .line 131
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Lcom/google/android/gms/internal/ads/aq;->cy:Lcom/google/android/gms/internal/ads/af;

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v11

    .line 134
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 135
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    .line 136
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Cannot open browser with null or empty url"

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/google/android/gms/internal/ads/bt;->zzddd:Lcom/google/android/gms/internal/ads/bt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/bt;)V

    return-void

    .line 140
    :cond_7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 143
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object v4

    .line 144
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v6

    .line 145
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v10

    .line 146
    invoke-static {v2, v4, v0, v6, v10}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v8, :cond_8

    .line 148
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    if-eqz v2, :cond_8

    .line 149
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-direct {v1, v3, v2, v4, v9}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 151
    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ads/ht;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ht;-><init>(Lcom/google/android/gms/internal/ads/hq;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 152
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v2, v0, v4, v7}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;Z)V

    .line 154
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void

    :cond_9
    const-string v11, "app"

    .line 155
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_17

    const-string v11, "system_browser"

    .line 156
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "true"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 157
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    .line 158
    new-instance v4, Lcom/google/android/gms/internal/ads/hv;

    .line 159
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v13

    invoke-direct {v4, v6, v11, v13}, Lcom/google/android/gms/internal/ads/hv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/view/View;)V

    .line 3039
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/hv;->a:Landroid/content/Context;

    const-string v11, "activity"

    .line 3040
    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3041
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3042
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto/16 :goto_4

    .line 3044
    :cond_a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3045
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/hv;->a:Landroid/content/Context;

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/hv;->b:Lcom/google/android/gms/internal/ads/die;

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/hv;->c:Landroid/view/View;

    invoke-static {v11, v13, v0, v14, v12}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 3046
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v11, "use_first_package"

    .line 3047
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v13, "use_running_process"

    .line 3048
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "use_custom_tabs"

    .line 3050
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->cw:Lcom/google/android/gms/internal/ads/af;

    .line 3051
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 3052
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v7, 0x0

    .line 3054
    :cond_c
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v14, "http"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "https"

    if-eqz v2, :cond_d

    .line 3055
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    goto :goto_2

    .line 3056
    :cond_d
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3057
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 3058
    :cond_e
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3059
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 3060
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v7, :cond_f

    .line 3062
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/hv;->a:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3063
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/hv;->a:Landroid/content/Context;

    invoke-static {v7, v12}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3064
    :cond_f
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 3066
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_4

    :cond_10
    if-eqz v12, :cond_11

    .line 3068
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 3071
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    .line 3073
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_11

    goto :goto_4

    .line 3076
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v13, :cond_14

    if-eqz v6, :cond_14

    .line 3080
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3082
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x0

    :cond_12
    if-ge v12, v7, :cond_14

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 3083
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3084
    iget-object v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 3085
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_4

    :cond_13
    const/4 v10, 0x0

    goto :goto_3

    :cond_14
    if-eqz v11, :cond_15

    const/4 v4, 0x0

    .line 3089
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/hv;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_4

    :cond_15
    move-object v12, v0

    :goto_4
    if-eqz v8, :cond_16

    .line 161
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    if-eqz v0, :cond_16

    if-eqz v12, :cond_16

    .line 162
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {v1, v3, v0, v2, v9}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 165
    :cond_16
    :try_start_0
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_17
    const-string v0, "open_app"

    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "p"

    if-eqz v0, :cond_1c

    .line 169
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->eP:Lcom/google/android/gms/internal/ads/af;

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 172
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    .line 173
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "Package name missing from open app action."

    .line 175
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_18
    if-eqz v8, :cond_19

    .line 177
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    if-eqz v2, :cond_19

    .line 178
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0, v9}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 179
    :cond_19
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string v0, "Cannot get package manager from open app action."

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 185
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_1b
    return-void

    .line 187
    :cond_1c
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/hq;->a(Z)V

    const-string v0, "intent_url"

    .line 188
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 190
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v13, 0x0

    .line 191
    :try_start_1
    invoke-static {v11, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v14, v0

    const-string v0, "Error parsing the url: "

    .line 194
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_1d
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    :goto_5
    invoke-static {v0, v14}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_1e
    const/4 v13, 0x0

    :goto_6
    if-eqz v12, :cond_20

    .line 195
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 196
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 197
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_20

    .line 199
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 200
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object v14

    .line 201
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v15

    .line 202
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v7

    .line 203
    invoke-static {v11, v14, v0, v15, v7}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f

    sget-object v7, Lcom/google/android/gms/internal/ads/aq;->eQ:Lcom/google/android/gms/internal/ads/af;

    .line 206
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v7

    .line 207
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 208
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 209
    :cond_1f
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    :cond_20
    :goto_7
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->fa:Lcom/google/android/gms/internal/ads/af;

    .line 212
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v7, "event_id"

    if-eqz v0, :cond_21

    const-string v0, "intent_async"

    .line 214
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 215
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v13, 0x1

    .line 216
    :cond_21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v13, :cond_22

    .line 218
    new-instance v6, Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {v6, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/hs;-><init>(Lcom/google/android/gms/internal/ads/hq;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/eir;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    :cond_22
    const-string v6, "openIntentAsync"

    if-eqz v12, :cond_25

    if-eqz v8, :cond_24

    .line 220
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    if-eqz v4, :cond_24

    .line 221
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-direct {v1, v3, v4, v5, v9}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v13, :cond_23

    .line 224
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    check-cast v3, Lcom/google/android/gms/internal/ads/jq;

    invoke-interface {v3, v6, v0}, Lcom/google/android/gms/internal/ads/jq;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void

    .line 227
    :cond_24
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void

    .line 228
    :cond_25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_26

    .line 229
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 231
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 232
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object v12

    .line 233
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v14

    .line 234
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v15

    .line 235
    invoke-static {v11, v12, v4, v14, v15}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    .line 236
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hq;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_26
    if-eqz v8, :cond_28

    .line 238
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/hq;->f:Lcom/google/android/gms/internal/ads/brs;

    if-eqz v8, :cond_28

    .line 239
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v3, v5, v4, v9}, Lcom/google/android/gms/internal/ads/hq;->a(Lcom/google/android/gms/internal/ads/eir;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v13, :cond_27

    .line 241
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    check-cast v3, Lcom/google/android/gms/internal/ads/jq;

    invoke-interface {v3, v6, v0}, Lcom/google/android/gms/internal/ads/jq;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    return-void

    .line 244
    :cond_28
    check-cast v3, Lcom/google/android/gms/internal/ads/aey;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    const-string v5, "i"

    .line 245
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    const-string v5, "m"

    .line 246
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    .line 247
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    const-string v5, "c"

    .line 248
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    const-string v5, "f"

    .line 249
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    const-string v5, "e"

    .line 250
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hq;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    move-object v14, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v2

    invoke-direct/range {v14 .. v22}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 251
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_29
    return-void
.end method
