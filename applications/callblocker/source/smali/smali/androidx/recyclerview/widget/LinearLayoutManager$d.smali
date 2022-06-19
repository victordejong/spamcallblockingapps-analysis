.class public Landroidx/recyclerview/widget/LinearLayoutManager$d;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/recyclerview/widget/LinearLayoutManager$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2429
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2395
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    .line 2399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    .line 2400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    .line 2401
    return-void

    .line 2400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager$d;)V
    .locals 1

    .prologue
    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    .line 2405
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    .line 2406
    iget-boolean v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    .line 2407
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2414
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    .line 2415
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2419
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2424
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    return-void

    .line 2426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
