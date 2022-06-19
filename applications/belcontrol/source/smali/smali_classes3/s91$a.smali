.class public Ls91$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls91;->p(Lxn0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls91;


# direct methods
.method public constructor <init>(Ls91;)V
    .locals 0

    iput-object p1, p0, Ls91$a;->a:Ls91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Laj0;)V
    .locals 8

    const-string v0, "id"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v2, p0, Ls91$a;->a:Ls91;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lv91;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ls91$a;->a:Ls91;

    iget-object v3, v3, Lv91;->a:[Ljava/lang/String;

    array-length v3, v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Ls91$a;->a:Ls91;

    iget-object v6, v6, Lv91;->a:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ls91$a;->a:Ls91;

    iget-object v0, p1, Lv91;->c:Lv91$b;

    invoke-interface {v0, p1}, Lv91$b;->a(Lv91;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Ls91$a;->a:Ls91;

    iget-object v0, p1, Lv91;->c:Lv91$b;

    invoke-interface {v0, p1, v1}, Lv91$b;->b(Lv91;Z)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    iget-object p1, p0, Ls91$a;->a:Ls91;

    iget-object v0, p1, Lv91;->c:Lv91$b;

    invoke-interface {v0, p1, v1}, Lv91$b;->b(Lv91;Z)V

    return-void
.end method
