.class public Lcom/facebook/c/a/d;
.super Ljava/lang/Object;
.source "WebDialogParameters.java"


# direct methods
.method public static a(Lcom/facebook/c/b/a;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/c/b/a;->b()Lcom/facebook/c/b/b;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    const-string/jumbo v2, "hashtag"

    .line 180
    invoke-virtual {v1}, Lcom/facebook/c/b/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/facebook/c/b/c;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lcom/facebook/c/a/d;->a(Lcom/facebook/c/b/a;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "href"

    .line 120
    invoke-virtual {p0}, Lcom/facebook/c/b/c;->a()Landroid/net/Uri;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const-string/jumbo v1, "quote"

    .line 125
    invoke-virtual {p0}, Lcom/facebook/c/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static a(Lcom/facebook/c/b/g;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 131
    invoke-static {p0}, Lcom/facebook/c/a/d;->a(Lcom/facebook/c/b/a;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "action_type"

    .line 136
    invoke-virtual {p0}, Lcom/facebook/c/b/g;->c()Lcom/facebook/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/c/b/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/facebook/c/a/c;->a(Lcom/facebook/c/b/g;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/c/a/c;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v2, "action_properties"

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unable to serialize the ShareOpenGraphContent to JSON"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
