.class public final Lorg/jsoup/select/d$ag;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ag"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 762
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 5

    .line 766
    instance-of p1, p2, Lorg/jsoup/nodes/o;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1351
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    iget-object v0, p2, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/m;

    .line 1353
    instance-of v2, v1, Lorg/jsoup/nodes/p;

    if-eqz v2, :cond_1

    .line 1354
    check-cast v1, Lorg/jsoup/nodes/p;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1356
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 770
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/p;

    .line 771
    new-instance v1, Lorg/jsoup/nodes/o;

    .line 2142
    iget-object v2, p2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3038
    iget-object v2, v2, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    .line 772
    invoke-static {v2}, Lorg/jsoup/c/h;->a(Ljava/lang/String;)Lorg/jsoup/c/h;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/o;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 773
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/p;->h(Lorg/jsoup/nodes/m;)V

    .line 774
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/o;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":matchText"

    return-object v0
.end method
