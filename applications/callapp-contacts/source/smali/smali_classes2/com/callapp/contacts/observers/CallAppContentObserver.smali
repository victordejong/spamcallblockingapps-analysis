.class public abstract Lcom/callapp/contacts/observers/CallAppContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    .line 11
    iput-boolean v1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->c:Z

    .line 14
    new-instance v0, Lcom/callapp/contacts/observers/-$$Lambda$CallAppContentObserver$p8szfzDn9sJHralWAdgF7LcyvOE;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/observers/-$$Lambda$CallAppContentObserver$p8szfzDn9sJHralWAdgF7LcyvOE;-><init>(Lcom/callapp/contacts/observers/CallAppContentObserver;)V

    iput-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->d:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->c:Z

    .line 16
    invoke-virtual {p0}, Lcom/callapp/contacts/observers/CallAppContentObserver;->b()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

    .line 1074
    invoke-interface {v2}, Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;->onContentChanged()V

    goto :goto_0

    .line 1076
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$p8szfzDn9sJHralWAdgF7LcyvOE(Lcom/callapp/contacts/observers/CallAppContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/observers/CallAppContentObserver;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract b()Ljava/lang/Runnable;
.end method

.method public final b(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onChange(Z)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1051
    iget-boolean p1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->c:Z

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1054
    iget-object p1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 1055
    iput-boolean p1, p0, Lcom/callapp/contacts/observers/CallAppContentObserver;->c:Z

    :cond_0
    return-void
.end method
