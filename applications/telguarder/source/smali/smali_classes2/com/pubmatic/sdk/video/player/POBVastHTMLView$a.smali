.class Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;
.super Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->renderVastHTMLView(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastHTMLView;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V
    .locals 0

    iput-object p4, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-direct {p0, p2, p3}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;)V

    return-void
.end method


# virtual methods
.method public loadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "<html><head><meta name=\"viewport\" content=\"user-scalable=0, width=device-width, initial-scale=1\"/><style>body{margin:0;padding:0;}div{display:block;width:100%%;height:100%%;}</style></head><body><div align=\"center\">%s</div></body></html>"

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/Formatter;->close()V

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/pubmatic/sdk/common/POBError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to render creative, due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f1

    invoke-direct {p2, v0, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->notifyError(Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
