.class final Lcom/google/api/client/http/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/a/c;
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
.field final synthetic a:Lcom/google/api/client/http/a/c$b;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/google/api/client/a/ad;

.field final synthetic d:Lcom/google/api/client/http/a/c;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/a/c;Lcom/google/api/client/http/a/c$b;Ljava/io/OutputStream;Lcom/google/api/client/a/ad;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/api/client/http/a/c$1;->d:Lcom/google/api/client/http/a/c;

    iput-object p2, p0, Lcom/google/api/client/http/a/c$1;->a:Lcom/google/api/client/http/a/c$b;

    iput-object p3, p0, Lcom/google/api/client/http/a/c$1;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/google/api/client/http/a/c$1;->c:Lcom/google/api/client/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/google/api/client/http/a/c$1;->a:Lcom/google/api/client/http/a/c$b;

    iget-object v1, p0, Lcom/google/api/client/http/a/c$1;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/api/client/http/a/c$1;->c:Lcom/google/api/client/a/ad;

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/http/a/c$b;->a(Ljava/io/OutputStream;Lcom/google/api/client/a/ad;)V

    .line 1180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
