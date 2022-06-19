.class Lcom/callapp/contacts/action/shared/ShareFileAction$1$1;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareFileAction$1;->a(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/shared/ShareFileAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareFileAction$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareFileAction$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/action/shared/ShareFileAction$1$1;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareFileAction$1;

    iget-object p2, p2, Lcom/callapp/contacts/action/shared/ShareFileAction$1;->c:Lcom/callapp/contacts/action/shared/ShareFileAction;

    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareFileAction$1;

    iget-object p3, p3, Lcom/callapp/contacts/action/shared/ShareFileAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p2, p3, p4, p1}, Lcom/callapp/contacts/action/shared/ShareFileAction;->a(Lcom/callapp/contacts/action/shared/ShareFileAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
