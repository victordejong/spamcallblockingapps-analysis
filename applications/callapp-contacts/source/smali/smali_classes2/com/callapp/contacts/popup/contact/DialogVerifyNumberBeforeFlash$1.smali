.class Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->a(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;)Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->a(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;)Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;->a()V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->dismiss()V

    return-void
.end method
