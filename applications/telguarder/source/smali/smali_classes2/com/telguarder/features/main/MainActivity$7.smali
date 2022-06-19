.class Lcom/telguarder/features/main/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 510
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 511
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v0, v2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getTrendingUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/telguarder/features/main/MainActivity;->access$602(Lcom/telguarder/features/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$600(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 513
    check-cast p1, Landroid/widget/ImageButton;

    const p2, 0x7f0700db

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 514
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$600(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$7;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v2}, Lcom/telguarder/features/main/MainActivity;->access$700(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 517
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p2

    iget-object p2, p2, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-eq p2, v0, :cond_1

    .line 518
    check-cast p1, Landroid/widget/ImageButton;

    const p2, 0x7f0700da

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    :goto_0
    return v1
.end method
