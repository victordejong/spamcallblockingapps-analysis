.class final enum Lorg/jsoup/c/c$12;
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

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    const-string v0, "html"

    .line 69
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 70
    sget-object v0, Lorg/jsoup/c/c$12;->BeforeHead:Lorg/jsoup/c/c;

    .line 5145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 71
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 47
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 51
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 53
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 54
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 56
    sget-object p1, Lorg/jsoup/c/c$12;->BeforeHead:Lorg/jsoup/c/c;

    .line 4145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 57
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/c/c$a;->e:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$12;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 59
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 63
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$12;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method
