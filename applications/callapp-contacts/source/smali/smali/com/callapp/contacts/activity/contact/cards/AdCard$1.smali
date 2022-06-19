.class Lcom/callapp/contacts/activity/contact/cards/AdCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard;->updateCardData(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/AdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;Ljava/lang/Object;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$102(Lcom/callapp/contacts/activity/contact/cards/AdCard;Z)Z

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/AdCard;Z)V

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->onAdLoaded()V

    return-void
.end method
