.class public final Lcom/google/android/gms/internal/ads/ejb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/ejb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/ejb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ejb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/gms/ads/RequestConfiguration;->zzadz:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/ads/RequestConfiguration;->zzadz:Ljava/util/List;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavt;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    .line 54
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;
    .locals 28

    move-object/from16 v0, p1

    .line 1026
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emr;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v5, v1

    .line 1027
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emr;->b:Ljava/lang/String;

    .line 1029
    iget v8, v0, Lcom/google/android/gms/internal/ads/emr;->c:I

    .line 1030
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/emr;->d:Ljava/util/Set;

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move-object v9, v4

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/emr;->a(Landroid/content/Context;)Z

    move-result v10

    .line 1031
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/emr;->e:Landroid/location/Location;

    .line 14
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/emr;->b(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    .line 1055
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/emr;->p:Lcom/google/android/gms/ads/query/AdInfo;

    if-eqz v3, :cond_3

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->i()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 2055
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/emr;->p:Lcom/google/android/gms/ads/query/AdInfo;

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/ads/query/AdInfo;->getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->i()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 3055
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/emr;->p:Lcom/google/android/gms/ads/query/AdInfo;

    .line 19
    invoke-virtual {v11}, Lcom/google/android/gms/ads/query/AdInfo;->getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v3, ""

    .line 20
    :goto_2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzvf;

    .line 4055
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/emr;->p:Lcom/google/android/gms/ads/query/AdInfo;

    .line 20
    invoke-virtual {v12}, Lcom/google/android/gms/ads/query/AdInfo;->getAdString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzvf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v11

    goto :goto_3

    :cond_3
    move-object/from16 v23, v4

    .line 5032
    :goto_3
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/emr;->f:Z

    .line 5041
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/emr;->i:Ljava/lang/String;

    .line 5043
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/emr;->k:Lcom/google/android/gms/ads/search/SearchAdRequest;

    if-eqz v3, :cond_4

    .line 24
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    move-object v14, v11

    goto :goto_4

    :cond_4
    move-object v14, v4

    .line 26
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yq;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_5

    :cond_5
    move-object/from16 v21, v4

    .line 5054
    :goto_5
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/emr;->o:Z

    move/from16 v22, v2

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v2

    .line 5148
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 6051
    iget v3, v0, Lcom/google/android/gms/internal/ads/emr;->l:I

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v4

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 6056
    iget v3, v0, Lcom/google/android/gms/internal/ads/emr;->q:I

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v4

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 p0, v11

    .line 6057
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/emr;->r:Ljava/lang/String;

    aput-object v11, v3, v4

    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 43
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/ejd;->a:Ljava/util/Comparator;

    .line 44
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/emr;->a()Ljava/util/List;

    move-result-object v26

    .line 46
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvq;

    move-object v3, v2

    const/16 v4, 0x8

    .line 7050
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/emr;->g:Landroid/os/Bundle;

    move-object/from16 v17, v11

    .line 7052
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/emr;->m:Landroid/os/Bundle;

    move-object/from16 v18, v11

    .line 48
    new-instance v11, Ljava/util/ArrayList;

    .line 7053
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/emr;->n:Ljava/util/Set;

    .line 49
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 8042
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/emr;->j:Ljava/lang/String;

    move-object/from16 v20, v4

    .line 8058
    iget v0, v0, Lcom/google/android/gms/internal/ads/emr;->s:I

    move/from16 v27, v0

    move-object/from16 v16, v1

    move/from16 v11, p0

    const/16 v4, 0x8

    .line 51
    invoke-direct/range {v3 .. v27}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    return-object v2
.end method
