.class public Lcom/callapp/contacts/util/ReturnToAppTasker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Intent;

.field private d:J

.field private e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/PopupDoneListener;I)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ReturnToAppTasker$1;-><init>(Lcom/callapp/contacts/util/ReturnToAppTasker;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->g:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->c:Landroid/content/Intent;

    const-string v0, "EXTRA_BRING_TO_FRONT_RETRY"

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->c:Landroid/content/Intent;

    const-string v0, "DONT_CLEAR_POPUP_ACTION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    iput-object p2, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    .line 52
    iput p3, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->f:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ReturnToAppTasker;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/callapp/contacts/util/ReturnToAppTasker;)Z
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->getCurrentCondition()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/ReturnToAppTasker;)Landroid/content/Intent;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->c:Landroid/content/Intent;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->d:J

    .line 81
    const-class v0, Lcom/callapp/contacts/util/ReturnToAppTasker;

    const-string v1, "ReturnToAppTasker started"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/util/ReturnToAppTasker;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/ReturnToAppTasker;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-object v0
.end method

.method static synthetic f(Lcom/callapp/contacts/util/ReturnToAppTasker;)Ljava/lang/Runnable;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/util/ReturnToAppTasker;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private getCurrentCondition()Z
    .locals 2

    .line 56
    iget v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v0

    return v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    return v0

    .line 58
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->a:Landroid/os/HandlerThread;

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->b:Landroid/os/Handler;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->getCurrentCondition()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->c:Landroid/content/Intent;

    .line 100
    iput-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker;->e:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-void
.end method
