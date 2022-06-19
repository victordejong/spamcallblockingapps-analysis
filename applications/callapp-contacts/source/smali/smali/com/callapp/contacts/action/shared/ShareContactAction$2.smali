.class Lcom/callapp/contacts/action/shared/ShareContactAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;->d(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/action/shared/ShareContactAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2;->b:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$2;Landroid/app/Activity;Ljava/util/List;)V

    .line 253
    invoke-virtual {v1}, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
