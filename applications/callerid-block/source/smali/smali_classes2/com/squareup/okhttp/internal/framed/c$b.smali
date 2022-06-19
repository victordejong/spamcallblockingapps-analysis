.class Lcom/squareup/okhttp/internal/framed/c$b;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c;->F0(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lcom/squareup/okhttp/internal/framed/c;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$b;->e:Lcom/squareup/okhttp/internal/framed/c;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/c$b;->c:I

    iput-wide p5, p0, Lcom/squareup/okhttp/internal/framed/c$b;->d:J

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$b;->e:Lcom/squareup/okhttp/internal/framed/c;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/c$b;->c:I

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/framed/c$b;->d:J

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/b;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
