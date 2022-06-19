.class final enum Lorg/jsoup/c/l$64;
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

    .line 1617
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 6

    const-string v0, "]]>"

    .line 2232
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2234
    iget-object v2, p2, Lorg/jsoup/c/a;->a:[C

    iget-object v3, p2, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v4, p2, Lorg/jsoup/c/a;->e:I

    invoke-static {v2, v3, v4, v1}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 2235
    iget v3, p2, Lorg/jsoup/c/a;->e:I

    add-int/2addr v3, v1

    iput v3, p2, Lorg/jsoup/c/a;->e:I

    goto :goto_0

    .line 2237
    :cond_0
    iget v1, p2, Lorg/jsoup/c/a;->c:I

    iget v2, p2, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 2239
    invoke-virtual {p2}, Lorg/jsoup/c/a;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2243
    :cond_1
    iget v1, p2, Lorg/jsoup/c/a;->c:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 2244
    iget-object v2, p2, Lorg/jsoup/c/a;->a:[C

    iget-object v3, p2, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v4, p2, Lorg/jsoup/c/a;->e:I

    sub-int v5, v1, v4

    invoke-static {v2, v3, v4, v5}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 2245
    iput v1, p2, Lorg/jsoup/c/a;->e:I

    .line 1620
    :goto_0
    iget-object v1, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/c/a;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1622
    :cond_2
    new-instance p2, Lorg/jsoup/c/i$a;

    iget-object v0, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/jsoup/c/i$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    .line 1623
    sget-object p2, Lorg/jsoup/c/l$64;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    :cond_3
    return-void
.end method
