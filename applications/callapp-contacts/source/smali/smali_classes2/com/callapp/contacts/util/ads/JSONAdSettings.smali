.class public Lcom/callapp/contacts/util/ads/JSONAdSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/JSONAdSettings$AdItemAnimation;,
        Lcom/callapp/contacts/util/ads/JSONAdSettings$AdItemLayout;
    }
.end annotation


# static fields
.field public static final ANIMATION_BLINK:I = 0x5

.field public static final ANIMATION_EXPAND_AND_FLIP:I = 0x4

.field public static final ANIMATION_FLIP:I = 0x3

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final LAYOUT_CARD_BIG_COLOR:I = 0x12

.field public static final LAYOUT_CARD_SMALL_WITH_IMAGE:I = 0xf

.field public static final LAYOUT_CARD_SMALL_WITH_IMAGE_COLOR:I = 0x11

.field public static final LAYOUT_CARD_SMALL_WITH_IMAGE_CONTRAST:I = 0x13

.field public static final LAYOUT_WITH_DESCRIPTION_TEXT:I = 0xd

.field public static final NO_ANIMATION:I = 0x2


# instance fields
.field private addCloseButton:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "closeButton"
    .end annotation
.end field

.field private animation:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "animation"
    .end annotation
.end field

.field private group:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field

.field private layout:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONAdSettings;

    .line 91
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->group:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdSettings;->group:I

    if-eq v2, v3, :cond_2

    return v1

    .line 92
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->layout:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdSettings;->layout:I

    if-eq v2, v3, :cond_3

    return v1

    .line 93
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->animation:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdSettings;->animation:I

    if-eq v2, v3, :cond_4

    return v1

    .line 94
    :cond_4
    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->addCloseButton:Z

    iget-boolean p1, p1, Lcom/callapp/contacts/util/ads/JSONAdSettings;->addCloseButton:Z

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getAnimation()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->animation:I

    return v0
.end method

.method public getGroup()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->group:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->layout:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->group:I

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->layout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->animation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->addCloseButton:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public shouldAddCloseButton()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONAdSettings;->addCloseButton:Z

    return v0
.end method
