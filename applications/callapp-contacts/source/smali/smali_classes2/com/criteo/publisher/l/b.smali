.class public final Lcom/criteo/publisher/l/b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/model/t;

.field private final c:Landroid/webkit/WebViewClient;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Lcom/criteo/publisher/model/t;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebViewClient;",
            "Lcom/criteo/publisher/model/t;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/criteo/publisher/l/b;->a:Ljava/lang/ref/Reference;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/l/b;->c:Landroid/webkit/WebViewClient;

    .line 52
    iput-object p3, p0, Lcom/criteo/publisher/l/b;->b:Lcom/criteo/publisher/model/t;

    .line 53
    iput-object p4, p0, Lcom/criteo/publisher/l/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1062
    iget-object v0, p0, Lcom/criteo/publisher/l/b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/criteo/publisher/l/b;->b:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->c()Ljava/lang/String;

    move-result-object v0

    .line 1075
    iget-object v2, p0, Lcom/criteo/publisher/l/b;->b:Lcom/criteo/publisher/model/t;

    invoke-virtual {v2}, Lcom/criteo/publisher/model/t;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/l/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1067
    iget-object v0, p0, Lcom/criteo/publisher/l/b;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    .line 1068
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
