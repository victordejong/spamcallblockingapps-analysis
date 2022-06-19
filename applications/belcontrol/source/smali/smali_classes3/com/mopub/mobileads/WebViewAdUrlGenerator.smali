.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/ad"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Lcom/mopub/common/ClientMetadata;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->G(Z)V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
