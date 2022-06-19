.class public Lcom/callapp/contacts/manager/popup/DialogPopupActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/manager/popup/BaseDialogFragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private d:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->c:Z

    .line 28
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->d:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-void
.end method

.method private getDialog()Landroid/app/Dialog;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    new-instance v1, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopupActivity;Lcom/callapp/contacts/manager/popup/DialogPopupActivity$1;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->a(Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;)V

    .line 129
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    iget v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->e:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->d:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setDialogSizeAndBackground(Landroid/app/Dialog;Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 52
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->e:I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 35
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->e:I

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->b()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 118
    :try_start_2
    const-class v3, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 122
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "dialog"

    .line 74
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Intent;)Lcom/callapp/contacts/manager/popup/Popup;

    move-result-object p1

    .line 76
    instance-of v1, p1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    if-eqz v1, :cond_2

    .line 77
    check-cast p1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    .line 78
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->d:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 2169
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManager;->v:Z

    if-nez v2, :cond_1

    .line 80
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v2, v3}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 90
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/s;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 92
    const-class v3, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->shouldCanceledOnTouchOutside()Z

    move-result v2

    invoke-virtual {p1, p0, v2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V

    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->finish()V

    return-void

    .line 102
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 v0, 0x50

    const-string v1, "DialogPopupActivity got non DialogPopup instance"

    .line 2206
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
