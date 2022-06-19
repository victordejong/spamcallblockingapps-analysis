.class public Lcom/applovin/impl/mediation/debugger/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/mediation/debugger/a/b/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/applovin/impl/mediation/debugger/a/a/d;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/mediation/debugger/a/b/b;Lcom/applovin/impl/sdk/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    const-string p2, "name"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->b:Ljava/lang/String;

    const-string p2, "display_name"

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->c:Ljava/lang/String;

    const-string p2, "bidder_placement"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v1, Lcom/applovin/impl/mediation/debugger/a/a/d;

    invoke-direct {v1, p2, p3}, Lcom/applovin/impl/mediation/debugger/a/a/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/a/d;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/a/d;

    :goto_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "placements"

    invoke-static {p1, v1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->e:Ljava/util/List;

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->e:Ljava/util/List;

    new-instance v3, Lcom/applovin/impl/mediation/debugger/a/a/d;

    invoke-direct {v3, v1, p3}, Lcom/applovin/impl/mediation/debugger/a/a/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/debugger/a/b/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/applovin/impl/mediation/debugger/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/a/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a/b;->e:Ljava/util/List;

    return-object v0
.end method
