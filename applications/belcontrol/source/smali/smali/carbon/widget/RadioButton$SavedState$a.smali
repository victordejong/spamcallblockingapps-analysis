.class public final Lcarbon/widget/RadioButton$SavedState$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/RadioButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcarbon/widget/RadioButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcarbon/widget/RadioButton$SavedState;
    .locals 2

    new-instance v0, Lcarbon/widget/RadioButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcarbon/widget/RadioButton$SavedState;-><init>(Landroid/os/Parcel;Lcarbon/widget/RadioButton$a;)V

    return-object v0
.end method

.method public b(I)[Lcarbon/widget/RadioButton$SavedState;
    .locals 0

    new-array p1, p1, [Lcarbon/widget/RadioButton$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/RadioButton$SavedState$a;->a(Landroid/os/Parcel;)Lcarbon/widget/RadioButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/RadioButton$SavedState$a;->b(I)[Lcarbon/widget/RadioButton$SavedState;

    move-result-object p1

    return-object p1
.end method
