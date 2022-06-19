.class public final Lorg/jsoup/select/d$d;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 154
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 5

    .line 160
    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object p1

    .line 1325
    new-instance p2, Ljava/util/ArrayList;

    iget v0, p1, Lorg/jsoup/nodes/b;->a:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1326
    :goto_0
    iget v2, p1, Lorg/jsoup/nodes/b;->a:I

    if-ge v1, v2, :cond_1

    .line 1327
    iget-object v2, p1, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1329
    new-instance v2, Lorg/jsoup/nodes/a;

    iget-object v3, p1, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p1}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 1330
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1332
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/nodes/a;

    .line 2056
    iget-object p2, p2, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 162
    invoke-static {p2}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
