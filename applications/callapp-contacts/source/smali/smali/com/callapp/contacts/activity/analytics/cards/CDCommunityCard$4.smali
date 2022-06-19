.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$3000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$3000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$3100(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
