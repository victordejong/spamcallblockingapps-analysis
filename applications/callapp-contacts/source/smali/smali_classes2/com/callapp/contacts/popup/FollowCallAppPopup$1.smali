.class Lcom/callapp/contacts/popup/FollowCallAppPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/FollowCallAppPopup;->setupOnlyFollow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/popup/FollowCallAppPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;Landroid/app/Activity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 71
    new-instance p1, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;-><init>(Lcom/callapp/contacts/popup/FollowCallAppPopup$1;)V

    .line 82
    invoke-virtual {p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_0
    return-void
.end method
