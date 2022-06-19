.class public final Lcom/esotericsoftware/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field b:[B

.field c:Lcom/esotericsoftware/a/c;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Lcom/esotericsoftware/a/d;
    .locals 2

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iget-object v1, p0, Lcom/esotericsoftware/a/c;->b:[B

    iput-object v1, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v1, p0, Lcom/esotericsoftware/a/c;->b:[B

    array-length v1, v1

    iput v1, v0, Lcom/esotericsoftware/a/d;->b:I

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    goto :goto_0

    :cond_0
    return v0
.end method

.method final a(Lcom/esotericsoftware/a/g;)I
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/esotericsoftware/a/c;->b()Lcom/esotericsoftware/a/d;

    move-result-object v2

    iget v2, v2, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    iget-object v1, v1, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected final a(Lcom/esotericsoftware/a/e;II)Lcom/esotericsoftware/a/c;
    .locals 3

    new-instance v0, Lcom/esotericsoftware/a/c;

    iget-object v1, p0, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/c;-><init>(Ljava/lang/String;)V

    new-array v1, p3, [B

    iput-object v1, v0, Lcom/esotericsoftware/a/c;->b:[B

    iget-object p1, p1, Lcom/esotericsoftware/a/e;->a:[B

    iget-object v1, v0, Lcom/esotericsoftware/a/c;->b:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final a(Lcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/d;)V
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/esotericsoftware/a/c;->b()Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget-object v2, v0, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    iget v3, v1, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget-object v2, v1, Lcom/esotericsoftware/a/d;->a:[B

    const/4 v3, 0x0

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p2, v2, v3, v1}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    goto :goto_0

    :cond_0
    return-void
.end method
