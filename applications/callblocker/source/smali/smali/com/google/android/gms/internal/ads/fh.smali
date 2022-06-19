.class public final Lcom/google/android/gms/internal/ads/fh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ctl;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fh;->b:Lcom/google/android/gms/internal/ads/ctl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fh;->c:Landroid/view/View;

    .line 5
    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private final a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    move-object v0, v1

    .line 35
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const/high16 v2, 0x10000

    .line 19
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 20
    const/high16 v2, 0x10000

    .line 21
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 22
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 23
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 24
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 25
    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 30
    :goto_2
    :try_start_1
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 33
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v3, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent"

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 32
    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Landroid/content/Intent;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 41
    const-string/jumbo v1, "u"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v3

    .line 44
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fh;->b:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fh;->c:Landroid/view/View;

    invoke-static {v2, v5, v1, v6, v3}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 47
    const-string/jumbo v1, "use_first_package"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 48
    const-string/jumbo v1, "use_running_process"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 49
    const-string/jumbo v1, "use_custom_tabs"

    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->bU:Lcom/google/android/gms/internal/ads/ect;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    move v2, v1

    .line 54
    :goto_1
    const-string/jumbo v1, "http"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "https"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    .line 58
    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 60
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 61
    if-eqz v2, :cond_4

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_7

    .line 66
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 52
    goto :goto_1

    .line 56
    :cond_6
    const-string/jumbo v1, "https"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "http"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    .line 67
    :cond_7
    if-eqz v3, :cond_8

    .line 68
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_8

    .line 71
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 73
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 74
    if-nez v2, :cond_0

    .line 76
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    move-object v3, v5

    .line 77
    goto/16 :goto_0

    .line 78
    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 81
    if-eqz v8, :cond_c

    move-object v0, v1

    .line 82
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v3, 0x1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 83
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 84
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 85
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    move v3, v6

    .line 87
    goto :goto_3

    .line 88
    :cond_c
    if-eqz v7, :cond_d

    .line 89
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/fh;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    move-object v3, v5

    .line 90
    goto/16 :goto_0
.end method
