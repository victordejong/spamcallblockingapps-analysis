.class public abstract Lcom/squareup/okhttp/u/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lcom/squareup/okhttp/u/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/u/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/okhttp/k$b;Ljava/lang/String;)V
.end method

.method public abstract b(Lcom/squareup/okhttp/h;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract c(Lcom/squareup/okhttp/f;)Z
.end method

.method public abstract d(Lcom/squareup/okhttp/f;Ljava/lang/Object;)V
.end method

.method public abstract e(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/p;)V
.end method

.method public abstract f(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/c;
.end method

.method public abstract g(Lcom/squareup/okhttp/f;)Z
.end method

.method public abstract h(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/e;
.end method

.method public abstract i(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/p;
.end method

.method public abstract j(Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/f;)V
.end method

.method public abstract k(Lcom/squareup/okhttp/f;)I
.end method

.method public abstract l(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/h;
.end method

.method public abstract m(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/u/e;)V
.end method

.method public abstract n(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/internal/http/g;)V
.end method

.method public abstract o(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/Protocol;)V
.end method
