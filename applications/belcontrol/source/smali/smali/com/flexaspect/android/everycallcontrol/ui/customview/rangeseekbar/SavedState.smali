.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public f:F

.field public g:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState$a;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState$a;-><init>()V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->a:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->b:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->c:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->g:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->g:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
