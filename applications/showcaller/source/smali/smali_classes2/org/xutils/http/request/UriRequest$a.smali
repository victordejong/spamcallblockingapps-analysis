.class Lorg/xutils/http/request/UriRequest$a;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/request/UriRequest;->save2Cache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/http/request/UriRequest;


# direct methods
.method constructor <init>(Lorg/xutils/http/request/UriRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest$a;->d:Lorg/xutils/http/request/UriRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest$a;->d:Lorg/xutils/http/request/UriRequest;

    iget-object v1, v0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v1, v0}, Lorg/xutils/http/loader/Loader;->save2Cache(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
