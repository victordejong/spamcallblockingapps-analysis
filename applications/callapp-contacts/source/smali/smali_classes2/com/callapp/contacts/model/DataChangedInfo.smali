.class public Lcom/callapp/contacts/model/DataChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/model/DataChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORIGIN_ALL_RECORDS:I = 0x3

.field public static final ORIGIN_BLOCK_SCREEN:I = 0x7

.field public static final ORIGIN_CALLAPP_PLUS:I = 0x6

.field public static final ORIGIN_CALL_LOG:I = 0x1

.field public static final ORIGIN_CONTACTS:I = 0x2

.field public static final ORIGIN_FAVORITES_RECORDS:I = 0x4

.field public static final ORIGIN_FAVORITE_FREQUENT:I = 0x8

.field public static final ORIGIN_SEARCH:I = 0x5

.field public static final ORIGIN_WHO_VIEW_MY_PROFILE:I = 0x9

.field public static POSITION_ALL:I = -0x1


# instance fields
.field private dataType:I

.field private origin:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/callapp/contacts/model/DataChangedInfo$1;

    invoke-direct {v0}, Lcom/callapp/contacts/model/DataChangedInfo$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/DataChangedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    .line 29
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    .line 30
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    .line 37
    iput p1, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    .line 38
    iput p2, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    .line 39
    iput p3, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    .line 29
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    .line 30
    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    return-void
.end method

.method public static create(III)Lcom/callapp/contacts/model/DataChangedInfo;
    .locals 1

    .line 33
    new-instance v0, Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/model/DataChangedInfo;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    return v0
.end method

.method public getOrigin()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    return v0
.end method

.method public setDataType(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    return-void
.end method

.method public setOrigin(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    iget p2, p0, Lcom/callapp/contacts/model/DataChangedInfo;->dataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Lcom/callapp/contacts/model/DataChangedInfo;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget p2, p0, Lcom/callapp/contacts/model/DataChangedInfo;->origin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
