.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 704
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "NativeExpressView"

    const-string v1, "MSG_RENDER_TIME_OUT-->OnAdRenderRunnable......run...."

    .line 705
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/4 v1, 0x0

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ZFFI)V

    :cond_0
    return-void
.end method
