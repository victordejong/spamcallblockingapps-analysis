.class public Lcom/google/firebase/abt/FirebaseABTesting;
.super Ljava/lang/Object;


# instance fields
.field private final zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzk:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzl:Ljava/lang/Integer;

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final zza(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 80
    iget-object v0, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzh()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzk:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public removeAllExperiments()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->zzg()V

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->zzh()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->zza(Ljava/util/Collection;)V

    return-void
.end method

.method public replaceAllExperiments(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->zzg()V

    if-eqz p1, :cond_c

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 12
    invoke-static {v1}, Lcom/google/firebase/abt/zza;->zza(Ljava/util/Map;)Lcom/google/firebase/abt/zza;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeAllExperiments()V

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/firebase/abt/zza;

    .line 20
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->zzh()Ljava/util/List;

    move-result-object v1

    .line 23
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 25
    iget-object v5, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 31
    iget-object v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 32
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/firebase/abt/FirebaseABTesting;->zza(Ljava/util/Collection;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    :cond_6
    :goto_4
    if-ge v4, v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/firebase/abt/zza;

    .line 41
    invoke-virtual {v5}, Lcom/google/firebase/abt/zza;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 42
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 47
    :cond_7
    new-instance v0, Ljava/util/ArrayDeque;

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->zzh()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 50
    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzl:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 51
    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzk:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzl:Ljava/lang/Integer;

    .line 52
    :cond_8
    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzl:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    if-ge v2, v3, :cond_b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/google/firebase/abt/zza;

    .line 55
    :goto_6
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v5

    if-lt v5, v1, :cond_9

    .line 56
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    iget-object v5, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/google/firebase/abt/FirebaseABTesting;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 58
    :cond_9
    new-instance v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    invoke-direct {v5}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;-><init>()V

    .line 59
    iget-object v6, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzk:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    .line 60
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zzd()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    .line 61
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zza()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zzb()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    .line 64
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_7

    .line 66
    :cond_a
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zzc()Ljava/lang/String;

    move-result-object v6

    :goto_7
    iput-object v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    .line 67
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zze()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    .line 68
    invoke-virtual {v4}, Lcom/google/firebase/abt/zza;->zzf()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    .line 72
    iget-object v4, p0, Lcom/google/firebase/abt/FirebaseABTesting;->zzj:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {v4, v5}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    .line 73
    invoke-interface {v0, v5}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    return-void

    .line 8
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The replacementExperiments list is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
