.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->updateHeaderTitle(Ljava/lang/String;)V
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

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Ljava/lang/String;)V

    return-void
.end method
