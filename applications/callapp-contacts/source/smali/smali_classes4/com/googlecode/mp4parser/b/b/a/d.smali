.class public Lcom/googlecode/mp4parser/b/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:Z = true


# instance fields
.field a:I

.field b:I

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    .line 12
    iput-object p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->d:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .line 21
    sget-boolean v0, Lcom/googlecode/mp4parser/b/b/a/d;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    shl-int v0, v2, p2

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "Trying to write a value bigger (%s) than the number bits (%s) allows. Please mask the value before writing it and make your code is really working as intended."

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    rem-int/lit8 v3, v0, 0x8

    rsub-int/lit8 v3, v3, 0x8

    if-gt p2, v3, :cond_4

    .line 26
    iget-object v4, p0, Lcom/googlecode/mp4parser/b/b/a/d;->d:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/googlecode/mp4parser/b/b/a/d;->a:I

    div-int/lit8 v0, v0, 0x8

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x100

    :cond_2
    sub-int/2addr v3, p2

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    .line 29
    iget-object p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->d:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/d;->a:I

    iget v4, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0x7f

    if-le v0, v4, :cond_3

    add-int/lit16 v0, v0, -0x100

    :cond_3
    int-to-byte v0, v0

    invoke-virtual {p1, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 30
    iget p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    goto :goto_1

    :cond_4
    sub-int/2addr p2, v3

    shr-int v0, p1, p2

    .line 33
    invoke-virtual {p0, v0, v3}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    shl-int v0, v2, p2

    sub-int/2addr v0, v2

    and-int/2addr p1, v0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 36
    :goto_1
    iget-object p1, p0, Lcom/googlecode/mp4parser/b/b/a/d;->d:Ljava/nio/ByteBuffer;

    iget p2, p0, Lcom/googlecode/mp4parser/b/b/a/d;->a:I

    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/d;->b:I

    div-int/lit8 v3, v0, 0x8

    add-int/2addr p2, v3

    rem-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    return-void
.end method
