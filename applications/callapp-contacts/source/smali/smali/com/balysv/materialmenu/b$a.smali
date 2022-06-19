.class public final Lcom/balysv/materialmenu/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final MaterialMenuView:[I

.field public static final MaterialMenuView_mm_color:I = 0x0

.field public static final MaterialMenuView_mm_iconState:I = 0x1

.field public static final MaterialMenuView_mm_rtlEnabled:I = 0x2

.field public static final MaterialMenuView_mm_scale:I = 0x3

.field public static final MaterialMenuView_mm_strokeWidth:I = 0x4

.field public static final MaterialMenuView_mm_transformDuration:I = 0x5

.field public static final MaterialMenuView_mm_visible:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/balysv/materialmenu/b$a;->MaterialMenuView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040350
        0x7f040351
        0x7f040352
        0x7f040353
        0x7f040354
        0x7f040355
        0x7f040356
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
