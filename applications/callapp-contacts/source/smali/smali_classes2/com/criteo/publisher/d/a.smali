.class public final Lcom/criteo/publisher/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/criteo/publisher/model/n;",
            "Lcom/criteo/publisher/model/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/m0/k;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/k;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/d/a;->a:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/d/a;->b:Lcom/criteo/publisher/m0/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/n;
    .locals 6

    .line 53
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1064
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    sget-object v1, Lcom/criteo/publisher/m0/a;->c:Lcom/criteo/publisher/m0/a;

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/criteo/publisher/d/a;->b:Lcom/criteo/publisher/m0/k;

    invoke-virtual {v1}, Lcom/criteo/publisher/m0/k;->b()Lcom/criteo/publisher/model/AdSize;

    move-result-object v1

    .line 1081
    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    .line 1070
    new-instance v3, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    .line 1072
    invoke-virtual {v3, v1}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v2}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1076
    sget-object v1, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/m0/a;

    goto :goto_0

    .line 1073
    :cond_2
    sget-object v1, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/m0/a;

    .line 59
    :goto_0
    new-instance v2, Lcom/criteo/publisher/model/n;

    new-instance v3, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v2, v3, v0, v1}, Lcom/criteo/publisher/model/n;-><init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Lcom/criteo/publisher/m0/a;)V

    return-object v2
.end method

.method public final a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/criteo/publisher/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/model/s;

    return-object p1
.end method

.method public final b(Lcom/criteo/publisher/model/n;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/criteo/publisher/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
