.class public final Lscala/collection/immutable/Range$;
.super Ljava/lang/Object;
.source "Range.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$;


# instance fields
.field private final MAX_PRINT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    const/16 v0, 0x200

    .line 400
    iput v0, p0, Lscala/collection/immutable/Range$;->MAX_PRINT:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 399
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    return-object v0
.end method


# virtual methods
.method public MAX_PRINT()I
    .locals 1

    .line 400
    iget v0, p0, Lscala/collection/immutable/Range$;->MAX_PRINT:I

    return v0
.end method

.method public apply(II)Lscala/collection/immutable/Range;
    .locals 2

    .line 446
    new-instance v0, Lscala/collection/immutable/Range;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method

.method public apply(III)Lscala/collection/immutable/Range;
    .locals 1

    .line 442
    new-instance v0, Lscala/collection/immutable/Range;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method

.method public count(III)I
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, p1, p2, p3, v0}, Lscala/collection/immutable/Range$;->count(IIIZ)I

    move-result p1

    return p1
.end method

.method public count(IIIZ)I
    .locals 6

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    if-eqz p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_3
    if-lez p3, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    int-to-long v2, p2

    int-to-long p1, p1

    sub-long/2addr v2, p1

    int-to-long p1, p3

    .line 420
    div-long v4, v2, p1

    if-nez p4, :cond_6

    .line 423
    rem-long/2addr v2, p1

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    int-to-long p1, v0

    add-long/2addr v4, p1

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v4, p1

    if-lez p3, :cond_7

    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    long-to-int v1, v4

    :goto_3
    return v1

    .line 409
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inclusive(II)Lscala/collection/immutable/Range$Inclusive;
    .locals 2

    .line 455
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    return-object v0
.end method

.method public inclusive(III)Lscala/collection/immutable/Range$Inclusive;
    .locals 1

    .line 451
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    return-object v0
.end method
