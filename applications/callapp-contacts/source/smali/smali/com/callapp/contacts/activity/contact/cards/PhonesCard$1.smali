.class Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->buildSimpleObject(Lcom/callapp/framework/phone/Phone;ZZ)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/framework/phone/Phone;)V

    const/4 p1, 0x1

    return p1
.end method
