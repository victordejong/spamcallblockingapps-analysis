.class public Lorg/jsoup/select/d$ac;
.super Lorg/jsoup/select/d$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 522
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/nodes/h;)I
    .locals 5

    .line 1241
    iget-object v0, p1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 527
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->m()Lorg/jsoup/select/c;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 2174
    iget-object v3, v2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3174
    iget-object v4, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 529
    invoke-virtual {v3, v4}, Lorg/jsoup/c/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v2, p1, :cond_0

    :cond_2
    return v1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-of-type"

    return-object v0
.end method
