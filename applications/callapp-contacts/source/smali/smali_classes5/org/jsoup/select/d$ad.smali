.class public final Lorg/jsoup/select/d$ad;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 596
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

    .line 600
    instance-of p1, p1, Lorg/jsoup/nodes/f;

    if-nez p1, :cond_3

    .line 1751
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1752
    new-instance p1, Lorg/jsoup/select/c;

    invoke-direct {p1, v0}, Lorg/jsoup/select/c;-><init>(I)V

    goto :goto_1

    .line 2241
    :cond_0
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p1, Lorg/jsoup/nodes/h;

    .line 1754
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->n()Ljava/util/List;

    move-result-object p1

    .line 1755
    new-instance v2, Lorg/jsoup/select/c;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Lorg/jsoup/select/c;-><init>(I)V

    .line 1756
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    if-eq v3, p2, :cond_1

    .line 1758
    invoke-virtual {v2, v3}, Lorg/jsoup/select/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 600
    :goto_1
    invoke-virtual {p1}, Lorg/jsoup/select/c;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":only-child"

    return-object v0
.end method
