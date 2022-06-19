.class Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/MRAIDExpandedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTwoPartContentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/webview/VASAdsMRAIDWebView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/webview/VASAdsMRAIDWebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/webview/MRAIDExpandedActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->a:Ljava/lang/ref/WeakReference;

    .line 68
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->b:Ljava/lang/ref/WeakReference;

    .line 69
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/MRAIDExpandedActivity$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 57
    check-cast p1, [Ljava/lang/String;

    .line 2092
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2096
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2098
    iget v0, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2099
    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 1110
    iget-object v1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 1111
    iget-object v2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    .line 1116
    invoke-static {}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Failed to retrieve expanded content."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const-string p1, "Unable to expand"

    const-string v0, "expand"

    .line 1118
    invoke-virtual {v1, p1, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v2}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->finish()V

    return-void

    .line 1126
    :cond_0
    new-instance v3, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask$1;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    const-string v0, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;)V

    return-void

    .line 1144
    :cond_1
    invoke-static {}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Two Part Expandable WebView was gone."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 1147
    invoke-static {v2}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    :cond_0
    return-void
.end method
