.class public Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private badgeColor:I

.field private badgeDrawableId:I

.field private contactId:J

.field private name:Ljava/lang/String;

.field private needToShowBorder:Z

.field private phoneAsRaw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    .line 22
    iput-wide p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    .line 23
    iput-object p5, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    .line 24
    iput p6, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    .line 25
    iput p7, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 76
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    .line 78
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 79
    :cond_3
    iget-wide v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    iget-wide v4, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 80
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    if-eq v2, v3, :cond_5

    return v1

    .line 81
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    if-eq v2, v3, :cond_6

    return v1

    .line 82
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_0
    return v1

    .line 84
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-nez p1, :cond_a

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public getBadgeColor()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    return v0
.end method

.method public getBadgeDrawableId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    return v0
.end method

.method public getContactId()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 150
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToShowBorder()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    return-void
.end method

.method public setContactId(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedToShowBorder(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    return-void
.end method

.method public setPhoneAsRaw(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallAppPlusSummaryItem{phoneAsRaw=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", needToShowBorder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contactId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", badgeDrawableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", badgeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 108
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->needToShowBorder:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-wide v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeDrawableId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->badgeColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
