.class public final Ls2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/d$a;,
        Ls2/d$b;
    }
.end annotation


# instance fields
.field public final a:Lr5/a;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lb3/a;

.field public final f:Lb3/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb3/a;Lb3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt5/e;

    invoke-direct {v0}, Lt5/e;-><init>()V

    sget-object v1, Lt2/b;->a:Ls5/a;

    .line 3
    check-cast v1, Lt2/b;

    invoke-virtual {v1, v0}, Lt2/b;->a(Ls5/b;)V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lt5/e;->d:Z

    .line 5
    new-instance v1, Lt5/d;

    invoke-direct {v1, v0}, Lt5/d;-><init>(Lt5/e;)V

    .line 6
    iput-object v1, p0, Ls2/d;->a:Lr5/a;

    .line 7
    iput-object p1, p0, Ls2/d;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ls2/d;->b:Landroid/net/ConnectivityManager;

    .line 9
    sget-object p1, Ls2/a;->c:Ljava/lang/String;

    invoke-static {p1}, Ls2/d;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Ls2/d;->d:Ljava/net/URL;

    .line 10
    iput-object p3, p0, Ls2/d;->e:Lb3/a;

    .line 11
    iput-object p2, p0, Ls2/d;->f:Lb3/a;

    const p1, 0x9c40

    .line 12
    iput p1, p0, Ls2/d;->g:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lv2/f;)Lv2/g;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    move-object/from16 v2, p1

    check-cast v2, Lv2/a;

    .line 3
    iget-object v3, v2, Lv2/a;->a:Ljava/lang/Iterable;

    .line 4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu2/f;

    .line 5
    invoke-virtual {v4}, Lu2/f;->g()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "CctTransportBackend"

    const/4 v6, 0x0

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu2/f;

    .line 14
    sget-object v17, Lt2/p;->a:Lt2/p;

    .line 15
    iget-object v8, v0, Ls2/d;->f:Lb3/a;

    .line 16
    invoke-interface {v8}, Lb3/a;->a()J

    move-result-wide v8

    .line 17
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 18
    iget-object v9, v0, Ls2/d;->e:Lb3/a;

    .line 19
    invoke-interface {v9}, Lb3/a;->a()J

    move-result-wide v9

    .line 20
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 21
    sget-object v10, Lt2/k$a;->a:Lt2/k$a;

    const-string v11, "sdk-version"

    .line 22
    invoke-virtual {v7, v11}, Lu2/f;->f(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v11, "model"

    .line 23
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v11, "hardware"

    .line 24
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v11, "device"

    .line 25
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v11, "product"

    .line 26
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v11, "os-uild"

    .line 27
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v11, "manufacturer"

    .line 28
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v11, "fingerprint"

    .line 29
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v11, "country"

    .line 30
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v11, "locale"

    .line 31
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v11, "mcc_mnc"

    .line 32
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v11, "application_build"

    .line 33
    invoke-virtual {v7, v11}, Lu2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 34
    new-instance v7, Lt2/c;

    const/16 v31, 0x0

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v31}, Lt2/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt2/c$a;)V

    .line 35
    new-instance v13, Lt2/e;

    invoke-direct {v13, v10, v7, v6}, Lt2/e;-><init>(Lt2/k$a;Lt2/a;Lt2/e$a;)V

    .line 36
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v6

    move-object v14, v7

    goto :goto_2

    .line 38
    :catch_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v14, v6

    move-object v15, v7

    .line 39
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v10, "Missing required properties:"

    const-string v11, ""

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu2/f;

    .line 41
    invoke-virtual {v7}, Lu2/f;->d()Lu2/e;

    move-result-object v12

    move-object/from16 v19, v1

    .line 42
    iget-object v1, v12, Lu2/e;->a:Lr2/b;

    move-object/from16 v16, v4

    .line 43
    new-instance v4, Lr2/b;

    move-object/from16 v18, v11

    const-string v11, "proto"

    invoke-direct {v4, v11}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v4}, Lr2/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    iget-object v1, v12, Lu2/e;->b:[B

    .line 46
    new-instance v4, Lt2/f$b;

    invoke-direct {v4}, Lt2/f$b;-><init>()V

    .line 47
    iput-object v1, v4, Lt2/f$b;->d:[B

    goto :goto_4

    .line 48
    :cond_2
    new-instance v4, Lr2/b;

    const-string v11, "json"

    invoke-direct {v4, v11}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v4}, Lr2/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 50
    new-instance v1, Ljava/lang/String;

    .line 51
    iget-object v4, v12, Lu2/e;->b:[B

    const-string v11, "UTF-8"

    .line 52
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v1, v4, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    new-instance v4, Lt2/f$b;

    invoke-direct {v4}, Lt2/f$b;-><init>()V

    .line 54
    iput-object v1, v4, Lt2/f$b;->e:Ljava/lang/String;

    .line 55
    :goto_4
    invoke-virtual {v7}, Lu2/f;->e()J

    move-result-wide v11

    .line 56
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lt2/f$b;->a:Ljava/lang/Long;

    .line 57
    invoke-virtual {v7}, Lu2/f;->h()J

    move-result-wide v11

    .line 58
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lt2/f$b;->c:Ljava/lang/Long;

    .line 59
    invoke-virtual {v7}, Lu2/f;->b()Ljava/util/Map;

    move-result-object v1

    const-string v11, "tz-offset"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_5

    .line 60
    :cond_3
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 61
    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lt2/f$b;->f:Ljava/lang/Long;

    const-string v1, "net-type"

    .line 62
    invoke-virtual {v7, v1}, Lu2/f;->f(Ljava/lang/String;)I

    move-result v1

    .line 63
    sget-object v11, Lt2/o$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/o$b;

    const-string v11, "mobile-subtype"

    .line 64
    invoke-virtual {v7, v11}, Lu2/f;->f(Ljava/lang/String;)I

    move-result v11

    .line 65
    sget-object v12, Lt2/o$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt2/o$a;

    .line 66
    new-instance v12, Lt2/i;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v12, v1, v11, v2}, Lt2/i;-><init>(Lt2/o$b;Lt2/o$a;Lt2/i$a;)V

    .line 67
    iput-object v12, v4, Lt2/f$b;->g:Lt2/o;

    .line 68
    invoke-virtual {v7}, Lu2/f;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v7}, Lu2/f;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 70
    iput-object v1, v4, Lt2/f$b;->b:Ljava/lang/Integer;

    .line 71
    :cond_4
    iget-object v1, v4, Lt2/f$b;->a:Ljava/lang/Long;

    if-nez v1, :cond_5

    const-string v11, " eventTimeMs"

    goto :goto_6

    :cond_5
    move-object/from16 v11, v18

    .line 72
    :goto_6
    iget-object v1, v4, Lt2/f$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_6

    const-string v1, " eventUptimeMs"

    .line 73
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 74
    :cond_6
    iget-object v1, v4, Lt2/f$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_7

    const-string v1, " timezoneOffsetSeconds"

    .line 75
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 76
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 77
    new-instance v1, Lt2/f;

    iget-object v2, v4, Lt2/f$b;->a:Ljava/lang/Long;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    iget-object v2, v4, Lt2/f$b;->b:Ljava/lang/Integer;

    iget-object v7, v4, Lt2/f$b;->c:Ljava/lang/Long;

    .line 79
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    iget-object v7, v4, Lt2/f$b;->d:[B

    iget-object v10, v4, Lt2/f$b;->e:Ljava/lang/String;

    iget-object v11, v4, Lt2/f$b;->f:Ljava/lang/Long;

    .line 80
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    iget-object v4, v4, Lt2/f$b;->g:Lt2/o;

    const/16 v32, 0x0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    move-object/from16 v27, v7

    move-object/from16 v28, v10

    move-object/from16 v31, v4

    invoke-direct/range {v21 .. v32}, Lt2/f;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLt2/o;Lt2/f$a;)V

    .line 81
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 82
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v20, v2

    .line 83
    invoke-static {v5}, Lj4/w0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const-string v1, "Received event of unsupported encoding %s. Skipping..."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object/from16 v4, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_3

    :cond_a
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v11

    if-nez v8, :cond_b

    const-string v11, " requestTimeMs"

    goto :goto_8

    :cond_b
    move-object/from16 v11, v18

    :goto_8
    if-nez v9, :cond_c

    const-string v1, " requestUptimeMs"

    .line 84
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    :cond_c
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    new-instance v1, Lt2/g;

    .line 87
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 88
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/16 v18, 0x0

    move-object v8, v1

    move-wide v9, v4

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v18}, Lt2/g;-><init>(JJLt2/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lt2/p;Lt2/g$a;)V

    .line 89
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_1

    .line 90
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object/from16 v20, v2

    .line 91
    new-instance v1, Lt2/d;

    invoke-direct {v1, v3}, Lt2/d;-><init>(Ljava/util/List;)V

    .line 92
    iget-object v2, v0, Ls2/d;->d:Ljava/net/URL;

    move-object/from16 v3, v20

    .line 93
    iget-object v3, v3, Lv2/a;->b:[B

    if-eqz v3, :cond_10

    .line 94
    :try_start_1
    move-object/from16 v3, p1

    check-cast v3, Lv2/a;

    .line 95
    iget-object v3, v3, Lv2/a;->b:[B

    .line 96
    invoke-static {v3}, Ls2/a;->a([B)Ls2/a;

    move-result-object v3

    .line 97
    iget-object v4, v3, Ls2/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, v6

    .line 98
    :goto_9
    iget-object v3, v3, Ls2/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 99
    invoke-static {v3}, Ls2/d;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 100
    :catch_1
    invoke-static {}, Lv2/g;->a()Lv2/g;

    move-result-object v1

    return-object v1

    :cond_10
    move-object v4, v6

    :cond_11
    :goto_a
    const/4 v3, 0x5

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    .line 101
    :try_start_2
    new-instance v10, Ls2/d$a;

    invoke-direct {v10, v2, v1, v4}, Ls2/d$a;-><init>(Ljava/net/URL;Lt2/j;Ljava/lang/String;)V

    new-instance v1, Ls2/b;

    invoke-direct {v1, v0}, Ls2/b;-><init>(Ljava/lang/Object;)V

    .line 102
    :cond_12
    invoke-virtual {v1, v10}, Ls2/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    move-object v4, v2

    check-cast v4, Ls2/d$b;

    .line 104
    iget-object v11, v4, Ls2/d$b;->b:Ljava/net/URL;

    if-eqz v11, :cond_13

    const-string v12, "Following redirect to: %s"

    .line 105
    invoke-static {v5, v12, v11}, Lj4/w0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v4, v4, Ls2/d$b;->b:Ljava/net/URL;

    .line 107
    new-instance v11, Ls2/d$a;

    iget-object v12, v10, Ls2/d$a;->b:Lt2/j;

    iget-object v10, v10, Ls2/d$a;->c:Ljava/lang/String;

    invoke-direct {v11, v4, v12, v10}, Ls2/d$a;-><init>(Ljava/net/URL;Lt2/j;Ljava/lang/String;)V

    move-object v10, v11

    goto :goto_b

    :cond_13
    move-object v10, v6

    :goto_b
    if-eqz v10, :cond_14

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_12

    .line 108
    :cond_14
    check-cast v2, Ls2/d$b;

    .line 109
    iget v1, v2, Ls2/d$b;->a:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_15

    .line 110
    iget-wide v1, v2, Ls2/d$b;->c:J

    .line 111
    new-instance v3, Lv2/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v2}, Lv2/b;-><init>(IJ)V

    return-object v3

    :cond_15
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_17

    const/16 v2, 0x194

    if-ne v1, v2, :cond_16

    goto :goto_c

    .line 112
    :cond_16
    invoke-static {}, Lv2/g;->a()Lv2/g;

    move-result-object v1

    return-object v1

    .line 113
    :cond_17
    :goto_c
    new-instance v1, Lv2/b;

    invoke-direct {v1, v9, v7, v8}, Lv2/b;-><init>(IJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 114
    :catch_2
    invoke-static {v5}, Lj4/w0;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    new-instance v1, Lv2/b;

    invoke-direct {v1, v9, v7, v8}, Lv2/b;-><init>(IJ)V

    return-object v1
.end method

.method public b(Lu2/f;)Lu2/f;
    .locals 5

    .line 1
    iget-object v0, p0, Ls2/d;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lu2/f;->i()Lu2/f$a;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdk-version"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "hardware"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "device"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "product"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "os-uild"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 21
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz-offset"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 22
    sget-object v2, Lt2/o$b;->b:Lt2/o$b;

    const/4 v2, -0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "net-type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lt2/o$a;->b:Lt2/o$a;

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 27
    sget-object v0, Lt2/o$a;->c:Lt2/o$a;

    const/16 v0, 0x64

    goto :goto_2

    .line 28
    :cond_2
    sget-object v3, Lt2/o$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/o$a;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 29
    :goto_2
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mobile-subtype"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "country"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Ls2/d;->c:Landroid/content/Context;

    const-string v3, "phone"

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "mcc_mnc"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Ls2/d;->c:Landroid/content/Context;

    .line 39
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "CctTransportBackend"

    .line 41
    invoke-static {v0}, Lj4/w0;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lu2/f$a;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "application_build"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lu2/f$a;->b()Lu2/f;

    move-result-object p1

    return-object p1
.end method
