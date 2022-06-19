.class public Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final message:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData$1;

    invoke-direct {v0}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 184
    iget-object p2, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
