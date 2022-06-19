.class Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->updateCardData(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->access$002(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Z)V

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;)V

    return-void
.end method
