.class public Lcarbon/widget/PagerTabStrip$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/PagerTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcarbon/widget/PagerTabStrip$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcarbon/widget/PagerTabStrip$SavedState$a;

    invoke-direct {v0}, Lcarbon/widget/PagerTabStrip$SavedState$a;-><init>()V

    sput-object v0, Lcarbon/widget/PagerTabStrip$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->c:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcarbon/widget/PagerTabStrip$SavedState;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcarbon/widget/PagerTabStrip$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIFF)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcarbon/widget/PagerTabStrip$SavedState;->a:I

    iput p3, p0, Lcarbon/widget/PagerTabStrip$SavedState;->b:I

    iput p4, p0, Lcarbon/widget/PagerTabStrip$SavedState;->c:F

    iput p5, p0, Lcarbon/widget/PagerTabStrip$SavedState;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcelable;IIFFLcarbon/widget/PagerTabStrip$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcarbon/widget/PagerTabStrip$SavedState;-><init>(Landroid/os/Parcelable;IIFF)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->c:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->d:F

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcarbon/widget/PagerTabStrip$SavedState;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcarbon/widget/PagerTabStrip$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcarbon/widget/PagerTabStrip$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcarbon/widget/PagerTabStrip$SavedState;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcarbon/widget/PagerTabStrip$SavedState;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
