.class public final Ltp$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lak;

.field public b:Lak;


# direct methods
.method public constructor <init>([Lak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp$b;->a:[Lak;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ltp$b;->b:Lak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lak;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltp$b;->b:Lak;

    :cond_0
    return-void
.end method

.method public b(Lbk;Lck;Landroid/net/Uri;)Lak;
    .locals 5

    iget-object v0, p0, Ltp$b;->b:Lak;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltp$b;->a:[Lak;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, Lak;->b(Lbk;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Ltp$b;->b:Lak;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    throw p2

    :catch_0
    :cond_1
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Ltp$b;->b:Lak;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lak;->c(Lck;)V

    iget-object p1, p0, Ltp$b;->b:Lak;

    return-object p1

    :cond_3
    new-instance p1, Lbq;

    iget-object p2, p0, Ltp$b;->a:[Lak;

    invoke-static {p2}, Lnu;->x([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "None of the available extractors ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") could read the stream."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lbq;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
