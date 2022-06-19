.class final Landroidx/constraintlayout/motion/widget/r$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([I[[FI)V
    .locals 7

    .line 422
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 424
    aput p2, v0, v1

    const/4 p2, 0x1

    .line 425
    aput v1, v0, p2

    const/4 p2, 0x2

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 427
    aget v1, v0, p2

    add-int/lit8 p2, p2, -0x1

    .line 428
    aget v2, v0, p2

    if-ge v1, v2, :cond_0

    .line 1440
    aget v3, p0, v2

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_2

    .line 1443
    aget v6, p0, v4

    if-gt v6, v3, :cond_1

    .line 1444
    invoke-static {p0, p1, v5, v4}, Landroidx/constraintlayout/motion/widget/r$k;->a([I[[FII)V

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1448
    :cond_2
    invoke-static {p0, p1, v5, v2}, Landroidx/constraintlayout/motion/widget/r$k;->a([I[[FII)V

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v5, -0x1

    .line 431
    aput v4, v0, p2

    add-int/lit8 p2, v3, 0x1

    .line 432
    aput v1, v0, v3

    add-int/lit8 v1, p2, 0x1

    .line 433
    aput v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 434
    aput v5, v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a([I[[FII)V
    .locals 2

    .line 453
    aget v0, p0, p2

    .line 454
    aget v1, p0, p3

    aput v1, p0, p2

    .line 455
    aput v0, p0, p3

    .line 456
    aget-object p0, p1, p2

    .line 457
    aget-object v0, p1, p3

    aput-object v0, p1, p2

    .line 458
    aput-object p0, p1, p3

    return-void
.end method
