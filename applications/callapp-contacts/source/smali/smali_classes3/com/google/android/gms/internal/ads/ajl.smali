.class public abstract Lcom/google/android/gms/internal/ads/ajl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/alm;


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/android/gms/internal/ads/ajl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ajl;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/amm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/amm;-><init>(Lcom/google/android/gms/internal/ads/ajl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/drt;Lcom/google/android/gms/internal/ads/apo;)Lcom/google/android/gms/internal/ads/aqp;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/drt;->a(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v3, :cond_1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/drt;->a(J)V

    .line 9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/anm;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x8

    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/ajl;->a:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v2, 0x50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "). Stop parsing!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremedia.iso.AbstractBoxParser"

    const-string v2, "parseBox"

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/anm;->f(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, 0x10

    const/16 v10, 0x10

    cmp-long v11, v0, v4

    if-nez v11, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/drt;->a(Ljava/nio/ByteBuffer;)I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/anm;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    sub-long/2addr v0, v8

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide v3

    sub-long/2addr v0, v3

    goto :goto_1

    :cond_4
    sub-long/2addr v0, v6

    :goto_1
    const-string v3, "uuid"

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/drt;->a(Ljava/nio/ByteBuffer;)I

    new-array v3, v10, [B

    .line 32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v10

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 33
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v10

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    sub-long/2addr v0, v8

    :cond_6
    move-wide v6, v0

    .line 36
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/aqp;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/aqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqp;->a()Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/ajl;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aqp;

    move-result-object v0

    .line 37
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/aqp;->a(Lcom/google/android/gms/internal/ads/apo;)V

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ajl;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/nio/ByteBuffer;

    move-object v3, v0

    move-object v4, p1

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/aqp;->a(Lcom/google/android/gms/internal/ads/drt;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/alm;)V

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aqp;
.end method
