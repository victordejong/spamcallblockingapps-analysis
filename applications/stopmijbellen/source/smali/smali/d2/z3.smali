.class public Ld2/z3;
.super Ld2/x3$j;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld2/z3;->b:Ld2/x3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld2/x3$j;-><init>(Ld2/x3;Ld2/y3;)V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string p1, "UTF-8"

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ld2/z3;->b:Ld2/x3;

    .line 3
    iget-object v1, v1, Ld2/x3;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/javascript"

    invoke-direct {v1, v2, p1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "UTF-8 not supported."

    .line 6
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v1, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-object v0
.end method
