.class final Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->onUserDismissingSocial(Landroid/content/Context;Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contact:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic val$idInSocialNetwork:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field final synthetic val$onOkClickedListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field final synthetic val$socialNetId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$socialNetId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$contact:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$idInSocialNetwork:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iput-object p4, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$onOkClickedListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;-><init>(Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;)V

    .line 124
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$onOkClickedListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    return-void
.end method
