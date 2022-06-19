.class Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;->a:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;->a:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;->a:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2$1;->a:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;

    iget-object v2, v2, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;->d:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-static {v2}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->c(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Z)V

    return-void
.end method
