.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->access$700(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->access$700(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->access$800(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
