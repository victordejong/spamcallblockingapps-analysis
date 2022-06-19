.class Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StickyHeaderLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 929
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState$1;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 889
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    const/4 v0, 0x0

    .line 890
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 889
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    const/4 v0, 0x0

    .line 890
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 906
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstViewAdapterPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " firstViewTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 925
    iget p2, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget p2, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
