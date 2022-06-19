.class public Lorg/jsoup/select/d$ab;
.super Lorg/jsoup/select/d$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 544
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/nodes/h;)I
    .locals 5

    .line 1241
    iget-object v0, p1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 550
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->m()Lorg/jsoup/select/c;

    move-result-object v0

    .line 551
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->q()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/select/c;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 552
    invoke-virtual {v0, v1}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 2174
    iget-object v3, v3, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3174
    iget-object v4, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 552
    invoke-virtual {v3, v4}, Lorg/jsoup/c/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
