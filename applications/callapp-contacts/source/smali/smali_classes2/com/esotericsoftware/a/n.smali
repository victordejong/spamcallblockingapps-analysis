.class final Lcom/esotericsoftware/a/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/esotericsoftware/a/p;

.field b:Lcom/esotericsoftware/a/p;

.field c:Lcom/esotericsoftware/a/p;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/esotericsoftware/a/n;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/esotericsoftware/a/n;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/n;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    invoke-static {v0, p1, p2}, Lcom/esotericsoftware/a/n;->a(Lcom/esotericsoftware/a/n;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    iget-object v0, p0, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    iget v0, v0, Lcom/esotericsoftware/a/p;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iget v1, v1, Lcom/esotericsoftware/a/p;->c:I

    iget v2, p1, Lcom/esotericsoftware/a/p;->c:I

    if-nez p2, :cond_1

    const v3, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v3, p2, Lcom/esotericsoftware/a/p;->c:I

    :goto_0
    if-ge v2, v1, :cond_5

    if-le v3, v0, :cond_5

    if-gt v2, v0, :cond_3

    if-lt v3, v1, :cond_2

    iget-object p0, p0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    goto :goto_1

    :cond_3
    if-lt v3, v1, :cond_4

    iput-object p1, p0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/esotericsoftware/a/n;

    invoke-direct {v0}, Lcom/esotericsoftware/a/n;-><init>()V

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    iget-object p2, p0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iget-object p2, p0, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    iget-object p2, p0, Lcom/esotericsoftware/a/n;->d:Ljava/lang/String;

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->d:Ljava/lang/String;

    iget p2, p0, Lcom/esotericsoftware/a/n;->e:I

    iput p2, v0, Lcom/esotericsoftware/a/n;->e:I

    iget-object p2, p0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    iput-object p1, p0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iput-object v0, p0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    :cond_5
    :goto_1
    return-object p0
.end method
