.class public final Lokhttp3/c;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lokhttp3/internal/a/e;

.field final b:Lokhttp3/internal/a/d;


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lokhttp3/c;->b:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->close()V

    .line 392
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lokhttp3/c;->b:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->flush()V

    .line 388
    return-void
.end method
