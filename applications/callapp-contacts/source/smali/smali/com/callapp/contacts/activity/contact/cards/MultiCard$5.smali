.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;->setToggleText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120651

    goto :goto_0

    :cond_0
    const v1, 0x7f120652

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
