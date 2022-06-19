.class final enum Lorg/jsoup/c/c$1;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 5

    .line 22
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 25
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2369
    check-cast p1, Lorg/jsoup/c/i$d;

    .line 30
    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v2, p2, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    .line 3055
    iget-object v3, p1, Lorg/jsoup/c/i$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lorg/jsoup/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3063
    iget-object v3, p1, Lorg/jsoup/c/i$d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3067
    iget-object v4, p1, Lorg/jsoup/c/i$d;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-direct {v0, v2, v3, v4}, Lorg/jsoup/nodes/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    iget-object v2, p1, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/g;->b_(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lorg/jsoup/c/b;->c()Lorg/jsoup/nodes/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    .line 4071
    iget-boolean p1, p1, Lorg/jsoup/c/i$d;->f:Z

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p2}, Lorg/jsoup/c/b;->c()Lorg/jsoup/nodes/f;

    move-result-object p1

    sget v0, Lorg/jsoup/nodes/f$b;->b:I

    .line 4591
    iput v0, p1, Lorg/jsoup/nodes/f;->c:I

    .line 36
    :cond_2
    sget-object p1, Lorg/jsoup/c/c$1;->BeforeHtml:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    return v1

    .line 39
    :cond_3
    sget-object v0, Lorg/jsoup/c/c$1;->BeforeHtml:Lorg/jsoup/c/c;

    .line 6145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 40
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method
