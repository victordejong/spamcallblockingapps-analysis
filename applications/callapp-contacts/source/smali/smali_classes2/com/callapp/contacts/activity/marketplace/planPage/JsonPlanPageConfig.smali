.class public Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private badge:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "badge"
    .end annotation
.end field

.field private badgePosition:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "badgePosition"
    .end annotation
.end field

.field private bottomBackground:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bottomBackground"
    .end annotation
.end field

.field private bottomBackgroundAlpha:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bottomBackgroundAlpha"
    .end annotation
.end field

.field private bottomBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bottomBackgroundColor"
    .end annotation
.end field

.field private containerBackground:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "containerBackground"
    .end annotation
.end field

.field private containerBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "containerBackgroundColor"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private middleBackground:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "middleBackground"
    .end annotation
.end field

.field private shape:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shape"
    .end annotation
.end field

.field private showTopBackground:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showTopBackground"
    .end annotation
.end field

.field private skuInformation:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "skuInformation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;",
            ">;"
        }
    .end annotation
.end field

.field private topBackground:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "topBackground"
    .end annotation
.end field

.field private viewType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "viewType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->showTopBackground:Z

    return-void
.end method


# virtual methods
.method public getBadge()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgePosition()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->badgePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomBackground()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomBackgroundAlpha()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackgroundAlpha:I

    return v0
.end method

.method public getBottomBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerBackground()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->containerBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->containerBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleBackground()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->middleBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->shape:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTopBackground()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->showTopBackground:Z

    return v0
.end method

.method public getSkuInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->skuInformation:Ljava/util/List;

    return-object v0
.end method

.method public getTopBackground()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->topBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->viewType:Ljava/lang/String;

    return-object v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->badge:Ljava/lang/String;

    return-void
.end method

.method public setBadgePosition(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->badgePosition:Ljava/lang/String;

    return-void
.end method

.method public setBottomBackground(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackground:Ljava/lang/String;

    return-void
.end method

.method public setBottomBackgroundAlpha(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackgroundAlpha:I

    return-void
.end method

.method public setBottomBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->bottomBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setContainerBackground(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->containerBackground:Ljava/lang/String;

    return-void
.end method

.method public setContainerBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->containerBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->id:Ljava/lang/String;

    return-void
.end method

.method public setMiddleBackground(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->middleBackground:Ljava/lang/String;

    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->shape:Ljava/lang/String;

    return-void
.end method

.method public setShowTopBackground(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->showTopBackground:Z

    return-void
.end method

.method public setSkuInformation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->skuInformation:Ljava/util/List;

    return-void
.end method

.method public setTopBackground(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->topBackground:Ljava/lang/String;

    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->viewType:Ljava/lang/String;

    return-void
.end method
