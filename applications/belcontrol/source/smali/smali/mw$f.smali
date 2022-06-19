.class public Lmw$f;
.super Lmw$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lmw$g;-><init>(II)V

    iput p1, p0, Lmw$f;->d:I

    iput p2, p0, Lmw$f;->e:I

    return-void
.end method

.method public static d(BB)Lmw$f;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x7

    and-int/2addr p0, v1

    aget p0, v0, p0

    and-int/lit8 v0, p1, 0x20

    shr-int/lit8 v0, v0, 0x5

    add-int/2addr p0, v0

    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p1, 0x10

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    if-eqz v3, :cond_1

    new-instance v1, Lmw$f;

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v1, p0, p1, v0, v2}, Lmw$f;-><init>(IIII)V

    return-object v1

    :cond_1
    if-ne p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    new-instance p1, Lmw$f;

    const/4 v1, -0x1

    invoke-direct {p1, p0, v1, v0, v2}, Lmw$f;-><init>(IIII)V

    return-object p1

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lmw$f;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lmw$f;->d:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lmw$f;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lmw$f;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lmw$f;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-super {p0}, Lmw$g;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "{%d, %d}, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
