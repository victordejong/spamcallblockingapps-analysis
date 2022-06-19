.class public abstract Lcom/google/api/client/http/z;
.super Ljava/lang/Object;
.source "LowLevelHttpRequest.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/api/client/util/z;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/api/client/http/z;->a:J

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b()Lcom/google/api/client/http/a0;
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/http/z;->a:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/api/client/util/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/z;->d:Lcom/google/api/client/util/z;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/z;->b:Ljava/lang/String;

    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/client/http/z;->a:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/z;->c:Ljava/lang/String;

    return-void
.end method

.method public final j(Lcom/google/api/client/util/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/z;->d:Lcom/google/api/client/util/z;

    return-void
.end method

.method public k(II)V
    .locals 0

    return-void
.end method

.method public l(I)V
    .locals 0

    return-void
.end method
