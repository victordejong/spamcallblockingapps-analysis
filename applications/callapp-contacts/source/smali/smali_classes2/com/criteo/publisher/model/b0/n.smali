.class public abstract Lcom/criteo/publisher/model/b0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/model/b0/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/criteo/publisher/model/b0/n$a;
    .locals 1

    .line 112
    new-instance v0, Lcom/criteo/publisher/model/b0/b$a;

    invoke-direct {v0}, Lcom/criteo/publisher/model/b0/b$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/b0/n;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/criteo/publisher/model/b0/h$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/b0/h$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Lcom/criteo/publisher/model/b0/m;
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/net/URI;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/m;->d()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/net/URL;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/m;->c()Lcom/criteo/publisher/model/b0/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/o;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/model/b0/p;

    .line 106
    invoke-virtual {v2}, Lcom/criteo/publisher/model/b0/p;->a()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method abstract h()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation
.end method

.method abstract i()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impressionPixels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation
.end method

.method abstract j()Lcom/criteo/publisher/model/b0/q;
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/q;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/net/URI;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/q;->a()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/net/URL;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/q;->b()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/criteo/publisher/model/b0/r;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/b0/r;

    return-object v0
.end method
