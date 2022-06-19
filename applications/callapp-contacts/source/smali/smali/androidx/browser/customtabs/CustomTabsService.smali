.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field final a:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    .line 168
    new-instance v0, Landroidx/browser/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$1;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->b:Landroid/support/a/b$a;

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected final a(Landroidx/browser/customtabs/g;)Z
    .locals 3

    const/4 v0, 0x0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :try_start_1
    iget-object v2, p1, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p1, p1, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {p1}, Landroid/support/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 291
    monitor-exit v1

    return v0

    .line 292
    :cond_1
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    invoke-virtual {v2, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 293
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 294
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    invoke-virtual {v2, p1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method protected abstract d()Landroid/os/Bundle;
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()I
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()Z
.end method
