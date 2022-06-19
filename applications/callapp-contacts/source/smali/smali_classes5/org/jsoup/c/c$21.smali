.class final enum Lorg/jsoup/c/c$21;
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

    .line 203
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    const-string v0, "body"

    .line 249
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 8161
    iput-boolean v0, p2, Lorg/jsoup/c/b;->n:Z

    .line 251
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 205
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 206
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto/16 :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 208
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto/16 :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto/16 :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 213
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    sget-object v0, Lorg/jsoup/c/c$21;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    :cond_3
    const-string v3, "body"

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 4161
    iput-boolean v1, p2, Lorg/jsoup/c/b;->n:Z

    .line 219
    sget-object p1, Lorg/jsoup/c/c$21;->InBody:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    :cond_4
    const-string v3, "frameset"

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 221
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 222
    sget-object p1, Lorg/jsoup/c/c$21;->InFrameset:Lorg/jsoup/c/c;

    .line 6145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 223
    :cond_5
    sget-object v0, Lorg/jsoup/c/c$a;->g:[Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 6543
    iget-object v0, p2, Lorg/jsoup/c/b;->j:Lorg/jsoup/nodes/h;

    .line 226
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/h;)V

    .line 227
    sget-object v1, Lorg/jsoup/c/c$21;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    .line 228
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->d(Lorg/jsoup/nodes/h;)Z

    goto :goto_0

    :cond_6
    const-string v0, "head"

    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 233
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$21;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    goto :goto_0

    .line 235
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 236
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/c/c$a;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$21;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    goto :goto_0

    .line 239
    :cond_9
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 243
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$21;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
