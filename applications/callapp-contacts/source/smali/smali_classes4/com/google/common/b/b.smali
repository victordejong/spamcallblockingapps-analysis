.class public final Lcom/google/common/b/b;
.super Lcom/google/common/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/b/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/common/b/c;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 3

    const v0, 0x3fffffff    # 1.9999999f

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "min (%s) must be less than or equal to max (%s)"

    .line 271
    invoke-static {v1, v2, p1, v0}, Lcom/google/common/base/m;->a(ZLjava/lang/String;II)V

    .line 272
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Out of range: %s"

    .line 87
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/m;->a(ZLjava/lang/String;J)V

    return v0
.end method

.method static synthetic a([IIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1156
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/util/Collection;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .line 526
    instance-of v0, p0, Lcom/google/common/b/b$a;

    if-eqz v0, :cond_0

    .line 527
    check-cast p0, Lcom/google/common/b/b$a;

    invoke-virtual {p0}, Lcom/google/common/b/b$a;->a()[I

    move-result-object p0

    return-object p0

    .line 530
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 531
    array-length v0, p0

    .line 532
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 535
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
