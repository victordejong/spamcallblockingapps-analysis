.class Lcom/bytedance/sdk/adnet/b/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$6;->b:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$6;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    if-eqz v0, :cond_2

    .line 633
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/b/d$c;

    .line 638
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$e;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->a()Lcom/bytedance/sdk/adnet/err/VAdError;

    move-result-object v3

    if-nez v3, :cond_1

    .line 642
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->b(Lcom/bytedance/sdk/adnet/b/d$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v3, v3, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;[B)[B

    .line 643
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->c(Lcom/bytedance/sdk/adnet/b/d$a;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 644
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/adnet/b/d$e;->a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V

    goto :goto_1

    .line 646
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$e;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/adnet/b/d$e;->b(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 648
    :goto_1
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$e;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/adnet/b/d$e;->b()V

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$6;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
