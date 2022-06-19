.class public final Lcom/google/android/gms/internal/ads/fe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/ads;",
        ":",
        "Lcom/google/android/gms/internal/ads/adv;",
        ":",
        "Lcom/google/android/gms/internal/ads/adz;",
        ":",
        "Lcom/google/android/gms/internal/ads/aea;",
        ":",
        "Lcom/google/android/gms/internal/ads/aec;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/c;

.field private final b:Lcom/google/android/gms/internal/ads/ni;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fe;->a:Lcom/google/android/gms/ads/internal/c;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/ni;

    .line 4
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 18
    if-nez p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-object p2

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ctl;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "aclk_upms"

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 37
    :cond_0
    :goto_0
    return-object p0

    .line 35
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 36
    const-string/jumbo v2, "Error adding click uptime parameter to url: "

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final a(Z)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fe;->b:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ni;->a(Z)V

    .line 17
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6
    const-string/jumbo v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_2

    .line 8
    const-string/jumbo v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v0, 0x7

    .line 14
    :goto_0
    return v0

    .line 10
    :cond_0
    const-string/jumbo v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v0, 0x6

    goto :goto_0

    .line 12
    :cond_1
    const-string/jumbo v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj;->a()I

    move-result v0

    goto :goto_0

    .line 14
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/ads/ads;

    .line 39
    const-string/jumbo v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/tq;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string/jumbo v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "Action missing from an open GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fe;->a:Lcom/google/android/gms/ads/internal/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fe;->a:Lcom/google/android/gms/ads/internal/c;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fe;->a:Lcom/google/android/gms/ads/internal/c;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v1, "expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/ads/adv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adv;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string/jumbo v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/fe;->a(Z)V

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->b(Ljava/util/Map;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adz;->b(ZI)V

    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v1, "webapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/fe;->a(Z)V

    .line 56
    if-eqz v2, :cond_4

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->b(Ljava/util/Map;)I

    move-result v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/adz;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->a(Ljava/util/Map;)Z

    move-result v2

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fe;->b(Ljava/util/Map;)I

    move-result v3

    const-string/jumbo v0, "html"

    .line 61
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "baseurl"

    .line 62
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-interface {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/adz;->a(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_5
    const-string/jumbo v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v1, "true"

    const-string/jumbo v0, "system_browser"

    .line 65
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/fe;->a(Z)V

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    const-string/jumbo v0, "Destination url cannot be empty."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/fh;

    .line 72
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aea;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aea;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/fh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/view/View;)V

    .line 73
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/fh;->a(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/adz;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/fe;->a(Z)V

    .line 79
    const-string/jumbo v0, "intent_url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 82
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 86
    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 88
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 90
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aea;

    .line 91
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aea;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aec;

    .line 92
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aec;->getView()Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->f()Landroid/app/Activity;

    move-result-object v6

    .line 94
    invoke-static {v4, v5, v3, v0, v6}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    :cond_9
    if-eqz v1, :cond_b

    .line 98
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/adz;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    goto/16 :goto_0

    .line 84
    :catch_1
    move-exception v3

    .line 85
    const-string/jumbo v4, "Error parsing the url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 100
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aea;

    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aea;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aec;

    .line 104
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aec;->getView()Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ads;->f()Landroid/app/Activity;

    move-result-object v4

    .line 106
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/ads/adz;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/d;

    const-string/jumbo v1, "i"

    .line 110
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "m"

    .line 111
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "p"

    .line 112
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "c"

    .line 113
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "f"

    .line 114
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "e"

    .line 115
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/adz;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    goto/16 :goto_0
.end method
