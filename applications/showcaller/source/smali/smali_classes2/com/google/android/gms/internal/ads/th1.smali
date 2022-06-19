.class public final Lcom/google/android/gms/internal/ads/th1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bh1;

.field private final c:Lcom/google/android/gms/internal/ads/u;

.field private final d:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final e:Lcom/google/android/gms/ads/internal/a;

.field private final f:Lcom/google/android/gms/internal/ads/pm;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/zzblv;

.field private final i:Lcom/google/android/gms/internal/ads/mi1;

.field private final j:Lcom/google/android/gms/internal/ads/bl1;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private final l:Lcom/google/android/gms/internal/ads/wj1;

.field private final m:Lcom/google/android/gms/internal/ads/rn1;

.field private final n:Lcom/google/android/gms/internal/ads/jo2;

.field private final o:Lcom/google/android/gms/internal/ads/bp2;

.field private final p:Lcom/google/android/gms/internal/ads/dw1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bh1;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/bl1;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/wj1;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->b:Lcom/google/android/gms/internal/ads/bh1;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->c:Lcom/google/android/gms/internal/ads/u;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->e:Lcom/google/android/gms/ads/internal/a;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->f:Lcom/google/android/gms/internal/ads/pm;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->g:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->i:Lcom/google/android/gms/internal/ads/zzblv;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->h:Lcom/google/android/gms/internal/ads/zzblv;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->i:Lcom/google/android/gms/internal/ads/mi1;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->j:Lcom/google/android/gms/internal/ads/bl1;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->m:Lcom/google/android/gms/internal/ads/rn1;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->n:Lcom/google/android/gms/internal/ads/jo2;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->o:Lcom/google/android/gms/internal/ads/bp2;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->p:Lcom/google/android/gms/internal/ads/dw1;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->l:Lcom/google/android/gms/internal/ads/wj1;

    return-void
.end method

