.class Lcom/bytedance/sdk/openadsdk/core/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/m;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/m;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 10

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;J)J

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->e(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/util/List;

    move-result-object v1

    const-string v2, "alpha"

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 149
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/m;->e(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 151
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :catchall_0
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "image_view"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :catchall_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "root_view"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->f(Lcom/bytedance/sdk/openadsdk/core/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/m;->d(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz v0, :cond_4

    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->d(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;J)J

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;J)J

    return-void
.end method

.method public b()V
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/m;->d(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->c:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;J)J

    :cond_0
    return-void
.end method
