.class public final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0005"
    }
    d2 = {
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$3$2$1$doTask$1",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;",
        "onMultiCircleClick",
        "",
        "callapp-client_playRelease",
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$$special$$inlined$forEach$lambda$2$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 286
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->c:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    const-string v2, "contactData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v2, "contactData.phone"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->INSIGHTS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "InsightsUnansweredCard"

    move-wide v2, v3

    move-object v4, v0

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ContactDetailsActivity.c\u2026rd\", ENTRYPOINT.INSIGHTS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->c:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
