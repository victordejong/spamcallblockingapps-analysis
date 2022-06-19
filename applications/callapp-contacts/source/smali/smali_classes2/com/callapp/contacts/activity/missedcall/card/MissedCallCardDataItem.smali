.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/callapp/framework/phone/Phone;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Lcom/callapp/framework/phone/Phone;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->b:I

    .line 19
    iput-wide p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->c:J

    .line 20
    iput-object p5, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->d:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->e:Lcom/callapp/framework/phone/Phone;

    .line 22
    iput p7, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->f:I

    return-void
.end method


# virtual methods
.method public getLastMissedCallDate()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->c:J

    return-wide v0
.end method

.method public getMissedCallNumber()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->b:I

    return v0
.end method

.method public getMissedCallType()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->f:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->e:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getProfileImageView()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
