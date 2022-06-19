.class public final Lcom/capricorn/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/capricorn/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArcLayout:[I

.field public static final ArcLayout_childSize:I = 0x0

.field public static final ArcLayout_fromDegrees:I = 0x1

.field public static final ArcLayout_toDegrees:I = 0x2

.field public static final ArcMenu:[I

.field public static final ArcMenu_childSize:I = 0x0

.field public static final ArcMenu_fromDegrees:I = 0x1

.field public static final ArcMenu_toDegrees:I = 0x2

.field public static final RayLayout:[I

.field public static final RayLayout_leftHolderWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/capricorn/R$styleable;->ArcLayout:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/capricorn/R$styleable;->ArcMenu:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f030285

    aput v2, v0, v1

    sput-object v0, Lcom/capricorn/R$styleable;->RayLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0300a2
        0x7f0301ca
        0x7f030434
    .end array-data

    :array_1
    .array-data 4
        0x7f0300a2
        0x7f0301ca
        0x7f030434
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
