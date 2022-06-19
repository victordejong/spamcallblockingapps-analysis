.class Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

.field final synthetic b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

.field final synthetic c:Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->c:Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;

    iput-object p2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    iput-object p3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    invoke-static {}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->finish()V

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->e()V

    .line 140
    iget-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {p1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    return-void
.end method
