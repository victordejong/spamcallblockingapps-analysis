.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
.super Landroidx/d/a/a;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:F

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1865
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;-><init>()V

    sput-object v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 1847
    invoke-direct {p0, p1, p2}, Landroidx/d/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->a:I

    .line 1849
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->b:F

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->d:Z

    .line 1851
    return-void

    .line 1850
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1854
    invoke-direct {p0, p1}, Landroidx/d/a/a;-><init>(Landroid/os/Parcelable;)V

    .line 1855
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1859
    invoke-super {p0, p1, p2}, Landroidx/d/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1860
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1862
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1863
    return-void

    .line 1862
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
