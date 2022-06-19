.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->userInteraction:Z

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    return-void
.end method
