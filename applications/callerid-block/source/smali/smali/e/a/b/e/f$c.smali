.class Le/a/b/e/f$c;
.super Ljava/net/ProxySelector;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/e/f;->h(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/Proxy;


# direct methods
.method constructor <init>(Le/a/b/e/f;Ljava/net/Proxy;)V
    .locals 0

    iput-object p2, p0, Le/a/b/e/f$c;->a:Ljava/net/Proxy;

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    iget-object v0, p0, Le/a/b/e/f$c;->a:Ljava/net/Proxy;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
