.class public final Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;",
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
.method public a(Landroid/os/Parcel;)Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;
    .locals 1

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    invoke-direct {v0, p1}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;
    .locals 0

    new-array p1, p1, [Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a;->a(Landroid/os/Parcel;)Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a;->b(I)[Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    move-result-object p1

    return-object p1
.end method
