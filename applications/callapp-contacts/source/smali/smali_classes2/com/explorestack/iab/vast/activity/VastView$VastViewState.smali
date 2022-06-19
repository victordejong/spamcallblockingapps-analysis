.class Lcom/explorestack/iab/vast/activity/VastView$VastViewState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VastViewState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/activity/VastView$VastViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentQuartile:I

.field currentVideoPosition:I

.field isCompanionShown:Z

.field isCompleted:Z

.field isImpressionProcessed:Z

.field isMuted:Z

.field isPaused:Z

.field isSkipEnabled:Z

.field skipTime:F

.field wasClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1727
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState$1;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/activity/VastView$VastViewState$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1679
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    const/4 v0, 0x0

    .line 1680
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    .line 1681
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 1683
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    .line 1684
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1685
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    .line 1686
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 1687
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    .line 1688
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    .line 1690
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1679
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    const/4 v0, 0x0

    .line 1680
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    .line 1681
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 1683
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    .line 1684
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1685
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    .line 1686
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 1687
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    .line 1688
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    .line 1690
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    .line 1696
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    .line 1697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    .line 1698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 1699
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    .line 1700
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1701
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    .line 1702
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 1703
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    .line 1704
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    .line 1705
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

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

    .line 1715
    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1716
    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    iget p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1719
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1720
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1721
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1722
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1723
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1724
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
