.class public final Lcom/facebook/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/l$b;,
        Lcom/facebook/internal/l$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/internal/FeatureManager;",
        "",
        "()V",
        "FEATURE_MANAGER_STORE",
        "",
        "featureMapping",
        "",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        "",
        "checkFeature",
        "",
        "feature",
        "callback",
        "Lcom/facebook/internal/FeatureManager$Callback;",
        "defaultStatus",
        "",
        "disableFeature",
        "getFeature",
        "className",
        "getGKStatus",
        "initializeFeatureMapping",
        "isEnabled",
        "Callback",
        "Feature",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/l;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/l$b;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0}, Lcom/facebook/internal/l;-><init>()V

    sput-object v0, Lcom/facebook/internal/l;->a:Lcom/facebook/internal/l;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/internal/l;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/facebook/internal/l$b;
    .locals 7

    const-string v0, "className"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/facebook/internal/l;->a:Lcom/facebook/internal/l;

    invoke-direct {v0}, Lcom/facebook/internal/l;->a()V

    .line 81
    sget-object v0, Lcom/facebook/internal/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/l$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 82
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 1405
    invoke-static {p0, v6, v4}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    :cond_2
    sget-object p0, Lcom/facebook/internal/l$b;->Unknown:Lcom/facebook/internal/l$b;

    return-object p0
.end method

.method private final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    sget-object v0, Lcom/facebook/internal/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/internal/l$b;->AAM:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.aam."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/facebook/internal/l$b;->CodelessEvents:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.codeless."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/facebook/internal/l$b;->ErrorReport:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.internal.instrument.errorreport."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/facebook/internal/l$b;->PrivacyProtection:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.ml."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/facebook/internal/l$b;->SuggestedEvents:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.suggestedevents."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/facebook/internal/l$b;->RestrictiveDataFiltering:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"

    .line 102
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/facebook/internal/l$b;->IntelligentIntegrity:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.integrity.IntegrityManager"

    .line 104
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/facebook/internal/l$b;->EventDeactivation:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.eventdeactivation."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/facebook/internal/l$b;->OnDeviceEventProcessing:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.ondeviceprocessing."

    .line 107
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/facebook/internal/l$b;->IapLogging:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.appevents.iap."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/facebook/internal/l$b;->Monitoring:Lcom/facebook/internal/l$b;

    const-string v2, "com.facebook.internal.logging.monitor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/facebook/internal/l$c;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/l$c;-><init>(Lcom/facebook/internal/l$a;Lcom/facebook/internal/l$b;)V

    check-cast v0, Lcom/facebook/internal/o$a;

    .line 38
    invoke-static {v0}, Lcom/facebook/internal/o;->a(Lcom/facebook/internal/o$a;)V

    return-void
.end method

.method public static final a(Lcom/facebook/internal/l$b;)Z
    .locals 5

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/facebook/internal/l$b;->Unknown:Lcom/facebook/internal/l$b;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return v1

    .line 51
    :cond_0
    sget-object v0, Lcom/facebook/internal/l$b;->Core:Lcom/facebook/internal/l$b;

    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    return v2

    .line 55
    :cond_1
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.facebook.internal.FEATURE_MANAGER"

    .line 56
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/facebook/internal/l$b;->toKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/facebook/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/internal/l$b;->getParent()Lcom/facebook/internal/l$b;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 63
    invoke-static {p0}, Lcom/facebook/internal/l;->c(Lcom/facebook/internal/l$b;)Z

    move-result p0

    return p0

    .line 65
    :cond_3
    invoke-static {v0}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/facebook/internal/l;->c(Lcom/facebook/internal/l$b;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static final b(Lcom/facebook/internal/l$b;)V
    .locals 3

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.FEATURE_MANAGER"

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/internal/l$b;->toKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/facebook/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static c(Lcom/facebook/internal/l$b;)Z
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/facebook/internal/l;->d(Lcom/facebook/internal/l$b;)Z

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/facebook/internal/l$b;->toKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/facebook/internal/l$b;)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/facebook/internal/n;->a:[I

    invoke-virtual {p0}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
