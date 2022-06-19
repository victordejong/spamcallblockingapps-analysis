.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/ad"

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 23
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a(Lcom/mopub/common/ClientMetadata;)V

    .line 28
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->a()V

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
