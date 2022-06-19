.class public final Lcom/google/android/gms/internal/ads/dyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dyb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/dyb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dyb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyb;->a:Lcom/google/android/gms/internal/ads/dyb;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gms/ads/n;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/ads/n;->a:Ljava/util/List;

    .line 55
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ebi;)Lcom/google/android/gms/internal/ads/dya;
    .locals 26

    .prologue
    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->a()Ljava/util/Date;

    move-result-object v2

    .line 3
    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->b()Ljava/lang/String;

    move-result-object v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->d()I

    move-result v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->e()Ljava/util/Set;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 12
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebi;->a(Landroid/content/Context;)Z

    move-result v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->f()Landroid/location/Location;

    move-result-object v14

    .line 14
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ebi;->a(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v6

    .line 15
    const/16 v22, 0x0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->q()Lcom/google/android/gms/ads/f/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17
    const-string/jumbo v2, ""

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->i()Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->q()Lcom/google/android/gms/ads/f/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/ads/f/a;->a()Lcom/google/android/gms/ads/f/b;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->i()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->q()Lcom/google/android/gms/ads/f/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/f/a;->a()Lcom/google/android/gms/ads/f/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    :cond_0
    new-instance v22, Lcom/google/android/gms/internal/ads/dxu;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->q()Lcom/google/android/gms/ads/f/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/f/a;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/dxu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->g()Z

    move-result v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->h()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->j()Lcom/google/android/gms/ads/g/a;

    move-result-object v2

    .line 24
    if-eqz v2, :cond_5

    new-instance v13, Lcom/google/android/gms/internal/ads/eck;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/ads/eck;-><init>(Lcom/google/android/gms/ads/g/a;)V

    .line 25
    :goto_2
    const/16 v20, 0x0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/xr;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 31
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->p()Z

    move-result v21

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/ebl;->a()Lcom/google/android/gms/internal/ads/ebl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ebl;->c()Lcom/google/android/gms/ads/n;

    move-result-object v2

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->m()I

    move-result v3

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/ads/n;->a()I

    move-result v10

    .line 36
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->r()I

    move-result v3

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/ads/n;->b()I

    move-result v16

    .line 40
    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 41
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->s()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/ads/n;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v16

    .line 43
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dye;->a:Ljava/util/Comparator;

    .line 44
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->c()Ljava/util/List;

    move-result-object v25

    .line 46
    new-instance v2, Lcom/google/android/gms/internal/ads/dya;

    const/16 v3, 0x8

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->l()Landroid/os/Bundle;

    move-result-object v16

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->n()Landroid/os/Bundle;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->o()Ljava/util/Set;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ebi;->i()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/internal/ads/dya;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/eck;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/dxu;ILjava/lang/String;Ljava/util/List;)V

    .line 51
    return-object v2

    .line 5
    :cond_3
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    .line 11
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 24
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ebi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rh;
    .locals 2

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dyb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ebi;)Lcom/google/android/gms/internal/ads/dya;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/google/android/gms/internal/ads/rh;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/rh;-><init>(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V

    return-object v1
.end method
