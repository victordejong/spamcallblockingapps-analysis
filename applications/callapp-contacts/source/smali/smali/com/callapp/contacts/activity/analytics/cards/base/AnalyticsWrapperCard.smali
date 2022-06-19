.class public abstract Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewHolder:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "TViewHolder;TData;>;",
        "Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;"
    }
.end annotation


# static fields
.field public static final HEADER_ANALYITICS_SIZE:F = 16.0f


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 17
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 22
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCommonListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public getHeaderTextSize()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 27
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method
