.class Lcom/telguarder/features/intro/IntroPage1$2;
.super Ljava/lang/Object;
.source "IntroPage1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/intro/IntroPage1;->preloadWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/intro/IntroPage1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/intro/IntroPage1;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/telguarder/features/intro/IntroPage1$2;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    iput-object p2, p0, Lcom/telguarder/features/intro/IntroPage1$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroPage1$2;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-virtual {v0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/telguarder/helpers/web/LollipopFixedWebView;

    iget-object v1, p0, Lcom/telguarder/features/intro/IntroPage1$2;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-virtual {v1}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 102
    iget-object v1, p0, Lcom/telguarder/features/intro/IntroPage1$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/intro/IntroPage1$2;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-static {v2}, Lcom/telguarder/features/intro/IntroPage1;->access$200(Lcom/telguarder/features/intro/IntroPage1;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
