.class Lcom/squareup/okhttp/internal/framed/c$i$b;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c$i;->b(Lcom/squareup/okhttp/internal/framed/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/squareup/okhttp/internal/framed/m;

.field final synthetic d:Lcom/squareup/okhttp/internal/framed/c$i;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c$i;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/m;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i$b;->d:Lcom/squareup/okhttp/internal/framed/c$i;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/c$i$b;->c:Lcom/squareup/okhttp/internal/framed/m;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i$b;->d:Lcom/squareup/okhttp/internal/framed/c$i;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i$b;->c:Lcom/squareup/okhttp/internal/framed/m;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/b;->k(Lcom/squareup/okhttp/internal/framed/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
