.class public final Lcom/iab/omid/library/mopub/adsession/k;
.super Lcom/iab/omid/library/mopub/adsession/b;


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mopub/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/iab/omid/library/mopub/f/a;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field private final j:Lcom/iab/omid/library/mopub/adsession/c;

.field private k:Lcom/iab/omid/library/mopub/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/mopub/adsession/k;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mopub/adsession/c;)V
    .locals 3

    invoke-direct {p0}, Lcom/iab/omid/library/mopub/adsession/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    iput-object p1, p0, Lcom/iab/omid/library/mopub/adsession/k;->a:Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

    iput-object p2, p0, Lcom/iab/omid/library/mopub/adsession/k;->j:Lcom/iab/omid/library/mopub/adsession/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iab/omid/library/mopub/adsession/k;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iab/omid/library/mopub/adsession/k;->c(Landroid/view/View;)V

    .line 1000
    iget-object v1, p2, Lcom/iab/omid/library/mopub/adsession/c;->h:Lcom/iab/omid/library/mopub/adsession/d;

    sget-object v2, Lcom/iab/omid/library/mopub/adsession/d;->HTML:Lcom/iab/omid/library/mopub/adsession/d;

    if-eq v1, v2, :cond_1

    .line 2000
    iget-object v1, p2, Lcom/iab/omid/library/mopub/adsession/c;->h:Lcom/iab/omid/library/mopub/adsession/d;

    sget-object v2, Lcom/iab/omid/library/mopub/adsession/d;->JAVASCRIPT:Lcom/iab/omid/library/mopub/adsession/d;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3000
    :cond_0
    new-instance v1, Lcom/iab/omid/library/mopub/f/c;

    .line 4000
    iget-object v2, p2, Lcom/iab/omid/library/mopub/adsession/c;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 5000
    iget-object p2, p2, Lcom/iab/omid/library/mopub/adsession/c;->e:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/iab/omid/library/mopub/f/c;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    goto :goto_1

    .line 2000
    :cond_1
    :goto_0
    new-instance v1, Lcom/iab/omid/library/mopub/f/b;

    .line 3000
    iget-object p2, p2, Lcom/iab/omid/library/mopub/adsession/c;->b:Landroid/webkit/WebView;

    invoke-direct {v1, p2}, Lcom/iab/omid/library/mopub/f/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 5000
    :goto_1
    iget-object p2, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/mopub/f/a;->a()V

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object p2

    .line 6000
    iget-object p2, p2, Lcom/iab/omid/library/mopub/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 7000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "init"

    .line 8000
    invoke-virtual {v1, p2, p1, v2}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/view/View;)Lcom/iab/omid/library/mopub/b/c;
    .locals 3

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/mopub/b/c;

    .line 34000
    iget-object v2, v1, Lcom/iab/omid/library/mopub/b/c;->a:Lcom/iab/omid/library/mopub/e/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/mopub/e/a;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/mopub/e/a;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/mopub/e/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->k:Lcom/iab/omid/library/mopub/e/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v1

    .line 9000
    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/b/a;->b()Z

    move-result v2

    iget-object v1, v1, Lcom/iab/omid/library/mopub/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object v1

    .line 10000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/b;->a()Lcom/iab/omid/library/mopub/b/b;

    move-result-object v2

    .line 11000
    iput-object v1, v2, Lcom/iab/omid/library/mopub/b/b;->e:Lcom/iab/omid/library/mopub/b/b$a;

    .line 10000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/b;->a()Lcom/iab/omid/library/mopub/b/b;

    move-result-object v2

    .line 13000
    new-instance v3, Lcom/iab/omid/library/mopub/b/b$1;

    invoke-direct {v3, v2}, Lcom/iab/omid/library/mopub/b/b$1;-><init>(Lcom/iab/omid/library/mopub/b/b;)V

    iput-object v3, v2, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/iab/omid/library/mopub/b/b;->a:Landroid/content/Context;

    iget-object v5, v2, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12000
    iput-boolean v0, v2, Lcom/iab/omid/library/mopub/b/b;->c:Z

    invoke-virtual {v2}, Lcom/iab/omid/library/mopub/b/b;->c()V

    .line 10000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/b;->a()Lcom/iab/omid/library/mopub/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iab/omid/library/mopub/b/b;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->a()Lcom/iab/omid/library/mopub/g/a;

    .line 14000
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->b()V

    .line 10000
    :cond_1
    iget-object v1, v1, Lcom/iab/omid/library/mopub/b/f;->b:Lcom/iab/omid/library/mopub/a/d;

    .line 15000
    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/a/d;->a()F

    move-result v2

    iput v2, v1, Lcom/iab/omid/library/mopub/a/d;->b:F

    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/a/d;->b()V

    iget-object v2, v1, Lcom/iab/omid/library/mopub/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object v0

    .line 16000
    iget v0, v0, Lcom/iab/omid/library/mopub/b/f;->a:F

    iget-object v1, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(F)V

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    iget-object v1, p0, Lcom/iab/omid/library/mopub/adsession/k;->j:Lcom/iab/omid/library/mopub/adsession/c;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/mopub/f/a;->a(Lcom/iab/omid/library/mopub/adsession/k;Lcom/iab/omid/library/mopub/adsession/c;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/adsession/k;->d()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mopub/adsession/k;->c(Landroid/view/View;)V

    .line 17000
    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/f/a;->d()V

    .line 18000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18000
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/mopub/adsession/k;

    if-eq v1, p0, :cond_2

    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/adsession/k;->d()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, v1, Lcom/iab/omid/library/mopub/adsession/k;->k:Lcom/iab/omid/library/mopub/e/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/e/a;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/mopub/adsession/f;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 33000
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/k;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mopub/adsession/k;->b(Landroid/view/View;)Lcom/iab/omid/library/mopub/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->b:Ljava/util/List;

    new-instance v1, Lcom/iab/omid/library/mopub/b/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/iab/omid/library/mopub/b/c;-><init>(Landroid/view/View;Lcom/iab/omid/library/mopub/adsession/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction has improperly formatted detailed reason"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32000
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->k:Lcom/iab/omid/library/mopub/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/e/a;->clear()V

    .line 20000
    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    .line 21000
    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 22000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "finishSession"

    .line 23000
    invoke-virtual {v1, v0, v4, v3}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v0

    .line 24000
    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/b/a;->b()Z

    move-result v1

    iget-object v3, v0, Lcom/iab/omid/library/mopub/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/iab/omid/library/mopub/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object v0

    .line 25000
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->a()Lcom/iab/omid/library/mopub/g/a;

    move-result-object v1

    .line 27000
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->c()V

    .line 26000
    iget-object v4, v1, Lcom/iab/omid/library/mopub/g/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/iab/omid/library/mopub/g/a;->a:Landroid/os/Handler;

    new-instance v5, Lcom/iab/omid/library/mopub/g/a$1;

    invoke-direct {v5, v1}, Lcom/iab/omid/library/mopub/g/a$1;-><init>(Lcom/iab/omid/library/mopub/g/a;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/b;->a()Lcom/iab/omid/library/mopub/b/b;

    move-result-object v1

    .line 29000
    iget-object v4, v1, Lcom/iab/omid/library/mopub/b/b;->a:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/iab/omid/library/mopub/b/b;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, v1, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/BroadcastReceiver;

    .line 28000
    :cond_2
    iput-boolean v2, v1, Lcom/iab/omid/library/mopub/b/b;->c:Z

    iput-boolean v2, v1, Lcom/iab/omid/library/mopub/b/b;->d:Z

    iput-object v3, v1, Lcom/iab/omid/library/mopub/b/b;->e:Lcom/iab/omid/library/mopub/b/b$a;

    .line 25000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/b/f;->b:Lcom/iab/omid/library/mopub/a/d;

    .line 30000
    iget-object v1, v0, Lcom/iab/omid/library/mopub/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 31000
    :cond_3
    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/f/a;->b()V

    iput-object v3, p0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->k:Lcom/iab/omid/library/mopub/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/e/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
