.class public abstract Lcom/applovin/impl/sdk/e/y;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->a(ILcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/network/b$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/network/b$c<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/l;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/c$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->d(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/y;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/e/y$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/applovin/impl/sdk/e/y$1;-><init>(Lcom/applovin/impl/sdk/e/y;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/network/b$c;)V

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->aU:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/c/b;)V

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->aV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->b(Lcom/applovin/impl/sdk/c/b;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method public abstract h()I
.end method

.method public i()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ds:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cuid"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->du:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compass_random_token"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dw:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_random_token"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/y;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
