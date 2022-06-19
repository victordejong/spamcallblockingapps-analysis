.class public final Lcom/google/android/gms/internal/ads/ctf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cte",
            "<TP;>;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/cte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cte",
            "<TP;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TP;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ctf;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ctf;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctf;->d:Ljava/lang/Class;

    .line 5
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ctf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/google/android/gms/internal/ads/ctf",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ctf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ctf;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cte",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctf;->c:Lcom/google/android/gms/internal/ads/cte;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/cye$a;)Lcom/google/android/gms/internal/ads/cte;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/gms/internal/ads/cye$a;",
            ")",
            "Lcom/google/android/gms/internal/ads/cte",
            "<TP;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    if-eq v0, v1, :cond_0

    .line 19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "only ENABLED key is allowed"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cte;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/csr;->a:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->e()Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cyq;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 36
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v3

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->e()Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v4

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cte;-><init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/cxy;Lcom/google/android/gms/internal/ads/cyq;I)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->d()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/ctf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ctf;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 43
    if-eqz v1, :cond_1

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctf;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    return-object v0

    .line 28
    :pswitch_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/ads/cso;->a:[B

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cte;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cte",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 7
    if-nez p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the primary entry must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cte;->b()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    if-eq v0, v1, :cond_1

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the primary entry has to be ENABLED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cte;->d()[B

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctf;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/ctf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 13
    if-eqz v0, :cond_2

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctf;->c:Lcom/google/android/gms/internal/ads/cte;

    .line 17
    return-void
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctf;->d:Ljava/lang/Class;

    return-object v0
.end method
