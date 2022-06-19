.class public Lcom/callapp/contacts/observers/OneShotContentContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;Z)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->a:Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

    .line 16
    iput-boolean p2, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/observers/OneShotContentContentObserver;)Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->a:Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

    return-object p0
.end method

.method public static a(Landroid/net/Uri;Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)Lcom/callapp/contacts/observers/OneShotContentContentObserver;
    .locals 2

    .line 20
    new-instance v0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/observers/OneShotContentContentObserver;-><init>(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;Z)V

    .line 21
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 28
    iget-object p1, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->a:Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

    if-eqz p1, :cond_1

    .line 29
    new-instance p1, Lcom/callapp/contacts/observers/OneShotContentContentObserver$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/observers/OneShotContentContentObserver$1;-><init>(Lcom/callapp/contacts/observers/OneShotContentContentObserver;)V

    .line 37
    iget-boolean v0, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/task/Task;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1049
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
