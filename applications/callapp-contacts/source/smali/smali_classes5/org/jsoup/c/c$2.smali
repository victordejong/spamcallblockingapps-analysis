.class final enum Lorg/jsoup/c/c$2;
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

    .line 990
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 6

    .line 992
    iget-object v0, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->Character:Lorg/jsoup/c/i$i;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 2331
    iget-object v0, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 994
    invoke-static {}, Lorg/jsoup/c/c;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 2567
    :cond_0
    iget-object p2, p2, Lorg/jsoup/c/b;->m:Ljava/util/List;

    .line 3331
    iget-object p1, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 998
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 3567
    :cond_1
    iget-object v0, p2, Lorg/jsoup/c/b;->m:Ljava/util/List;

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4567
    iget-object v0, p2, Lorg/jsoup/c/b;->m:Ljava/util/List;

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    invoke-static {v1}, Lorg/jsoup/c/c;->access$500(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1005
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1006
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v4

    .line 5152
    iget-object v4, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 6046
    iget-object v4, v4, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1006
    sget-object v5, Lorg/jsoup/c/c$a;->C:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6551
    iput-boolean v2, p2, Lorg/jsoup/c/b;->o:Z

    .line 1008
    new-instance v4, Lorg/jsoup/c/i$b;

    invoke-direct {v4}, Lorg/jsoup/c/i$b;-><init>()V

    .line 7326
    iput-object v1, v4, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 1008
    sget-object v1, Lorg/jsoup/c/c$2;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, v4, v1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    .line 7551
    iput-boolean v3, p2, Lorg/jsoup/c/b;->o:Z

    goto :goto_0

    .line 1011
    :cond_2
    new-instance v4, Lorg/jsoup/c/i$b;

    invoke-direct {v4}, Lorg/jsoup/c/i$b;-><init>()V

    .line 8326
    iput-object v1, v4, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 1011
    sget-object v1, Lorg/jsoup/c/c$2;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, v4, v1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    goto :goto_0

    .line 1014
    :cond_3
    new-instance v4, Lorg/jsoup/c/i$b;

    invoke-direct {v4}, Lorg/jsoup/c/i$b;-><init>()V

    .line 9326
    iput-object v1, v4, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 1014
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 1016
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/c/b;->k()V

    .line 10157
    :cond_5
    iget-object v0, p2, Lorg/jsoup/c/b;->i:Lorg/jsoup/c/c;

    .line 11145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1019
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method
