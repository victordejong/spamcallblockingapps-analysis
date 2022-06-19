.class public abstract Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private b:Z

.field private c:Z

.field protected d:Z

.field public e:Z

.field public final f:Ljava/lang/Object;

.field public g:Z

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->d:Z

    .line 20
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->e:Z

    .line 21
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->f:Ljava/lang/Object;

    .line 22
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->g:Z

    .line 24
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b:Z

    .line 25
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->c:Z

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->setRetainInstance(Z)V

    .line 1113
    new-instance v1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 1114
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    .line 1115
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v1, 0x7f120537

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v1, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;-><init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Ljava/lang/Object;)V
    .locals 2

    .line 2063
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2064
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2065
    new-instance v1, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;-><init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 2076
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2109
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->c:Z

    return p1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final b()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->c:Z

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 143
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Landroid/content/Context;)V

    .line 147
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->d:Z

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->d:Z

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b()V

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 157
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->c:Z

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b:Z

    .line 159
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b()V

    return-void
.end method
