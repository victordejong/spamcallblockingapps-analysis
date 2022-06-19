.class public final Lcom/google/android/gms/internal/ads/bfi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ads/die;

.field final c:Lcom/google/android/gms/internal/ads/zzbar;

.field final d:Lcom/google/android/gms/ads/internal/zzb;

.field final e:Lcom/google/android/gms/internal/ads/ehk;

.field final f:Ljava/util/concurrent/Executor;

.field final g:Lcom/google/android/gms/internal/ads/zzaei;

.field final h:Lcom/google/android/gms/internal/ads/bfv;

.field final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Lcom/google/android/gms/internal/ads/bey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bey;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/bfv;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfi;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfi;->j:Lcom/google/android/gms/internal/ads/bey;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bfi;->b:Lcom/google/android/gms/internal/ads/die;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bfi;->c:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bfi;->d:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bfi;->e:Lcom/google/android/gms/internal/ads/ehk;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bfi;->f:Ljava/util/concurrent/Executor;

    .line 9
    iget-object p1, p8, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfi;->g:Lcom/google/android/gms/internal/ads/zzaei;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bfi;->h:Lcom/google/android/gms/internal/ads/bfv;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bfi;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TT;>;"
        }
    .end annotation

    .line 125
    const-class v0, Ljava/lang/Exception;

    new-instance v1, Lcom/google/android/gms/internal/ads/bfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bfo;-><init>(Ljava/lang/Object;)V

    .line 126
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 3015
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/dbt;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/de;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "url"

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "scale"

    .line 64
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const/4 v0, 0x1

    const-string v1, "is_transparent"

    .line 65
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "width"

    const/4 v2, -0x1

    .line 66
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "height"

    .line 67
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz p2, :cond_2

    .line 69
    new-instance p1, Lcom/google/android/gms/internal/ads/de;

    const/4 v5, 0x0

    .line 70
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/de;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bfi;->j:Lcom/google/android/gms/internal/ads/bey;

    .line 73
    invoke-virtual {p2, v3, v7, v8, v0}, Lcom/google/android/gms/internal/ads/bey;->a(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/bfk;

    move-object v2, v0

    move-wide v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bfk;-><init>(Ljava/lang/String;DII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfi;->f:Ljava/util/concurrent/Executor;

    .line 2020
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    const-string v0, "require"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/bfi;->a(ZLcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

.method static a(ZLcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 129
    new-instance p0, Lcom/google/android/gms/internal/ads/bfn;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bfn;-><init>(Lcom/google/android/gms/internal/ads/dbt;)V

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 3019
    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bfi;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p0

    return-object p0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ene;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "reason"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ene;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/ene;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    .line 93
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    .line 94
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 96
    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/de;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/bfh;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bfi;->f:Ljava/util/concurrent/Executor;

    .line 1020
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 48
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/de;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bfi;->g:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
