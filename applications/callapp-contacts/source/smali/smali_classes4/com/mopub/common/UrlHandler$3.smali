.class final Lcom/mopub/common/UrlHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlResolutionTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Iterable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mopub/common/UrlHandler;


# direct methods
.method constructor <init>(Lcom/mopub/common/UrlHandler;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/mopub/common/UrlHandler$3;->e:Lcom/mopub/common/UrlHandler;

    iput-object p2, p0, Lcom/mopub/common/UrlHandler$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/mopub/common/UrlHandler$3;->b:Z

    iput-object p4, p0, Lcom/mopub/common/UrlHandler$3;->c:Ljava/lang/Iterable;

    iput-object p5, p0, Lcom/mopub/common/UrlHandler$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$3;->e:Lcom/mopub/common/UrlHandler;

    invoke-static {v0}, Lcom/mopub/common/UrlHandler;->a(Lcom/mopub/common/UrlHandler;)Z

    .line 285
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$3;->e:Lcom/mopub/common/UrlHandler;

    iget-object v1, p0, Lcom/mopub/common/UrlHandler$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/mopub/common/UrlHandler;->a(Lcom/mopub/common/UrlHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$3;->e:Lcom/mopub/common/UrlHandler;

    invoke-static {v0}, Lcom/mopub/common/UrlHandler;->a(Lcom/mopub/common/UrlHandler;)Z

    .line 278
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$3;->e:Lcom/mopub/common/UrlHandler;

    iget-object v1, p0, Lcom/mopub/common/UrlHandler$3;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/mopub/common/UrlHandler$3;->b:Z

    iget-object v3, p0, Lcom/mopub/common/UrlHandler$3;->c:Ljava/lang/Iterable;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mopub/common/UrlHandler;->handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    return-void
.end method