.method public static final i(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/xu;
    .locals 2

    const-string v0, "mute"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "default_reason"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/th1;->r(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/xu;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/xu;",
            ">;"
        }
    .end annotation

    const-string v0, "mute"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "reasons"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/th1;->r(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/xu;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    return-object p0
.end method

.method private final k(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ry;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/th1;->l(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->k(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/ih1;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/th1;->g:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method private final l(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/r03;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "url"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v4, "scale"

    .line 5
    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    .line 6
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "width"

    const/4 v4, -0x1

    .line 7
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "height"

    .line 8
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz p2, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/ry;

    const/4 v6, 0x0

    .line 9
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/ry;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/th1;->b:Lcom/google/android/gms/internal/ads/bh1;

    .line 11
    invoke-virtual {p2, v3, v8, v9, v1}, Lcom/google/android/gms/internal/ads/bh1;->a(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/kh1;

    move-object v2, v1

    move-wide v4, v8

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/kh1;-><init>(Ljava/lang/String;DII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/th1;->g:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    const-string v1, "require"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/th1;->p(ZLcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method private static m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 5
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

.method private final n(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/jj2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation

    const-string v0, "base_url"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "html"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "width"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "height"

    .line 4
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/th1;->q(II)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/th1;->i:Lcom/google/android/gms/internal/ads/mi1;

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mi1;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ph1;

    .line 7
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/ph1;-><init>(Lcom/google/android/gms/internal/ads/r03;)V

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method private static o(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/qh1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/qh1;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p0

    return-object p0
.end method

.method private static p(ZLcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/rh1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rh1;-><init>(Lcom/google/android/gms/internal/ads/r03;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 3
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/th1;->o(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final q(II)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->l0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/th1;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/f;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/f;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    return-object v0
.end method

.method private static final r(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/xu;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "reason"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/xu;

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/xu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/th1;->h:Lcom/google/android/gms/internal/ads/zzblv;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzblv;->e:Z

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/th1;->l(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ry;",
            ">;>;"
        }
    .end annotation

    const-string p2, "images"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/th1;->h:Lcom/google/android/gms/internal/ads/zzblv;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzblv;->e:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzblv;->g:Z

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/th1;->k(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/jj2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->O6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "images"

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "base_url"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "html"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "width"

    .line 11
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    .line 12
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 13
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/th1;->q(II)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v4

    .line 14
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/lh1;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/lh1;-><init>(Lcom/google/android/gms/internal/ads/th1;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    .line 17
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/mh1;

    .line 18
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/mh1;-><init>(Lcom/google/android/gms/internal/ads/r03;)V

    sget-object p3, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/py;",
            ">;"
        }
    .end annotation

    const-string p2, "attribution"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "images"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/th1;->k(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/nh1;

    .line 8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/nh1;-><init>(Lcom/google/android/gms/internal/ads/th1;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/th1;->g:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    const-string v1, "require"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 11
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/th1;->p(ZLcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/jj2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation

    const-string v0, "html_containers"

    const-string v1, "instream"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/x0;->h(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "video"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v1, "vast_xml"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->N6:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "html"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 8
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    const-string p1, "Required field \'vast_xml\' or \'html\' is missing"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/th1;->i:Lcom/google/android/gms/internal/ads/mi1;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/mi1;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/th1;->n(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->l2:Lcom/google/android/gms/internal/ads/cw;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/th1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-static {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/th1;->o(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    :goto_1
    return-object p1

    .line 18
    :cond_4
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/th1;->n(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 15

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/ads/ho0;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->b()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/th1;->c:Lcom/google/android/gms/internal/ads/u;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/th1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/th1;->e:Lcom/google/android/gms/ads/internal/a;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/th1;->f:Lcom/google/android/gms/internal/ads/pm;

    const-string v3, "native-omid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2
    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/ho0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/sh1;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/sh1;-><init>(Lcom/google/android/gms/internal/ads/ui0;)V

    .line 5
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->x3:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "text/html"

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "base64"

    .line 10
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/wn0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "UTF-8"

    move-object/from16 v5, p1

    .line 11
    invoke-interface {v1, v5, v4, v3}, Lcom/google/android/gms/internal/ads/wn0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method final synthetic g(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/py;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "text"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/th1;->m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/th1;->m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, -0x1

    const-string v2, "text_size"

    .line 5
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v2, 0x3e8

    const-string v4, "animation_ms"

    .line 7
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xfa0

    const-string v7, "presentation_ms"

    .line 8
    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    new-instance v11, Lcom/google/android/gms/internal/ads/py;

    if-lez v1, :cond_1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/th1;->h:Lcom/google/android/gms/internal/ads/zzblv;

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzblv;->h:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/py;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    move-object v0, v11

    :cond_2
    :goto_0
    return-object v0
.end method

.method final synthetic h(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/th1;->j:Lcom/google/android/gms/internal/ads/bl1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/th1;->l:Lcom/google/android/gms/internal/ads/wj1;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wj1;->b()Lcom/google/android/gms/internal/ads/tj1;

    move-result-object v9

    move-object v5, v9

    move-object v7, v9

    move-object/from16 v20, v9

    move-object v8, v9

    move-object v6, v9

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v4

    new-instance v3, Lcom/google/android/gms/ads/internal/b;

    move-object v12, v3

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/th1;->a:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v3, v10, v14, v14}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/zzcax;)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/th1;->p:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/th1;->o:Lcom/google/android/gms/internal/ads/bp2;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/th1;->m:Lcom/google/android/gms/internal/ads/rn1;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/th1;->n:Lcom/google/android/gms/internal/ads/jo2;

    move-object/from16 v18, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v14, v3

    const/16 v19, 0x0

    .line 5
    invoke-interface/range {v4 .. v20}, Lcom/google/android/gms/internal/ads/jp0;->q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->k2:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/m20;->s:Lcom/google/android/gms/internal/ads/n20;

    const-string v4, "/getNativeAdViewSignals"

    invoke-interface {v1, v4, v3}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 10
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/m20;->t:Lcom/google/android/gms/internal/ads/n20;

    const-string v4, "/getNativeClickMeta"

    invoke-interface {v1, v4, v3}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/jh1;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/jh1;-><init>(Lcom/google/android/gms/internal/ads/ui0;)V

    .line 12
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 13
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/wn0;->b1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
