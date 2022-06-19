.class public interface abstract Lcom/google/android/exoplayer2/upstream/j;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/j$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/upstream/x;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/upstream/l;)J
.end method

.method public abstract c()Landroid/net/Uri;
.end method

.method public abstract close()V
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract read([BII)I
.end method
