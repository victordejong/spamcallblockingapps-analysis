.class Lcom/facebook/login/g$2;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/g;->c(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/login/j$c;

.field final synthetic c:Lcom/facebook/login/g;


# direct methods
.method constructor <init>(Lcom/facebook/login/g;Landroid/os/Bundle;Lcom/facebook/login/j$c;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iput-object p2, p0, Lcom/facebook/login/g$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/login/g$2;->b:Lcom/facebook/login/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/FacebookException;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iget-object v0, v0, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    iget-object v1, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iget-object v1, v1, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    .line 160
    invoke-virtual {v1}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v1

    const-string/jumbo v2, "Caught exception"

    .line 162
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v1, v2, v3}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/j;->b(Lcom/facebook/login/j$d;)V

    .line 163
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 146
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/facebook/login/g$2;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iget-object v1, p0, Lcom/facebook/login/g$2;->b:Lcom/facebook/login/j$c;

    iget-object v2, p0, Lcom/facebook/login/g$2;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/g;->b(Lcom/facebook/login/j$c;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    iget-object v1, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iget-object v1, v1, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    iget-object v2, p0, Lcom/facebook/login/g$2;->c:Lcom/facebook/login/g;

    iget-object v2, v2, Lcom/facebook/login/g;->b:Lcom/facebook/login/j;

    .line 151
    invoke-virtual {v2}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v2

    const-string/jumbo v3, "Caught exception"

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v2, v3, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->b(Lcom/facebook/login/j$d;)V

    goto :goto_0
.end method
