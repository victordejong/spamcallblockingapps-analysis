.class public Lu7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu7/a;->b:I

    const/16 v0, 0x1000

    .line 3
    iput v0, p0, Lu7/a;->c:I

    .line 4
    sget v0, Lk7/l;->f:I

    iput v0, p0, Lu7/a;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lu7/a;->b:I

    .line 2
    iget v1, p0, Lu7/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lu7/a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lu7/a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lu7/a;->c:I

    return-object p0
.end method

.method public c(J)V
    .locals 0

    long-to-int p2, p1

    mul-int/lit8 p2, p2, 0x2

    .line 1
    iput p2, p0, Lu7/a;->b:I

    return-void
.end method
