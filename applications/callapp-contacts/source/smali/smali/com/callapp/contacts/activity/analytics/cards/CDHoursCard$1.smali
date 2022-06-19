.class Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
