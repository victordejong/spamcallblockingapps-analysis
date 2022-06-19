.class Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Z)Z

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Z)Z

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$3;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Z)Z

    return-void
.end method
