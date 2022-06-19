.class public final Lorg/jsoup/select/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/jsoup/select/g;Lorg/jsoup/nodes/m;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/g;->a(Lorg/jsoup/nodes/m;I)V

    .line 26
    invoke-virtual {v1}, Lorg/jsoup/nodes/m;->f()I

    move-result v3

    if-lez v3, :cond_0

    .line 27
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/m;->a(I)Lorg/jsoup/nodes/m;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/m;->A()Lorg/jsoup/nodes/m;

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v2, :cond_1

    .line 31
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/g;->b(Lorg/jsoup/nodes/m;I)V

    .line 1253
    iget-object v1, v1, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/g;->b(Lorg/jsoup/nodes/m;I)V

    if-eq v1, p1, :cond_2

    .line 38
    invoke-virtual {v1}, Lorg/jsoup/nodes/m;->A()Lorg/jsoup/nodes/m;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method
