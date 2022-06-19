.class public abstract Lcom/google/android/gms/internal/ads/aag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aci;


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/android/gms/internal/ads/aag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aag;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zf;-><init>(Lcom/google/android/gms/internal/ads/aag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dhf;Lcom/google/android/gms/internal/ads/agj;)Lcom/google/android/gms/internal/ads/adi;
    .locals 12

    .prologue
    const-wide/16 v10, 0x8

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dhf;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 7
    if-gez v0, :cond_0

    .line 8
    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dhf;->a(J)V

    .line 9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 10
    :cond_0
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 13
    cmp-long v0, v2, v10

    if-gez v0, :cond_2

    cmp-long v0, v2, v8

    if-lez v0, :cond_2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/aag;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v4, "com.coremedia.iso.AbstractBoxParser"

    const-string/jumbo v5, "parseBox"

    const/16 v7, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "). Stop parsing!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v5, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_1
    return-object v6

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aej;->f(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 18
    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dhf;->a(Ljava/nio/ByteBuffer;)I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    move-wide v2, v0

    .line 28
    :goto_2
    const-string/jumbo v0, "uuid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dhf;->a(Ljava/nio/ByteBuffer;)I

    .line 31
    new-array v6, v5, [B

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    sub-int v4, v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    aput-byte v0, v6, v4

    .line 34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 24
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    move-wide v2, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_4
    sub-long v0, v2, v10

    move-wide v2, v0

    goto/16 :goto_2

    .line 35
    :cond_5
    const-wide/16 v0, 0x10

    sub-long v4, v2, v0

    move-object v1, v6

    .line 36
    :goto_4
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/adi;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/adi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adi;->a()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v7, v1, v0}, Lcom/google/android/gms/internal/ads/aag;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/adi;

    move-result-object v1

    .line 37
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/adi;->a(Lcom/google/android/gms/internal/ads/agj;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    move-object v2, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/adi;->a(Lcom/google/android/gms/internal/ads/dhf;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/aci;)V

    move-object v6, v1

    .line 40
    goto/16 :goto_1

    .line 36
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_5

    :cond_7
    move-wide v4, v2

    move-object v1, v6

    goto :goto_4
.end method

.method public abstract a(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/adi;
.end method
