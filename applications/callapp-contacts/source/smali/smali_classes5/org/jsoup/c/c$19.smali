.class final enum Lorg/jsoup/c/c$19;
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

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z
    .locals 1

    const-string v0, "head"

    .line 170
    invoke-virtual {p2, v0}, Lorg/jsoup/c/m;->m(Ljava/lang/String;)Z

    .line 171
    invoke-virtual {p2, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 6

    .line 104
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 105
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    return v1

    .line 108
    :cond_0
    sget-object v0, Lorg/jsoup/c/c$17;->a:[I

    iget-object v2, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v2}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    const-string v4, "head"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 164
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$19;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 5385
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 152
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 155
    sget-object p1, Lorg/jsoup/c/c$19;->AfterHead:Lorg/jsoup/c/c;

    .line 6145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_0

    .line 156
    :cond_2
    sget-object v1, Lorg/jsoup/c/c$a;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$19;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 159
    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 3377
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 117
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v2

    const-string v5, "html"

    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 119
    sget-object v0, Lorg/jsoup/c/c$19;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/c/c;->process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 120
    :cond_5
    sget-object v5, Lorg/jsoup/c/c$a;->a:[Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object p1

    const-string v0, "base"

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/nodes/h;)V

    goto :goto_0

    :cond_6
    const-string v5, "meta"

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 126
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_7
    const-string v5, "title"

    .line 128
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 129
    invoke-static {v0, p2}, Lorg/jsoup/c/c;->access$200(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    goto :goto_0

    .line 130
    :cond_8
    sget-object v5, Lorg/jsoup/c/c$a;->b:[Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 131
    invoke-static {v0, p2}, Lorg/jsoup/c/c;->access$300(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    goto :goto_0

    :cond_9
    const-string v5, "noscript"

    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 134
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 135
    sget-object p1, Lorg/jsoup/c/c$19;->InHeadNoscript:Lorg/jsoup/c/c;

    .line 4145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    :cond_a
    const-string v5, "script"

    .line 136
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 139
    iget-object p1, p2, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v2, Lorg/jsoup/c/l;->ScriptData:Lorg/jsoup/c/l;

    .line 5124
    iput-object v2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    .line 140
    invoke-virtual {p2}, Lorg/jsoup/c/b;->b()V

    .line 141
    sget-object p1, Lorg/jsoup/c/c$19;->Text:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 142
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 143
    :cond_b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 147
    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$19;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 113
    :cond_d
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 2393
    :cond_e
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 110
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    :cond_f
    :goto_0
    return v1
.end method
