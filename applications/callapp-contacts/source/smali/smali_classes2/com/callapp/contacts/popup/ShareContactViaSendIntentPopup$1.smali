.class Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->dismiss()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->setChoicesIndexes(Ljava/util/ArrayList;)V

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    iget-object p1, p1, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->e:Landroid/app/Activity;

    const v1, 0x7f120631

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
