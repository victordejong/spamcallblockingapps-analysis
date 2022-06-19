.class public abstract Lcom/esotericsoftware/a/q;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lcom/esotericsoftware/a/q;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/q;-><init>(ILcom/esotericsoftware/a/q;)V

    return-void
.end method

.method public constructor <init>(ILcom/esotericsoftware/a/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/esotericsoftware/a/q;->a:I

    iput-object p2, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    return-void
.end method


# virtual methods
.method public a()Lcom/esotericsoftware/a/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/a/q;->a()Lcom/esotericsoftware/a/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public a(ILcom/esotericsoftware/a/u;[Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;[ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1

    iget-object v3, v0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v3, :cond_0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;[Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;[ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public a(ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/q;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->a(II)V

    :cond_0
    return-void
.end method

.method public varargs a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :cond_0
    return-void
.end method

.method public a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/p;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_2

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p5, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_3

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public a(Lcom/esotericsoftware/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/esotericsoftware/a/p;[I[Lcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;[I[Lcom/esotericsoftware/a/p;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/m;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/m;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;I)V
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;I)V

    :cond_0
    return-void
.end method

.method public b(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->b(II)V

    :cond_0
    return-void
.end method

.method public b(ILcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/p;)V

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    :goto_0
    iget v1, v0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1

    const/16 v1, 0xb9

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/a/q;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/q;->c(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->c(II)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/q;->b:Lcom/esotericsoftware/a/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/q;->d(II)V

    :cond_0
    return-void
.end method
