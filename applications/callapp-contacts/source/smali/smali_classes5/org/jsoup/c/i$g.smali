.class final Lorg/jsoup/c/i$g;
.super Lorg/jsoup/c/i$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Lorg/jsoup/c/i$h;-><init>()V

    .line 221
    sget-object v0, Lorg/jsoup/c/i$i;->StartTag:Lorg/jsoup/c/i$i;

    iput-object v0, p0, Lorg/jsoup/c/i$g;->a:Lorg/jsoup/c/i$i;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/c/i$g;
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/jsoup/c/i$g;->b:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    .line 234
    iget-object p1, p0, Lorg/jsoup/c/i$g;->b:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/c/i$g;->c:Ljava/lang/String;

    return-object p0
.end method

.method final synthetic a()Lorg/jsoup/c/i;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/jsoup/c/i$g;->h()Lorg/jsoup/c/i$h;

    move-result-object v0

    return-object v0
.end method

.method final h()Lorg/jsoup/c/i$h;
    .locals 1

    .line 226
    invoke-super {p0}, Lorg/jsoup/c/i$h;->h()Lorg/jsoup/c/i$h;

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
