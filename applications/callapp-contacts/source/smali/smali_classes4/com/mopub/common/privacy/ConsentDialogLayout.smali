.class Lcom/mopub/common/privacy/ConsentDialogLayout;
.super Lcom/mopub/common/CloseableLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/ConsentDialogLayout$b;,
        Lcom/mopub/common/privacy/ConsentDialogLayout$a;
    }
.end annotation


# static fields
.field static a:I = 0x65


# instance fields
.field final b:Landroid/webkit/WebView;

.field c:Lcom/mopub/common/privacy/ConsentDialogLayout$b;

.field d:Lcom/mopub/common/privacy/ConsentDialogLayout$a;

.field final e:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->e:Landroid/webkit/WebViewClient;

    .line 62
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->a()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->e:Landroid/webkit/WebViewClient;

    .line 67
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->a()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->e:Landroid/webkit/WebViewClient;

    .line 72
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->a()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->b:Landroid/webkit/WebView;

    return-void
.end method

.method private a()Landroid/webkit/WebView;
    .locals 4

    .line 92
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 102
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 110
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setCloseVisible(Z)V

    .line 114
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->d:Lcom/mopub/common/privacy/ConsentDialogLayout$a;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->c:Lcom/mopub/common/privacy/ConsentDialogLayout$b;

    return-object p0
.end method
