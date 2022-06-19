.class Lcom/google/api/client/http/g0/c$a;
.super Ljava/lang/Object;
.source "NetHttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/http/g0/c;->o(Lcom/google/api/client/http/g0/c$c;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/http/g0/c$c;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/google/api/client/util/z;

.field final synthetic d:Lcom/google/api/client/http/g0/c;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/g0/c;Lcom/google/api/client/http/g0/c$c;Ljava/io/OutputStream;Lcom/google/api/client/util/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/g0/c$a;->d:Lcom/google/api/client/http/g0/c;

    iput-object p2, p0, Lcom/google/api/client/http/g0/c$a;->a:Lcom/google/api/client/http/g0/c$c;

    iput-object p3, p0, Lcom/google/api/client/http/g0/c$a;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/google/api/client/http/g0/c$a;->c:Lcom/google/api/client/util/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/g0/c$a;->a:Lcom/google/api/client/http/g0/c$c;

    iget-object v1, p0, Lcom/google/api/client/http/g0/c$a;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/api/client/http/g0/c$a;->c:Lcom/google/api/client/util/z;

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/http/g0/c$c;->a(Ljava/io/OutputStream;Lcom/google/api/client/util/z;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/g0/c$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
