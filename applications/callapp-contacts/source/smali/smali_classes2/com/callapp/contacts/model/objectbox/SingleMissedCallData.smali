.class public Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field private contactId:J

.field protected id:Ljava/lang/Long;

.field private location:I

.field private missedCallTime:J

.field private missedCallType:I

.field private numberOfMissedCalls:I

.field private phoneAsRaw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/callapp/framework/phone/Phone;JIII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->contactId:J

    .line 30
    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->phoneAsRaw:Ljava/lang/String;

    .line 31
    iput-wide p4, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallTime:J

    .line 32
    iput p6, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->location:I

    .line 33
    iput p7, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->numberOfMissedCalls:I

    .line 34
    iput p8, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallType:I

    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->contactId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->location:I

    return v0
.end method

.method public getMissedCallTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallTime:J

    return-wide v0
.end method

.method public getMissedCallType()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallType:I

    return v0
.end method

.method public getNumberOfMissedCalls()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->numberOfMissedCalls:I

    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public incrementNumberOfMissedCall()V
    .locals 1

    .line 101
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->numberOfMissedCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->numberOfMissedCalls:I

    return-void
.end method

.method public setContactId(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->contactId:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->location:I

    return-void
.end method

.method public setMissedCallTime(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallTime:J

    return-void
.end method

.method public setMissedCallType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->missedCallType:I

    return-void
.end method

.method public setNumberOfMissedCalls(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->numberOfMissedCalls:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method
