.class public Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsMultiCardWrapper;
.super Lcom/callapp/contacts/activity/contact/cards/MultiCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getHeaderTextSize()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    return v0
.end method
