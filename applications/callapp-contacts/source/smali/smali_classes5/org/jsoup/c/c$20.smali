.class final enum Lorg/jsoup/c/c$20;
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

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    .line 198
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 199
    new-instance v0, Lorg/jsoup/c/i$b;

    invoke-direct {v0}, Lorg/jsoup/c/i$b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4326
    iput-object p1, v0, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 2

    .line 176
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 178
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lorg/jsoup/c/c$20;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 180
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 180
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noscript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 182
    sget-object p1, Lorg/jsoup/c/c$20;->InHead:Lorg/jsoup/c/c;

    .line 2145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 183
    :cond_2
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 183
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/c/c$a;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 186
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$20;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 188
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 188
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/c/c$a;->K:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1

    .line 192
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$20;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 185
    :cond_8
    :goto_1
    sget-object v0, Lorg/jsoup/c/c$20;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method
