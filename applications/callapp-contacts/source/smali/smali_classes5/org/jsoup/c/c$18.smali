.class final enum Lorg/jsoup/c/c$18;
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

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 76
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 77
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 79
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 83
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 83
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    sget-object v0, Lorg/jsoup/c/c$18;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/c/c;->process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 85
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v2, "head"

    if-eqz v0, :cond_4

    .line 4377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 85
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 5539
    iput-object p1, p2, Lorg/jsoup/c/b;->j:Lorg/jsoup/nodes/h;

    .line 88
    sget-object p1, Lorg/jsoup/c/c$18;->InHead:Lorg/jsoup/c/c;

    .line 6145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 89
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 89
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/jsoup/c/c$a;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    invoke-virtual {p2, v2}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 91
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 92
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 96
    :cond_6
    invoke-virtual {p2, v2}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method
