.class public Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMVideoViewInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentPosition:I

.field public currentState:I

.field public muted:Z

.field public targetState:I

.field public uri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

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

    iget p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
