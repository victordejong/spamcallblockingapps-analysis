.class final Lcom/facebook/p;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/s;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field private final c:Landroid/os/Handler;

.field private d:Lcom/facebook/GraphRequest;

.field private e:Lcom/facebook/s;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/p;->a:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/facebook/p;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/facebook/p;->e:Lcom/facebook/s;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/facebook/s;

    iget-object v1, p0, Lcom/facebook/p;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/p;->d:Lcom/facebook/GraphRequest;

    invoke-direct {v0, v1, v2}, Lcom/facebook/s;-><init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V

    iput-object v0, p0, Lcom/facebook/p;->e:Lcom/facebook/s;

    .line 57
    iget-object v1, p0, Lcom/facebook/p;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/p;->d:Lcom/facebook/GraphRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/p;->e:Lcom/facebook/s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/s;->a(J)V

    .line 61
    iget v0, p0, Lcom/facebook/p;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/facebook/p;->b:I

    return-void
.end method

.method public final a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/facebook/p;->d:Lcom/facebook/GraphRequest;

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/p;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/p;->e:Lcom/facebook/s;

    return-void
.end method

.method public final write(I)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/facebook/p;->a(J)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 66
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/p;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    int-to-long p1, p3

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/facebook/p;->a(J)V

    return-void
.end method
