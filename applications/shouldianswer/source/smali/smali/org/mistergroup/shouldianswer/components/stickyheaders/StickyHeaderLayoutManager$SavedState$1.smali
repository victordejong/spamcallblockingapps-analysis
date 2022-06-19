.class final Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "StickyHeaderLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;
    .locals 1

    .line 932
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;
    .locals 0

    .line 937
    new-array p1, p1, [Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 929
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState$1;->a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 929
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState$1;->a(I)[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
