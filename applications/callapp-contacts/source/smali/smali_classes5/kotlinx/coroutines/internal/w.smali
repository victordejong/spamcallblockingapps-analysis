.class public final Lkotlinx/coroutines/internal/w;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt",
        "kotlinx/coroutines/internal/SystemPropsKt__SystemProps_commonKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    .line 2035
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static synthetic a(Ljava/lang/String;J)J
    .locals 7

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    .line 2048
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Ljava/lang/String;JJJ)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkotlinx/coroutines/internal/y;->a(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method
