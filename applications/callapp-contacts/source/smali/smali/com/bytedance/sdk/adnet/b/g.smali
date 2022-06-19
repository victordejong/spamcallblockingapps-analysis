.class public abstract Lcom/bytedance/sdk/adnet/b/g;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    .line 46
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    .line 78
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 79
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/g;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/g;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBody()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 123
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/g;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/bytedance/sdk/adnet/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/g;->getBody()[B

    move-result-object v0

    return-object v0
.end method
