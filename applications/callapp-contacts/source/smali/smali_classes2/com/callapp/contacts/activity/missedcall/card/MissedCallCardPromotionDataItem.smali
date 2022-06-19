.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->a:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->b:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->c:I

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->d:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->e:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->f:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->g:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionCta()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->c:I

    return v0
.end method

.method public getImgFromUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
