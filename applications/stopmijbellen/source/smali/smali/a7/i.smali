.class public La7/i;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/regex/Pattern;


# instance fields
.field public final a:La7/b;

.field public final b:La7/a;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc7/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lf7/a;

.field public e:Lg7/a;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La7/i;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(La7/a;La7/b;)V
    .locals 6

    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La7/i;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/i;->f:Z

    iput-boolean v0, p0, La7/i;->g:Z

    iput-object p1, p0, La7/i;->b:La7/a;

    iput-object p2, p0, La7/i;->a:La7/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La7/i;->h:Ljava/lang/String;

    .line 1
    new-instance v1, Lf7/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lf7/a;-><init>(Landroid/view/View;)V

    iput-object v1, p0, La7/i;->d:Lf7/a;

    .line 2
    iget-object v1, p2, La7/b;->h:La7/c;

    .line 3
    sget-object v2, La7/c;->b:La7/c;

    if-eq v1, v2, :cond_1

    sget-object v2, La7/c;->d:La7/c;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg7/c;

    .line 4
    iget-object v2, p2, La7/b;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 5
    iget-object p2, p2, La7/b;->e:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, p2}, Lg7/c;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lg7/b;

    .line 7
    iget-object p2, p2, La7/b;->b:Landroid/webkit/WebView;

    .line 8
    invoke-direct {v1, p2}, Lg7/b;-><init>(Landroid/webkit/WebView;)V

    :goto_1
    iput-object v1, p0, La7/i;->e:Lg7/a;

    invoke-virtual {v1}, Lg7/a;->a()V

    .line 9
    sget-object p2, Lc7/a;->c:Lc7/a;

    .line 10
    iget-object p2, p2, Lc7/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, La7/i;->e:Lg7/a;

    .line 12
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {p2}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object p2

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, La7/a;->a:La7/g;

    const-string v4, "impressionOwner"

    sget-object v5, Le7/a;->a:Landroid/view/WindowManager;

    .line 14
    :try_start_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    iget-object v3, p1, La7/a;->b:La7/g;

    const-string v4, "mediaEventsOwner"

    .line 16
    :try_start_1
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :catch_1
    iget-object v3, p1, La7/a;->d:La7/d;

    const-string v4, "creativeType"

    .line 18
    :try_start_2
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    :catch_2
    iget-object v3, p1, La7/a;->e:La7/f;

    const-string v4, "impressionType"

    .line 20
    :try_start_3
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 21
    :catch_3
    iget-boolean p1, p1, La7/a;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "isolateVerificationScripts"

    .line 22
    :try_start_4
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const-string v0, "init"

    .line 23
    invoke-virtual {v1, p2, v0, p1}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public J(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, La7/i;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, La7/i;->N()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 1
    :cond_1
    new-instance v0, Lf7/a;

    invoke-direct {v0, p1}, Lf7/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, La7/i;->d:Lf7/a;

    .line 2
    iget-object v0, p0, La7/i;->e:Lg7/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 5
    iput-wide v1, v0, Lg7/a;->e:J

    const/4 v1, 0x1

    iput v1, v0, Lg7/a;->d:I

    .line 6
    sget-object v0, Lc7/a;->c:Lc7/a;

    .line 7
    invoke-virtual {v0}, Lc7/a;->a()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

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

    check-cast v1, La7/i;

    if-eq v1, p0, :cond_2

    invoke-virtual {v1}, La7/i;->N()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, v1, La7/i;->d:Lf7/a;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public K(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, La7/i;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, La7/i;->M(Landroid/view/View;)Lc7/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, La7/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public L()V
    .locals 8

    iget-boolean v0, p0, La7/i;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La7/i;->f:Z

    .line 1
    sget-object v1, Lc7/a;->c:Lc7/a;

    .line 2
    invoke-virtual {v1}, Lc7/a;->c()Z

    move-result v2

    iget-object v1, v1, Lc7/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_5

    invoke-static {}, Lc7/e;->a()Lc7/e;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Lc7/a;->c:Lc7/a;

    .line 4
    invoke-virtual {v2}, Lc7/a;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La7/i;

    .line 5
    iget-object v3, v3, La7/i;->e:Lg7/a;

    .line 6
    iget-object v4, v3, Lg7/a;->a:Lf7/b;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 7
    sget-object v4, Ly/d;->a:Ly/d;

    invoke-virtual {v3}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "foregrounded"

    aput-object v7, v6, v5

    const-string v5, "setState"

    .line 8
    invoke-virtual {v4, v3, v5, v6}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v2, Lh7/a;->g:Lh7/a;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lh7/a;->i:Landroid/os/Handler;

    if-nez v2, :cond_4

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lh7/a;->i:Landroid/os/Handler;

    sget-object v3, Lh7/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lh7/a;->i:Landroid/os/Handler;

    sget-object v3, Lh7/a;->k:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_4
    iget-object v1, v1, Lc7/e;->d:Lz6/b;

    .line 13
    invoke-virtual {v1}, Lz6/b;->a()F

    move-result v2

    iput v2, v1, Lz6/b;->e:F

    invoke-virtual {v1}, Lz6/b;->b()V

    iget-object v2, v1, Lz6/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14
    :cond_5
    invoke-static {}, Lc7/e;->a()Lc7/e;

    move-result-object v0

    .line 15
    iget v0, v0, Lc7/e;->a:F

    .line 16
    iget-object v1, p0, La7/i;->e:Lg7/a;

    invoke-virtual {v1, v0}, Lg7/a;->b(F)V

    iget-object v0, p0, La7/i;->e:Lg7/a;

    iget-object v1, p0, La7/i;->a:La7/b;

    invoke-virtual {v0, p0, v1}, Lg7/a;->c(La7/i;La7/b;)V

    return-void
.end method

.method public final M(Landroid/view/View;)Lc7/b;
    .locals 3

    iget-object v0, p0, La7/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/b;

    .line 1
    iget-object v2, v1, Lc7/b;->a:Lf7/a;

    .line 2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public N()Landroid/view/View;
    .locals 1

    iget-object v0, p0, La7/i;->d:Lf7/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, La7/i;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La7/i;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    .locals 2

    iget-boolean p3, p0, La7/i;->g:Z

    if-eqz p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, La7/i;->M(Landroid/view/View;)Lc7/b;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, La7/i;->c:Ljava/util/List;

    new-instance v0, Lc7/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lc7/b;-><init>(Landroid/view/View;La7/e;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public q()V
    .locals 5

    iget-boolean v0, p0, La7/i;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La7/i;->d:Lf7/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1
    iget-boolean v0, p0, La7/i;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La7/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La7/i;->g:Z

    .line 3
    iget-object v0, p0, La7/i;->e:Lg7/a;

    .line 4
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "finishSession"

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lc7/a;->c:Lc7/a;

    .line 7
    invoke-virtual {v0}, Lc7/a;->c()Z

    move-result v1

    iget-object v2, v0, Lc7/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lc7/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lc7/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lc7/e;->a()Lc7/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lh7/a;->g:Lh7/a;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v3, Lh7/a;->i:Landroid/os/Handler;

    if-eqz v3, :cond_2

    sget-object v4, Lh7/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v2, Lh7/a;->i:Landroid/os/Handler;

    .line 11
    :cond_2
    iget-object v3, v1, Lh7/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lh7/a;->h:Landroid/os/Handler;

    new-instance v4, Lh7/b;

    invoke-direct {v4, v1}, Lh7/b;-><init>(Lh7/a;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, v0, Lc7/e;->d:Lz6/b;

    .line 13
    iget-object v1, v0, Lz6/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    :cond_3
    iget-object v0, p0, La7/i;->e:Lg7/a;

    .line 15
    invoke-virtual {v0}, Lg7/a;->e()V

    iput-object v2, p0, La7/i;->e:Lg7/a;

    return-void
.end method
