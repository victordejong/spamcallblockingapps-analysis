.class public Lcom/bytedance/sdk/openadsdk/g/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/bytedance/sdk/openadsdk/g/a/v;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/g/a/a;

.field private final c:Landroid/webkit/WebView;

.field private final d:Lcom/bytedance/sdk/openadsdk/g/a/j;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bytedance/sdk/openadsdk/g/a/o;

.field private volatile g:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/j;)V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->g:Z

    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->d:Lcom/bytedance/sdk/openadsdk/g/a/j;

    .line 206
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->h:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/g/a/q;->a:Lcom/bytedance/sdk/openadsdk/g/a/v;

    if-eqz v1, :cond_0

    .line 207
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/v;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/u;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 209
    :goto_0
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/y;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/g/a/y;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    .line 211
    invoke-virtual {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/j;Lcom/bytedance/sdk/openadsdk/g/a/u;)V

    goto :goto_1

    .line 213
    :cond_1
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    .line 214
    invoke-virtual {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/j;Lcom/bytedance/sdk/openadsdk/g/a/u;)V

    .line 216
    :goto_1
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->c:Landroid/webkit/WebView;

    .line 217
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->j:Lcom/bytedance/sdk/openadsdk/g/a/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->f:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Z)V

    .line 219
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->g:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Z)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/g/a/j;
    .locals 1

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/j;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/g/a/j;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->g:Z

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge2 is already released!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/d$b;)Lcom/bytedance/sdk/openadsdk/g/a/q;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/d$b;)Lcom/bytedance/sdk/openadsdk/g/a/q;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/e;)Lcom/bytedance/sdk/openadsdk/g/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/e<",
            "**>;)",
            "Lcom/bytedance/sdk/openadsdk/g/a/q;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/e;)Lcom/bytedance/sdk/openadsdk/g/a/q;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/d$b;)Lcom/bytedance/sdk/openadsdk/g/a/q;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/q;->a()V

    .line 130
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/g/a/a;->g:Lcom/bytedance/sdk/openadsdk/g/a/g;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/d$b;)V

    .line 131
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->f:Lcom/bytedance/sdk/openadsdk/g/a/o;

    if-eqz p2, :cond_0

    .line 132
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/a/o;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/e;)Lcom/bytedance/sdk/openadsdk/g/a/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/e<",
            "**>;)",
            "Lcom/bytedance/sdk/openadsdk/g/a/q;"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/q;->a()V

    .line 106
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/g/a/a;->g:Lcom/bytedance/sdk/openadsdk/g/a/g;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/e;)V

    .line 107
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/q;->f:Lcom/bytedance/sdk/openadsdk/g/a/o;

    if-eqz p2, :cond_0

    .line 108
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/a/o;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
