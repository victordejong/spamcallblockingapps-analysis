.class final enum Lorg/jsoup/c/c$4;
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

    .line 1057
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z
    .locals 1

    const-string v0, "colgroup"

    .line 1107
    invoke-virtual {p2, v0}, Lorg/jsoup/c/m;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p2, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 5

    .line 1059
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 1060
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    return v1

    .line 1063
    :cond_0
    sget-object v0, Lorg/jsoup/c/c$17;->a:[I

    iget-object v2, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v2}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    const-string v3, "html"

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 1101
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$4;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 1096
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 5152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 6046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1096
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1099
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$4;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 3385
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1084
    iget-object v0, v0, Lorg/jsoup/c/i$f;->c:Ljava/lang/String;

    const-string v2, "colgroup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1085
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 4152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 5046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1085
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1086
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1

    .line 1089
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 1090
    sget-object p1, Lorg/jsoup/c/c$4;->InTable:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 1093
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$4;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 3377
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1072
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v4, "col"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1079
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$4;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 1074
    :cond_7
    sget-object v0, Lorg/jsoup/c/c$4;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1076
    :cond_8
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 1068
    :cond_9
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto :goto_0

    .line 2393
    :cond_a
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1065
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    :goto_0
    return v1
.end method
