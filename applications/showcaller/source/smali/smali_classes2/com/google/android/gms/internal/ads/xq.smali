.class public final Lcom/google/android/gms/internal/ads/xq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/xq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/xq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 29

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->a()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v5, v1

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->b()Ljava/lang/String;

    move-result-object v16

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->d()I

    move-result v8

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->e()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    move-object v9, v3

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->k(Landroid/content/Context;)Z

    move-result v10

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->f()Landroid/location/Location;

    move-result-object v15

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/pu;->g(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->r()Lcom/google/android/gms/ads/y/a;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v23, 0x0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->h()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->j()Lcom/google/android/gms/ads/search/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbio;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Lcom/google/android/gms/ads/search/a;)V

    move-object v14, v4

    goto :goto_2

    :cond_2
    move-object v14, v3

    .line 15
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/xh0;->j([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_3

    :cond_3
    move-object/from16 v21, v3

    .line 19
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->q()Z

    move-result v22

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wu;->i()Lcom/google/android/gms/ads/q;

    move-result-object v1

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->n()I

    move-result v2

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/ads/q;->b()I

    move-result v4

    .line 23
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/ads/q;->c()I

    move-result v2

    const/4 v4, -0x1

    .line 25
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/ads/q;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/wq;->d:Ljava/util/Comparator;

    .line 28
    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Ljava/lang/String;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->c()Ljava/util/List;

    move-result-object v26

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdg;

    move-object v3, v1

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->m()Landroid/os/Bundle;

    move-result-object v17

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->o()Landroid/os/Bundle;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->p()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v4, 0x8

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->i()Ljava/lang/String;

    move-result-object v20

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->t()I

    move-result v27

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pu;->s()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v3 .. v28}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbio;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzbcx;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v1

    .line 37
    :cond_4
    throw v3
.end method
