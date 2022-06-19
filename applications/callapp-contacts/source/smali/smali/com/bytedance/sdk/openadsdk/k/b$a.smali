.class final Lcom/bytedance/sdk/openadsdk/k/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/openadsdk/k/l;

.field d:Lcom/bytedance/sdk/openadsdk/k/a/a;

.field e:Lcom/bytedance/sdk/openadsdk/k/b/c;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/k/i$b;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Lcom/bytedance/sdk/openadsdk/k/i;

.field i:Lcom/bytedance/sdk/openadsdk/k/b$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 0

    .line 308
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->g:I

    return-object p0
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/a/a;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 290
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->d:Lcom/bytedance/sdk/openadsdk/k/a/a;

    return-object p0

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/b$b;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->i:Lcom/bytedance/sdk/openadsdk/k/b$b;

    return-object p0
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/b/c;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->e:Lcom/bytedance/sdk/openadsdk/k/b/c;

    return-object p0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/i;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->h:Lcom/bytedance/sdk/openadsdk/k/i;

    return-object p0
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/l;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Lcom/bytedance/sdk/openadsdk/k/l;

    return-object p0

    .line 280
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method final a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 1

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Ljava/lang/String;

    return-object p0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/k/i$b;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/k/b$a;"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->f:Ljava/util/List;

    return-object p0
.end method

.method final a()Lcom/bytedance/sdk/openadsdk/k/b;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->d:Lcom/bytedance/sdk/openadsdk/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->e:Lcom/bytedance/sdk/openadsdk/k/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Lcom/bytedance/sdk/openadsdk/k/l;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/b;-><init>(Lcom/bytedance/sdk/openadsdk/k/b$a;)V

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/b$a;
    .locals 1

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Ljava/lang/String;

    return-object p0

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
