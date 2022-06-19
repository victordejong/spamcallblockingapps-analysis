.class Lcom/callapp/contacts/action/local/CopyContactNumberAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/CopyContactNumberAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/CopyContactNumberAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/CopyContactNumberAction;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/action/local/CopyContactNumberAction$1;->a:Lcom/callapp/contacts/action/local/CopyContactNumberAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 1

    const p2, 0x7f120045

    .line 29
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120722

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
