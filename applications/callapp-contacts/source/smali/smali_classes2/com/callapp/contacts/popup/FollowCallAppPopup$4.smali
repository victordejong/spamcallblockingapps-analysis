.class Lcom/callapp/contacts/popup/FollowCallAppPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/FollowCallAppPopup;->setupPostAndFollow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/FollowCallAppPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$4;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$4;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$4;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_0
    return-void
.end method
