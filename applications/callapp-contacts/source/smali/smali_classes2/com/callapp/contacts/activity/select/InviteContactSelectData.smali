.class public Lcom/callapp/contacts/activity/select/InviteContactSelectData;
.super Lcom/callapp/contacts/activity/select/ContactSelectData;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/select/InviteContactSelectData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private invite:Z

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/callapp/contacts/activity/select/InviteContactSelectData$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/select/InviteContactSelectData$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/select/ContactSelectData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p4, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->thumbnailUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->invite:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/select/ContactSelectData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p4, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->thumbnailUrl:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->invite:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isInvite()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->invite:Z

    return v0
.end method

.method public setInvite(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->invite:Z

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->getContactId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/InviteContactSelectData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
