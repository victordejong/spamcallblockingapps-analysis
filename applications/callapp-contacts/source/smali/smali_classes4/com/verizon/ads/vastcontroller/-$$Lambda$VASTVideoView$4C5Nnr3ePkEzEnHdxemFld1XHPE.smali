.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;

    invoke-direct {v0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;-><init>()V

    sput-object v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;->INSTANCE:Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    check-cast p2, Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    invoke-static {p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->lambda$4C5Nnr3ePkEzEnHdxemFld1XHPE(Lcom/verizon/ads/vastcontroller/VASTParser$Button;Lcom/verizon/ads/vastcontroller/VASTParser$Button;)I

    move-result p1

    return p1
.end method
