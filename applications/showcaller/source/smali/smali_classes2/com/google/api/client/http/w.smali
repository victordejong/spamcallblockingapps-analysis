.class public abstract Lcom/google/api/client/http/w;
.super Ljava/lang/Object;
.source "HttpTransport.java"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/api/client/http/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "POST"

    const-string v3, "PUT"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/w;->b:[Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/api/client/http/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/http/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/q;-><init>(Lcom/google/api/client/http/w;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;
.end method

.method public final c()Lcom/google/api/client/http/r;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/http/r;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/http/r;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/http/w;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
