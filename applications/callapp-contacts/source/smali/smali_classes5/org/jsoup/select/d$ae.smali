.class public final Lorg/jsoup/select/d$ae;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ae"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 4

    .line 1241
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p1, Lorg/jsoup/nodes/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 612
    instance-of v1, p1, Lorg/jsoup/nodes/f;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 615
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->m()Lorg/jsoup/select/c;

    move-result-object p1

    .line 616
    invoke-virtual {p1}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    .line 2174
    iget-object v2, v2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3174
    iget-object v3, p2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 617
    invoke-virtual {v2, v3}, Lorg/jsoup/c/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne v1, p1, :cond_3

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":only-of-type"

    return-object v0
.end method
