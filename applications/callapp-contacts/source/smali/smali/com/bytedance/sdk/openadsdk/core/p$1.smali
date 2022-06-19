.class Lcom/bytedance/sdk/openadsdk/core/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/j;

.field final synthetic c:I

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o$a;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method
