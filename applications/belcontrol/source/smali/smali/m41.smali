.class public Lm41;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm41$b;
    }
.end annotation


# static fields
.field public static f:Lm41;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Z

.field public d:Z

.field public e:Lm41$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm41;

    invoke-direct {v0}, Lm41;-><init>()V

    sput-object v0, Lm41;->f:Lm41;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lm41;
    .locals 1

    sget-object v0, Lm41;->f:Lm41;

    return-object v0
.end method

.method public static synthetic d(Lm41;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lm41;->e(Z)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm41;->a:Landroid/content/Context;

    return-void
.end method

.method public c(Lm41$b;)V
    .locals 0

    iput-object p1, p0, Lm41;->e:Lm41$b;

    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-boolean v0, p0, Lm41;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lm41;->d:Z

    iget-boolean p1, p0, Lm41;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm41;->k()V

    iget-object p1, p0, Lm41;->e:Lm41$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm41;->h()Z

    move-result v0

    invoke-interface {p1, v0}, Lm41$b;->b(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lm41;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm41;->c:Z

    invoke-virtual {p0}, Lm41;->k()V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lm41;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm41;->c:Z

    iput-boolean v0, p0, Lm41;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lm41;->e:Lm41$b;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lm41;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 3

    new-instance v0, Lm41$a;

    invoke-direct {v0, p0}, Lm41$a;-><init>(Lm41;)V

    iput-object v0, p0, Lm41;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lm41;->a:Landroid/content/Context;

    iget-object v2, p0, Lm41;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lm41;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lm41;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm41;->b:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Lm41;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object v1

    invoke-virtual {v1}, Ll41;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf41;

    invoke-virtual {v2}, Lf41;->t()Lf51;

    move-result-object v2

    invoke-virtual {v2, v0}, Lf51;->m(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
