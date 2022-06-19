.class Lcom/telguarder/helpers/web/WebViewPreloadHelper$3;
.super Ljava/lang/Object;
.source "WebViewPreloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$3;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$3;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    return-void
.end method
