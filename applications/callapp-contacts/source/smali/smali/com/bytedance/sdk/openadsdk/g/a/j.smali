.class public Lcom/bytedance/sdk/openadsdk/g/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/bytedance/sdk/openadsdk/g/a/a;

.field c:Ljava/lang/String;

.field d:Lcom/bytedance/sdk/openadsdk/g/a/h;

.field e:Landroid/content/Context;

.field f:Z

.field g:Z

.field h:Z

.field i:Lcom/bytedance/sdk/openadsdk/g/a/m;

.field j:Lcom/bytedance/sdk/openadsdk/g/a/n;

.field k:Ljava/lang/String;

.field final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Z

.field o:Z

.field p:Lcom/bytedance/sdk/openadsdk/g/a/k$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->c:Ljava/lang/String;

    const-string v0, "host"

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->k:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->l:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->m:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->c:Ljava/lang/String;

    const-string v0, "host"

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->k:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->l:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->m:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    return-void
.end method

.method private c()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->c:Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->d:Lcom/bytedance/sdk/openadsdk/g/a/h;

    if-eqz v0, :cond_2

    return-void

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->o:Z

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/l;)Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/h;->a(Lcom/bytedance/sdk/openadsdk/g/a/l;)Lcom/bytedance/sdk/openadsdk/g/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->d:Lcom/bytedance/sdk/openadsdk/g/a/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->f:Z

    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/j;->g:Z

    return-object p0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/g/a/q;
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/j;->c()V

    .line 152
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/q;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/g/a/q;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/j;)V

    return-object v0
.end method
