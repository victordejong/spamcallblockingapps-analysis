.class Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoViewInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPosition:I

.field currentState:I

.field targetState:I

.field uri:Ljava/lang/String;

.field volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 875
    new-instance v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo$1;

    invoke-direct {v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo$1;-><init>()V

    sput-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 905
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentState:I

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->targetState:I

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentPosition:I

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->volume:F

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;)V
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

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

    .line 925
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 927
    iget p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->targetState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 931
    iget-object p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
