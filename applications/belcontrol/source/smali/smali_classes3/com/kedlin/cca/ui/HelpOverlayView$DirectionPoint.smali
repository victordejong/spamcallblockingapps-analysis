.class public Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;
.super Landroid/graphics/Point;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionPoint"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/kedlin/cca/ui/HelpOverlayView$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a;

    invoke-direct {v0}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a;-><init>()V

    sput-object v0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/kedlin/cca/ui/HelpOverlayView$h;->values()[Lcom/kedlin/cca/ui/HelpOverlayView$h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    return-void
.end method

.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget-object p1, p1, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
