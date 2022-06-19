.class Lio/fabric/sdk/android/l;
.super Lio/fabric/sdk/android/h;
.source "Onboarding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/network/d;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/pm/PackageInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/j;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/h;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 62
    new-instance v0, Lio/fabric/sdk/android/services/network/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/l;->a:Lio/fabric/sdk/android/services/network/d;

    .line 63
    iput-object p1, p0, Lio/fabric/sdk/android/l;->j:Ljava/util/concurrent/Future;

    .line 64
    iput-object p2, p0, Lio/fabric/sdk/android/l;->k:Ljava/util/Collection;

    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/e/d;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/e/n;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/j;",
            ">;)",
            "Lio/fabric/sdk/android/services/e/d;"
        }
    .end annotation

    move-object v0, p0

    .line 208
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    new-instance v2, Lio/fabric/sdk/android/services/b/g;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/b/g;-><init>()V

    invoke-virtual {v2, v1}, Lio/fabric/sdk/android/services/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 212
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    iget-object v1, v0, Lio/fabric/sdk/android/l;->g:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/l;->a()I

    move-result v10

    .line 214
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getIdManager()Lio/fabric/sdk/android/services/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/p;->c()Ljava/lang/String;

    move-result-object v5

    .line 216
    new-instance v1, Lio/fabric/sdk/android/services/e/d;

    iget-object v6, v0, Lio/fabric/sdk/android/l;->f:Ljava/lang/String;

    iget-object v7, v0, Lio/fabric/sdk/android/l;->e:Ljava/lang/String;

    iget-object v9, v0, Lio/fabric/sdk/android/l;->h:Ljava/lang/String;

    iget-object v11, v0, Lio/fabric/sdk/android/l;->i:Ljava/lang/String;

    const-string v12, "0"

    move-object v3, v1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lio/fabric/sdk/android/services/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)V

    return-object v1
.end method

.method private a(Lio/fabric/sdk/android/services/e/e;Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/e/e;",
            "Lio/fabric/sdk/android/services/e/n;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/j;",
            ">;)Z"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/l;->a(Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/e/d;

    move-result-object p2

    .line 203
    new-instance p3, Lio/fabric/sdk/android/services/e/y;

    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lio/fabric/sdk/android/services/e/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/l;->a:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {p3, p0, v0, p1, v1}, Lio/fabric/sdk/android/services/e/y;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 204
    invoke-virtual {p3, p2}, Lio/fabric/sdk/android/services/e/y;->a(Lio/fabric/sdk/android/services/e/d;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/e/e;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/j;",
            ">;)Z"
        }
    .end annotation

    .line 155
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/e;->b:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Fabric"

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/l;->b(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object p1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/e/q;->d()Z

    move-result p1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Failed to create app with Crashlytics service."

    invoke-interface {p1, v1, p3, p2}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p2, Lio/fabric/sdk/android/services/e/e;->b:Ljava/lang/String;

    const-string v2, "configured"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object p1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/e/q;->d()Z

    move-result p1

    goto :goto_0

    .line 170
    :cond_2
    iget-boolean v0, p2, Lio/fabric/sdk/android/services/e/e;->f:Z

    if-eqz v0, :cond_3

    .line 173
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Server says an update is required - forcing a full App update."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/l;->c(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/e/e;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/j;",
            ">;)Z"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/e/n;->a(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/e/n;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lio/fabric/sdk/android/l;->a(Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/e/d;

    move-result-object p1

    .line 185
    new-instance p3, Lio/fabric/sdk/android/services/e/h;

    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lio/fabric/sdk/android/services/e/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/l;->a:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {p3, p0, v0, p2, v1}, Lio/fabric/sdk/android/services/e/h;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 186
    invoke-virtual {p3, p1}, Lio/fabric/sdk/android/services/e/h;->a(Lio/fabric/sdk/android/services/e/d;)Z

    move-result p1

    return p1
.end method

.method private c()Lio/fabric/sdk/android/services/e/t;
    .locals 7

    .line 123
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/l;->idManager:Lio/fabric/sdk/android/services/b/p;

    iget-object v3, p0, Lio/fabric/sdk/android/l;->a:Lio/fabric/sdk/android/services/network/d;

    iget-object v4, p0, Lio/fabric/sdk/android/l;->e:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/l;->f:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->b()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 124
    invoke-virtual/range {v0 .. v6}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/b/p;Lio/fabric/sdk/android/services/network/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->c()Z

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->b()Lio/fabric/sdk/android/services/e/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private c(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/e/e;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/j;",
            ">;)Z"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/e/n;->a(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/e/n;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lio/fabric/sdk/android/l;->a(Lio/fabric/sdk/android/services/e/e;Lio/fabric/sdk/android/services/e/n;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-direct {p0}, Lio/fabric/sdk/android/l;->c()Lio/fabric/sdk/android/services/e/t;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/l;->j:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lio/fabric/sdk/android/l;->j:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    :goto_0
    iget-object v3, p0, Lio/fabric/sdk/android/l;->k:Ljava/util/Collection;

    invoke-virtual {p0, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 112
    iget-object v1, v1, Lio/fabric/sdk/android/services/e/t;->a:Lio/fabric/sdk/android/services/e/e;

    .line 113
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 112
    invoke-direct {p0, v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Lio/fabric/sdk/android/services/e/e;Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error performing auto configuration."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    .line 118
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/j;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/h;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/j;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 138
    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/fabric/sdk/android/j;

    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v4, "binary"

    invoke-direct {v2, v3, v0, v4}, Lio/fabric/sdk/android/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method b()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.3.25"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 5

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getIdManager()Lio/fabric/sdk/android/services/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/p;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->g:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->b:Landroid/content/pm/PackageManager;

    .line 77
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->c:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lio/fabric/sdk/android/l;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/fabric/sdk/android/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->d:Landroid/content/pm/PackageInfo;

    .line 79
    iget-object v1, p0, Lio/fabric/sdk/android/l;->d:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->e:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lio/fabric/sdk/android/l;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/fabric/sdk/android/l;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lio/fabric/sdk/android/l;->f:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lio/fabric/sdk/android/l;->b:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->h:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lio/fabric/sdk/android/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/l;->i:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 90
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
