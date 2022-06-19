.class final Lcom/google/api/client/http/n$b;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/api/client/util/b;

.field final b:Ljava/lang/StringBuilder;

.field final c:Lcom/google/api/client/util/i;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/n;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/http/n$b;->d:Ljava/util/List;

    .line 4
    invoke-static {v0, v1}, Lcom/google/api/client/util/i;->f(Ljava/lang/Class;Z)Lcom/google/api/client/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/n$b;->c:Lcom/google/api/client/util/i;

    .line 5
    iput-object p2, p0, Lcom/google/api/client/http/n$b;->b:Ljava/lang/StringBuilder;

    .line 6
    new-instance p2, Lcom/google/api/client/util/b;

    invoke-direct {p2, p1}, Lcom/google/api/client/util/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/api/client/http/n$b;->a:Lcom/google/api/client/util/b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/n$b;->a:Lcom/google/api/client/util/b;

    invoke-virtual {v0}, Lcom/google/api/client/util/b;->b()V

    return-void
.end method
