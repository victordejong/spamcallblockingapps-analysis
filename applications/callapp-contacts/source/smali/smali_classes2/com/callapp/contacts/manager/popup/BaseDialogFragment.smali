.class public Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;,
        Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;
    }
.end annotation


# instance fields
.field c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;

.field private f:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;

.field private g:Landroid/content/DialogInterface$OnCancelListener;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->c:Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->e:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->c:Z

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->g:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p3, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->f:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;

    if-eqz p3, :cond_0

    .line 94
    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 107
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/c;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;

    .line 62
    invoke-interface {v0, p0}, Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;->a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/c;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->f:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->f:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;->setDialogWindowSize(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public setCreateDialogInterface(Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->e:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->g:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnCreateViewListener(Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->f:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->e:Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;->getDialogPopup()Lcom/callapp/contacts/manager/popup/DialogPopup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "DialogPopup: "

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ", Activity: "

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, ", ActivityName: "

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroidx/fragment/app/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
