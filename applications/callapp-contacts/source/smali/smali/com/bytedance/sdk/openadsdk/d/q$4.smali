.class Lcom/bytedance/sdk/openadsdk/d/q$4;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->b(Ljava/lang/String;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->b:J

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->c:J

    iput p8, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->d:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->b:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->c:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "start_ts"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "end_ts"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "intercept_type"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "type"

    const-string v4, "intercept_js"

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->a:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v3, "duration"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->b:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$4;->e:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/d/q;->d(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONArray;Ljava/lang/Object;)V

    .line 306
    monitor-exit v0

    return-void

    .line 296
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
