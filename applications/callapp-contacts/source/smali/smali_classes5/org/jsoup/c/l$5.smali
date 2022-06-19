.class final enum Lorg/jsoup/c/l$5;
.super Lorg/jsoup/c/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 258
    sget-object p2, Lorg/jsoup/c/l$5;->Rcdata:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 217
    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p2}, Lorg/jsoup/c/a;->l()Ljava/lang/String;

    move-result-object p2

    .line 219
    iget-object v0, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v0, p2}, Lorg/jsoup/c/i$h;->b(Ljava/lang/String;)V

    .line 220
    iget-object p1, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 224
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 251
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/l$5;->anythingElse(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V

    return-void

    .line 243
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/k;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 245
    sget-object p2, Lorg/jsoup/c/l$5;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 248
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/l$5;->anythingElse(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V

    return-void

    .line 237
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/k;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    sget-object p2, Lorg/jsoup/c/l$5;->SelfClosingStartTag:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 240
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/l$5;->anythingElse(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V

    return-void

    .line 231
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/c/k;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    sget-object p2, Lorg/jsoup/c/l$5;->BeforeAttributeName:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 234
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/l$5;->anythingElse(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V

    return-void
.end method
