.class public final Lcom/criteo/publisher/b/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/b/c;

.field private final b:Landroid/content/ComponentName;

.field private final c:Lcom/criteo/publisher/b/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/b/c;Landroid/content/ComponentName;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/b/a;->a:Lcom/criteo/publisher/b/c;

    .line 42
    iput-object p2, p0, Lcom/criteo/publisher/b/a;->b:Landroid/content/ComponentName;

    .line 43
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/criteo/publisher/q;->r()Lcom/criteo/publisher/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/b/a;->c:Lcom/criteo/publisher/b/b;

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/criteo/publisher/b/a;->c:Lcom/criteo/publisher/b/b;

    iget-object v0, p0, Lcom/criteo/publisher/b/a;->b:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/criteo/publisher/b/a;->a:Lcom/criteo/publisher/b/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/criteo/publisher/b/b;->a(Ljava/lang/String;Landroid/content/ComponentName;Lcom/criteo/publisher/b/c;)V

    const/4 p1, 0x1

    return p1
.end method
