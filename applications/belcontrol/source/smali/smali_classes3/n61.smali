.class public Ln61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu61;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln61$b;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ln61$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Ln61;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "PROTO_TO_SERVER"

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj91;->B(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "phone_number"

    iget-object v3, p0, Ln61;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lj91;->D(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    const-string v2, "Unable to build request"

    invoke-static {p0, v2, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj91;->D(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Li91;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ln61;->a:Lorg/json/JSONObject;

    const-string v1, "phone_number"

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Ln61;->a:Lorg/json/JSONObject;

    const-string v1, "country"

    invoke-virtual {p1}, Li91;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Unable to add number"

    invoke-static {p0, v0, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    const-string v0, "PROTO_FROM_SERVER"

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj91;->B(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "Empty response"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lj91;->D(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server JSON: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    new-instance v1, Ln61$b;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v1, v3, p1}, Ln61$b;-><init>(Lorg/json/JSONObject;Ln61$a;)V

    iput-object v1, p0, Ln61;->b:Ln61$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lu81;

    invoke-direct {v1}, Lu81;-><init>()V

    iget-object v3, p0, Ln61;->b:Ln61$b;

    iget-object v3, v3, Ln61$b;->a:Ljava/lang/String;

    invoke-static {v3}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object p1, v1, Lu81;->d:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Ln61;->b:Ln61$b;

    iget-object p1, p1, Ln61$b;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ln61;->b:Ln61$b;

    iget-object p1, p1, Ln61$b;->b:Ljava/lang/String;

    sget-object v4, Lu81$a;->a:Lu81$a;

    invoke-virtual {v1, v3, p1, v4}, Lu81;->G(Li91;Ljava/lang/String;Lu81$a;)V

    invoke-virtual {v1}, Lu81;->z()Z

    :cond_1
    invoke-virtual {v1}, Lu81;->E()V

    iget-object p1, p0, Ln61;->b:Ln61$b;

    iget p1, p1, Ln61$b;->d:I

    if-lez p1, :cond_2

    new-instance p1, Lo81;

    invoke-direct {p1}, Lo81;-><init>()V

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lo81;->I(Ljava/lang/String;Z)Lo81;

    invoke-virtual {p1}, Lo81;->K()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Lo81;->N(Li91;)V

    iget-object v1, p0, Ln61;->b:Ln61$b;

    iget v1, v1, Ln61$b;->g:I

    iput v1, p1, Lo81;->d:I

    invoke-virtual {p1}, Lo81;->z()Z

    :cond_2
    new-instance p1, Lm81;

    invoke-direct {p1}, Lm81;-><init>()V

    invoke-virtual {p1, v3}, Lm81;->E(Li91;)Z

    new-instance p1, Lm81;

    invoke-direct {p1}, Lm81;-><init>()V

    invoke-virtual {p1, v3}, Lm81;->H(Li91;)Lm81;

    invoke-virtual {p1, v3}, Lm81;->K(Li91;)V

    iget-object v1, p0, Ln61;->b:Ln61$b;

    iget-object v2, v1, Ln61$b;->b:Ljava/lang/String;

    iput-object v2, p1, Lm81;->f:Ljava/lang/String;

    iget-object v2, v1, Ln61$b;->c:Ljava/lang/String;

    iput-object v2, p1, Lm81;->g:Ljava/lang/String;

    iget v2, v1, Ln61$b;->f:I

    iput v2, p1, Lm81;->j:I

    iget v2, v1, Ln61$b;->d:I

    iput v2, p1, Lm81;->h:I

    iget v1, v1, Ln61$b;->g:I

    iput v1, p1, Lm81;->k:I

    invoke-virtual {p1}, Lv71;->z()Z

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj91;->D(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "Unable to parse response"

    invoke-static {p0, v1, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lj91;->D(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()Ln61$b;
    .locals 1

    iget-object v0, p0, Ln61;->b:Ln61$b;

    return-object v0
.end method
