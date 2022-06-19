.class Lcom/explorestack/iab/vast/activity/VastView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/activity/VastView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field vastRequest:Lcom/explorestack/iab/vast/VastRequest;

.field vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1762
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$SavedState$1;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/activity/VastView$SavedState$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1746
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1747
    const-class v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    .line 1748
    const-class v0, Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/vast/VastRequest;

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1752
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1757
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1758
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1759
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
