.class final Lcom/esotericsoftware/a/k;
.super Lcom/esotericsoftware/a/j;


# instance fields
.field final c:Lcom/esotericsoftware/a/g;

.field final d:I

.field final e:I

.field final f:I

.field g:I

.field h:I

.field i:Lcom/esotericsoftware/a/b;

.field j:Lcom/esotericsoftware/a/b;

.field k:Lcom/esotericsoftware/a/b;

.field l:Lcom/esotericsoftware/a/b;

.field m:Lcom/esotericsoftware/a/c;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/j;-><init>(I)V

    iget-object v0, p1, Lcom/esotericsoftware/a/g;->r:Lcom/esotericsoftware/a/k;

    if-nez v0, :cond_0

    iput-object p0, p1, Lcom/esotericsoftware/a/g;->r:Lcom/esotericsoftware/a/k;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/esotericsoftware/a/g;->s:Lcom/esotericsoftware/a/k;

    iput-object p0, v0, Lcom/esotericsoftware/a/k;->b:Lcom/esotericsoftware/a/j;

    :goto_0
    iput-object p0, p1, Lcom/esotericsoftware/a/g;->s:Lcom/esotericsoftware/a/k;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    iput p2, p0, Lcom/esotericsoftware/a/k;->d:I

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/a/k;->e:I

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/a/k;->f:I

    if-eqz p5, :cond_1

    invoke-virtual {p1, p5}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/a/k;->g:I

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p1, p6}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    iput p1, p0, Lcom/esotericsoftware/a/k;->h:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/a/b;->a(ILcom/esotericsoftware/a/u;Lcom/esotericsoftware/a/d;)V

    iget-object p1, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    iget p2, v4, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    iget-object v0, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(Lcom/esotericsoftware/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    iput-object v0, p1, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    iput-object p1, p0, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    return-void
.end method
