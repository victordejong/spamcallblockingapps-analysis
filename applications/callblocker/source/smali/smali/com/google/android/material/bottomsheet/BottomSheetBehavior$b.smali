.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
.super Landroidx/d/a/a;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
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
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field b:I

.field d:Z

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1448
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b$1;

    invoke-direct {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b$1;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1406
    invoke-direct {p0, p1, p2}, Landroidx/d/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:I

    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->e:Z

    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->f:Z

    .line 1413
    return-void

    :cond_0
    move v0, v2

    .line 1410
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1411
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1412
    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1416
    invoke-direct {p0, p1}, Landroidx/d/a/a;-><init>(Landroid/os/Parcelable;)V

    .line 1417
    iget v0, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    .line 1418
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:I

    .line 1419
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    .line 1420
    iget-boolean v0, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->e:Z

    .line 1421
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->f:Z

    .line 1422
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1440
    invoke-super {p0, p1, p2}, Landroidx/d/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1441
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->f:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    return-void

    :cond_0
    move v0, v2

    .line 1443
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1444
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1445
    goto :goto_2
.end method
