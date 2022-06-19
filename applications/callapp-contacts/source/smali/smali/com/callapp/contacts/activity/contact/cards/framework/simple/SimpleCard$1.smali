.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V

    return-void
.end method
