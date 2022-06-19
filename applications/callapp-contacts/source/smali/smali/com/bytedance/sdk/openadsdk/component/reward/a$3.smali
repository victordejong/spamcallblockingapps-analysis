.class Lcom/bytedance/sdk/openadsdk/component/reward/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/a$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/reward/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/a$a;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/a$a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 325
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->n()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "datastoreGet throw IOException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreenVideoCache"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 354
    iget-object v3, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/a$a;

    if-eqz v2, :cond_0

    .line 356
    invoke-interface {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a$a;->a(ZLjava/lang/Object;)V

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-wide/16 v3, 0x0

    move-object v5, v1

    move-object v7, v2

    move-wide v8, v3

    const/4 v6, 0x1

    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/a$a;

    if-eqz v0, :cond_2

    .line 362
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a$a;->a(ZLjava/lang/Object;)V

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez p1, :cond_3

    const-wide/16 v3, -0x3

    goto :goto_0

    :cond_3
    iget-wide v3, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_0
    move-object v7, v0

    move-object v5, v1

    move-wide v8, v3

    const/4 v6, 0x0

    :goto_1
    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a;ZLcom/bytedance/sdk/openadsdk/core/e/i;JLcom/bytedance/sdk/adnet/core/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->a:Ljava/io/File;

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/a$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 372
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a$a;->a(ZLjava/lang/Object;)V

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$3;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez p1, :cond_1

    const-wide/16 v0, -0x2

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_0
    move-wide v6, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a;ZLcom/bytedance/sdk/openadsdk/core/e/i;JLcom/bytedance/sdk/adnet/core/m;)V

    return-void
.end method
