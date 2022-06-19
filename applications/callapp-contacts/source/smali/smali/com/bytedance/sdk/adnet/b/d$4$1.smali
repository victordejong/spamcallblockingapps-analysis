.class Lcom/bytedance/sdk/adnet/b/d$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d$4;->a(Lcom/bytedance/sdk/adnet/core/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/core/m;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d$4;Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->a:Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/d$4;->c:Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/b/d$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->a:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/d$4$1;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iget-object v3, v3, Lcom/bytedance/sdk/adnet/b/d$4;->b:Lcom/bytedance/sdk/adnet/b/d$e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m;Lcom/bytedance/sdk/adnet/b/d$e;)V

    return-void
.end method
