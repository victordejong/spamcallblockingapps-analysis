.class public final Lcom/google/api/client/testing/a/b;
.super Lcom/google/api/client/http/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/testing/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/api/client/testing/a/c;

.field private c:Lcom/google/api/client/testing/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/api/client/http/w;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/testing/a/b$a;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/api/client/http/w;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/google/api/client/testing/a/b$a;->a:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/api/client/testing/a/b;->a:Ljava/util/Set;

    .line 62
    iget-object v0, p1, Lcom/google/api/client/testing/a/b$a;->b:Lcom/google/api/client/testing/a/c;

    iput-object v0, p0, Lcom/google/api/client/testing/a/b;->b:Lcom/google/api/client/testing/a/c;

    .line 63
    iget-object p1, p1, Lcom/google/api/client/testing/a/b$a;->c:Lcom/google/api/client/testing/a/d;

    iput-object p1, p0, Lcom/google/api/client/testing/a/b;->c:Lcom/google/api/client/testing/a/d;

    return-void
.end method


# virtual methods
.method public final buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/api/client/testing/a/b;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "HTTP method %s not supported"

    .line 1067
    invoke-static {v0, p1, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/google/api/client/testing/a/b;->b:Lcom/google/api/client/testing/a/c;

    if-eqz p1, :cond_0

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Lcom/google/api/client/testing/a/c;

    invoke-direct {p1, p2}, Lcom/google/api/client/testing/a/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/api/client/testing/a/b;->b:Lcom/google/api/client/testing/a/c;

    .line 78
    iget-object p2, p0, Lcom/google/api/client/testing/a/b;->c:Lcom/google/api/client/testing/a/d;

    if-eqz p2, :cond_1

    .line 1187
    iput-object p2, p1, Lcom/google/api/client/testing/a/c;->a:Lcom/google/api/client/testing/a/d;

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/google/api/client/testing/a/b;->b:Lcom/google/api/client/testing/a/c;

    return-object p1
.end method

.method public final supportsMethod(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/api/client/testing/a/b;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
