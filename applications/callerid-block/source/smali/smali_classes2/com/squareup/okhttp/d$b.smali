.class public final Lcom/squareup/okhttp/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/d$b;->c:I

    iput v0, p0, Lcom/squareup/okhttp/d$b;->d:I

    iput v0, p0, Lcom/squareup/okhttp/d$b;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/d;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/d;-><init>(Lcom/squareup/okhttp/d$b;Lcom/squareup/okhttp/d$a;)V

    return-object v0
.end method

.method public b(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/d$b;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/squareup/okhttp/d$b;->d:I

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()Lcom/squareup/okhttp/d$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/d$b;->a:Z

    return-object p0
.end method

.method public d()Lcom/squareup/okhttp/d$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/d$b;->f:Z

    return-object p0
.end method
