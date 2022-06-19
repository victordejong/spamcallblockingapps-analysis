.class public final Lcom/venmo/view/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/venmo/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TooltipView:[I

.field public static final TooltipView_anchoredView:I = 0x0

.field public static final TooltipView_arrowAlignment:I = 0x1

.field public static final TooltipView_arrowAlignmentOffset:I = 0x2

.field public static final TooltipView_arrowHeight:I = 0x3

.field public static final TooltipView_arrowLocation:I = 0x4

.field public static final TooltipView_arrowWidth:I = 0x5

.field public static final TooltipView_cornerRadius:I = 0x6

.field public static final TooltipView_tooltipColor:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/venmo/view/R$styleable;->TooltipView:[I

    return-void

    :array_0
    .array-data 4
        0x7f030033
        0x7f030039
        0x7f03003a
        0x7f03003c
        0x7f03003d
        0x7f03003f
        0x7f03010f
        0x7f030438
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
