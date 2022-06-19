.class Lcom/squareup/okhttp/internal/framed/c$a;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field final synthetic e:Lcom/squareup/okhttp/internal/framed/c;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$a;->e:Lcom/squareup/okhttp/internal/framed/c;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/c$a;->c:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/c$a;->d:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$a;->e:Lcom/squareup/okhttp/internal/framed/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/c$a;->c:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$a;->d:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/c;->D0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
