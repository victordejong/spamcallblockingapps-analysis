.class Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

.field final synthetic d:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->d:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->setPhotoUrl(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
