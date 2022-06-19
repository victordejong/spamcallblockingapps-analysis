.class final Landroidx/media2/widget/c$f;
.super Landroidx/media2/widget/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 381
    invoke-direct {p0, p3, p4}, Landroidx/media2/widget/c$g;-><init>(II)V

    .line 382
    iput p1, p0, Landroidx/media2/widget/c$f;->a:I

    .line 383
    iput p2, p0, Landroidx/media2/widget/c$f;->b:I

    return-void
.end method

.method static a(BB)Landroidx/media2/widget/c$f;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 357
    fill-array-data v0, :array_0

    const/4 v1, 0x7

    and-int/2addr p0, v1

    .line 358
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

    if-eqz v3, :cond_1

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    .line 366
    new-instance v1, Landroidx/media2/widget/c$f;

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v1, p0, p1, v0, v2}, Landroidx/media2/widget/c$f;-><init>(IIII)V

    return-object v1

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, p1

    .line 376
    :goto_1
    new-instance p1, Landroidx/media2/widget/c$f;

    const/4 v1, -0x1

    invoke-direct {p1, p0, v1, v0, v2}, Landroidx/media2/widget/c$f;-><init>(IIII)V

    return-object p1

    nop

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
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 400
    iget v1, p0, Landroidx/media2/widget/c$f;->a:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/widget/c$f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-super {p0}, Landroidx/media2/widget/c$g;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "{%d, %d}, %s"

    .line 400
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
