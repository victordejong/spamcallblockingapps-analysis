.class public final Lcom/criteo/publisher/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/Criteo;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/CriteoBannerAdListener;

.field private final d:Lcom/criteo/publisher/m/b;

.field private final e:Lcom/criteo/publisher/e/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/m/b;Lcom/criteo/publisher/e/c;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/criteo/publisher/k;->b:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoBannerView;->getCriteoBannerAdListener()Lcom/criteo/publisher/CriteoBannerAdListener;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/k;->c:Lcom/criteo/publisher/CriteoBannerAdListener;

    .line 65
    iput-object p2, p0, Lcom/criteo/publisher/k;->a:Lcom/criteo/publisher/Criteo;

    .line 66
    iput-object p3, p0, Lcom/criteo/publisher/k;->d:Lcom/criteo/publisher/m/b;

    .line 67
    iput-object p4, p0, Lcom/criteo/publisher/k;->e:Lcom/criteo/publisher/e/c;

    return-void
.end method

.method private a()Landroid/webkit/WebViewClient;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/k;->d:Lcom/criteo/publisher/m/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/m/b;->a()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/criteo/publisher/b/a;

    new-instance v2, Lcom/criteo/publisher/k$b;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/k$b;-><init>(Lcom/criteo/publisher/k;)V

    invoke-direct {v1, v2, v0}, Lcom/criteo/publisher/b/a;-><init>(Lcom/criteo/publisher/b/c;Landroid/content/ComponentName;)V

    return-object v1
.end method


# virtual methods
.method final a(Lcom/criteo/publisher/o;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/k;->e:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/l/a;

    iget-object v2, p0, Lcom/criteo/publisher/k;->c:Lcom/criteo/publisher/CriteoBannerAdListener;

    iget-object v3, p0, Lcom/criteo/publisher/k;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3, p1}, Lcom/criteo/publisher/l/a;-><init>(Lcom/criteo/publisher/CriteoBannerAdListener;Ljava/lang/ref/Reference;Lcom/criteo/publisher/o;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/k;->e:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/l/b;

    iget-object v2, p0, Lcom/criteo/publisher/k;->b:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-direct {p0}, Lcom/criteo/publisher/k;->a()Landroid/webkit/WebViewClient;

    move-result-object v3

    iget-object v4, p0, Lcom/criteo/publisher/k;->a:Lcom/criteo/publisher/Criteo;

    invoke-virtual {v4}, Lcom/criteo/publisher/Criteo;->getConfig()Lcom/criteo/publisher/model/t;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/criteo/publisher/l/b;-><init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Lcom/criteo/publisher/model/t;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
