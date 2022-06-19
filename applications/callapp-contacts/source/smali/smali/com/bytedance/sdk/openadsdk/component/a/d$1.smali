.class Lcom/bytedance/sdk/openadsdk/component/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/d;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(Lcom/bytedance/sdk/openadsdk/component/a/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(Lcom/bytedance/sdk/openadsdk/component/a/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    :cond_0
    return-void
.end method
