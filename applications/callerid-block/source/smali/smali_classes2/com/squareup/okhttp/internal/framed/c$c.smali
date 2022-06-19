.class Lcom/squareup/okhttp/internal/framed/c$c;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c;->C0(ZIILcom/squareup/okhttp/internal/framed/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/squareup/okhttp/internal/framed/k;

.field final synthetic g:Lcom/squareup/okhttp/internal/framed/c;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/k;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$c;->g:Lcom/squareup/okhttp/internal/framed/c;

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/c$c;->c:Z

    iput p5, p0, Lcom/squareup/okhttp/internal/framed/c$c;->d:I

    iput p6, p0, Lcom/squareup/okhttp/internal/framed/c$c;->e:I

    iput-object p7, p0, Lcom/squareup/okhttp/internal/framed/c$c;->f:Lcom/squareup/okhttp/internal/framed/k;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$c;->g:Lcom/squareup/okhttp/internal/framed/c;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/c$c;->c:Z

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/c$c;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/c$c;->e:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c$c;->f:Lcom/squareup/okhttp/internal/framed/k;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;->g0(Lcom/squareup/okhttp/internal/framed/c;ZIILcom/squareup/okhttp/internal/framed/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
