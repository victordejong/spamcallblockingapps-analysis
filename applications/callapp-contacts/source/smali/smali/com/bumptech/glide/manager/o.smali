.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/o$a;
    }
.end annotation


# static fields
.field private static final j:Lcom/bumptech/glide/manager/o$a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/r;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/bumptech/glide/k;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/bumptech/glide/manager/o$a;

.field private final f:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Bundle;

.field private final i:Lcom/bumptech/glide/manager/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 519
    new-instance v0, Lcom/bumptech/glide/manager/o$1;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/o$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/o;->j:Lcom/bumptech/glide/manager/o$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/o$a;Lcom/bumptech/glide/f;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->a:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->b:Ljava/util/Map;

    .line 70
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->f:Landroidx/b/a;

    .line 71
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->g:Landroidx/b/a;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/o;->j:Lcom/bumptech/glide/manager/o$a;

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o$a;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->d:Landroid/os/Handler;

    .line 1087
    sget-boolean p1, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 1091
    :cond_1
    const-class p1, Lcom/bumptech/glide/d$c;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1092
    new-instance p1, Lcom/bumptech/glide/manager/i;

    invoke-direct {p1}, Lcom/bumptech/glide/manager/i;-><init>()V

    goto :goto_2

    .line 1093
    :cond_2
    new-instance p1, Lcom/bumptech/glide/manager/j;

    invoke-direct {p1}, Lcom/bumptech/glide/manager/j;-><init>()V

    goto :goto_2

    .line 1089
    :cond_3
    :goto_1
    new-instance p1, Lcom/bumptech/glide/manager/g;

    invoke-direct {p1}, Lcom/bumptech/glide/manager/g;-><init>()V

    .line 83
    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->i:Lcom/bumptech/glide/manager/k;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Z)Lcom/bumptech/glide/k;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 409
    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/manager/o;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object p2

    .line 2074
    iget-object v0, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/k;

    if-nez v0, :cond_1

    .line 413
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o$a;

    .line 3068
    iget-object v2, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    .line 3080
    iget-object v3, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/p;

    .line 415
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/o$a;->a(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->a()V

    .line 4063
    :cond_0
    iput-object v0, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/k;

    :cond_1
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/k;
    .locals 4

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, p2, v0}, Lcom/bumptech/glide/manager/o;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/manager/r;

    move-result-object p2

    .line 5065
    iget-object v0, p2, Lcom/bumptech/glide/manager/r;->c:Lcom/bumptech/glide/k;

    if-nez v0, :cond_1

    .line 468
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o$a;

    .line 6059
    iget-object v2, p2, Lcom/bumptech/glide/manager/r;->a:Lcom/bumptech/glide/manager/a;

    .line 6074
    iget-object v3, p2, Lcom/bumptech/glide/manager/r;->b:Lcom/bumptech/glide/manager/p;

    .line 470
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/o$a;->a(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->a()V

    .line 7054
    :cond_0
    iput-object v0, p2, Lcom/bumptech/glide/manager/r;->c:Lcom/bumptech/glide/k;

    :cond_1
    return-object v0
.end method

.method private a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;
    .locals 2

    .line 145
    invoke-static {}, Lcom/bumptech/glide/g/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/o;->a(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/o;->c(Landroid/app/Activity;)V

    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 151
    invoke-static {p1}, Lcom/bumptech/glide/manager/o;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/o;->a(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 2

    const-string p2, "com.bumptech.glide.manager"

    .line 387
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    const/4 v1, 0x0

    .line 392
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Landroid/app/Fragment;)V

    .line 393
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 395
    iget-object p2, p0, Lcom/bumptech/glide/manager/o;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method private b(Landroid/app/Activity;)Lcom/bumptech/glide/k;
    .locals 2

    .line 178
    invoke-static {}, Lcom/bumptech/glide/g/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/o;->a(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 181
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/o;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 183
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/manager/o;->c(Landroid/app/Activity;)V

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 186
    invoke-static {p1}, Lcom/bumptech/glide/manager/o;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/o;->a(Landroid/content/Context;Landroid/app/FragmentManager;Z)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Lcom/bumptech/glide/k;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/k;

    if-nez v0, :cond_1

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/k;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o$a;

    new-instance v2, Lcom/bumptech/glide/manager/b;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/b;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/h;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/h;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 110
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/o$a;->a(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/k;

    .line 116
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 119
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/k;

    return-object p1
.end method

.method private static c(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 336
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 337
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 338
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 339
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 2

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 0

    .line 436
    invoke-static {p0}, Lcom/bumptech/glide/manager/o;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/bumptech/glide/k;
    .locals 2

    :goto_0
    if-eqz p1, :cond_3

    .line 126
    invoke-static {}, Lcom/bumptech/glide/g/k;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 127
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/o;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 130
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/o;->b(Landroid/app/Activity;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 135
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/o;->b(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Landroid/app/Activity;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/manager/o;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/manager/r;
    .locals 2

    const-string p2, "com.bumptech.glide.manager"

    .line 444
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/r;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/r;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/bumptech/glide/manager/r;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/r;-><init>()V

    const/4 v1, 0x0

    .line 4113
    iput-object v1, v0, Lcom/bumptech/glide/manager/r;->d:Landroidx/fragment/app/Fragment;

    .line 450
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/s;->c()I

    .line 452
    iget-object p2, p0, Lcom/bumptech/glide/manager/o;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    .line 495
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentManager;

    .line 497
    iget-object p1, p0, Lcom/bumptech/glide/manager/o;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 490
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 492
    iget-object p1, p0, Lcom/bumptech/glide/manager/o;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 503
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method
