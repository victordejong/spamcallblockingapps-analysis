.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "clean-channel"

    const-string v2, ""

    .line 63
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
