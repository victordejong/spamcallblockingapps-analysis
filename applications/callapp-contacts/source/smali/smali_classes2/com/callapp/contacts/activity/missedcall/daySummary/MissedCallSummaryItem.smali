.class public Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactId:J

.field private name:Ljava/lang/String;

.field private needToShowBorder:Z

.field private numberOfMissedCall:I

.field private phoneAsRaw:Ljava/lang/String;

.field private profileImageView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->profileImageView:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    .line 21
    iput-boolean p5, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->needToShowBorder:Z

    .line 22
    iput-wide p3, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->contactId:J

    .line 23
    iput p6, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->numberOfMissedCall:I

    .line 24
    iput-object p7, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->contactId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfMissedCall()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->numberOfMissedCall:I

    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 62
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageView()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->profileImageView:Ljava/lang/String;

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

.method public isNeedToShowBorder()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->needToShowBorder:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->profileImageView:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->name:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->needToShowBorder:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->contactId:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->numberOfMissedCall:I

    return-void
.end method

.method public setContactId(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->contactId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedToShowBorder(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->needToShowBorder:Z

    return-void
.end method

.method public setNumberOfMissedCall(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->numberOfMissedCall:I

    return-void
.end method

.method public setPhoneAsRaw(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method

.method public setProfileImageView(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->profileImageView:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 101
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->profileImageView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->needToShowBorder:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-wide v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->numberOfMissedCall:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
