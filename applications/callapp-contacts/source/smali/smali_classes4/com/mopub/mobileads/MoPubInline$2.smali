.class final Lcom/mopub/mobileads/MoPubInline$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubInline;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubInline;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubInline;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline$2;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReady(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method
