.class final enum Lorg/jsoup/c/c$3;
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

    .line 1024
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 1026
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_2

    .line 1385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1026
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1030
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1033
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/b;->l()V

    .line 1034
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 3152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 4046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1034
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1035
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1036
    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 1037
    invoke-virtual {p2}, Lorg/jsoup/c/b;->n()V

    .line 1038
    sget-object p1, Lorg/jsoup/c/c$3;->InTable:Lorg/jsoup/c/c;

    .line 4145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 1041
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1041
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/jsoup/c/c$a;->A:[Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1042
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1042
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1044
    :cond_4
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1045
    invoke-virtual {p2, v2}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1047
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1048
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1048
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/c/c$a;->L:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1049
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1052
    :cond_7
    sget-object v0, Lorg/jsoup/c/c$3;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method
