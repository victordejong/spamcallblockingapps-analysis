.class public abstract Lcom/google/android/gms/internal/ads/oc2;
.super Lcom/google/android/gms/internal/ads/db2;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/oc2<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/lc2<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/db2<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/ads/ve2;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oc2;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/db2;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ve2;->a()Lcom/google/android/gms/internal/ads/ve2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oc2;->zzc:Lcom/google/android/gms/internal/ads/ve2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oc2;->zzd:I

    return-void
.end method

.method protected static B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ae2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ae2;-><init>(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oc2;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzevs;-><init>(Lcom/google/android/gms/internal/ads/qd2;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzett;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzett;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static varargs k(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static l()Lcom/google/android/gms/internal/ads/sc2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pc2;->j()Lcom/google/android/gms/internal/ads/pc2;

    move-result-object v0

    return-object v0
.end method

.method protected static m(Lcom/google/android/gms/internal/ads/sc2;)Lcom/google/android/gms/internal/ads/sc2;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/sc2;->E(I)Lcom/google/android/gms/internal/ads/sc2;

    move-result-object p0

    return-object p0
.end method

.method protected static n()Lcom/google/android/gms/internal/ads/vc2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/gd2;->j()Lcom/google/android/gms/internal/ads/gd2;

    move-result-object v0

    return-object v0
.end method

.method protected static o()Lcom/google/android/gms/internal/ads/wc2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/wc2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zd2;->j()Lcom/google/android/gms/internal/ads/zd2;

    move-result-object v0

    return-object v0
.end method

.method protected static p(Lcom/google/android/gms/internal/ads/wc2;)Lcom/google/android/gms/internal/ads/wc2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/wc2<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/wc2<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/wc2;->c(I)Lcom/google/android/gms/internal/ads/wc2;

    move-result-object p0

    return-object p0
.end method

.method static q(Lcom/google/android/gms/internal/ads/oc2;[BIILcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/bc2;",
            ")TT;"
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/oc2;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/ads/gb2;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/gb2;-><init>(Lcom/google/android/gms/internal/ads/bc2;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/he2;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/gb2;)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/he2;->a(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/db2;->zza:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzett;->zzb()Lcom/google/android/gms/internal/ads/zzett;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzett;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzett;

    throw p0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzett;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzett;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw p2
.end method

.method protected static r(Lcom/google/android/gms/internal/ads/oc2;Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzesf;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzesf;->zzo()Lcom/google/android/gms/internal/ads/sb2;

    move-result-object p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/oc2;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tb2;->U(Lcom/google/android/gms/internal/ads/sb2;)Lcom/google/android/gms/internal/ads/tb2;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/he2;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/be2;Lcom/google/android/gms/internal/ads/bc2;)V

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/he2;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/sb2;->h(I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oc2;->j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oc2;->j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;

    return-object p0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzett;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzett;

    throw p0

    :cond_0
    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzett;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzett;

    throw p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzett;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzett;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception p0

    throw p0
.end method

.method protected static s(Lcom/google/android/gms/internal/ads/oc2;Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzesf;",
            "Lcom/google/android/gms/internal/ads/bc2;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzesf;->zzo()Lcom/google/android/gms/internal/ads/sb2;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/oc2;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tb2;->U(Lcom/google/android/gms/internal/ads/sb2;)Lcom/google/android/gms/internal/ads/tb2;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/he2;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/be2;Lcom/google/android/gms/internal/ads/bc2;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/he2;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x0

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/sb2;->h(I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oc2;->j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;

    return-object p0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzett;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzett;

    throw p0

    :cond_0
    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzett;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzett;

    throw p0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzett;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzett;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzett;->zza(Lcom/google/android/gms/internal/ads/qd2;)Lcom/google/android/gms/internal/ads/zzett;

    throw p2
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzett; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception p0

    throw p0
.end method

.method protected static t(Lcom/google/android/gms/internal/ads/oc2;[B)Lcom/google/android/gms/internal/ads/oc2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/oc2;->q(Lcom/google/android/gms/internal/ads/oc2;[BIILcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oc2;->j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;

    return-object p0
.end method

.method protected static u(Lcom/google/android/gms/internal/ads/oc2;[BLcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/bc2;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/oc2;->q(Lcom/google/android/gms/internal/ads/oc2;[BIILcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oc2;->j(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/oc2;

    return-object p0
.end method

.method static y(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/oc2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/oc2;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/oc2;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/oc2;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ff2;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/oc2;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/oc2;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/oc2;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/oc2;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/oc2;->zzd:I

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/wb2;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xb2;->l(Lcom/google/android/gms/internal/ads/wb2;)Lcom/google/android/gms/internal/ads/xb2;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/he2;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xb2;)V

    return-void
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/internal/ads/pd2;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lc2;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/lc2;->n(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/lc2;

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/ads/pd2;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lc2;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/oc2;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/he2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/ads/qd2;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oc2;

    return-object v0
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/oc2;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/he2;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oc2;->zzd:I

    :cond_0
    return v0
.end method

.method final h(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/oc2;->zzd:I

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/db2;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/he2;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/db2;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/sd2;->a(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Lcom/google/android/gms/internal/ads/lc2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/oc2<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/lc2<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lc2;

    return-object v0
.end method

.method public final w()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd2;->a()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/yd2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/he2;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/ads/he2;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final x()Lcom/google/android/gms/internal/ads/lc2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/oc2;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lc2;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/lc2;->n(Lcom/google/android/gms/internal/ads/oc2;)Lcom/google/android/gms/internal/ads/lc2;

    return-object v0
.end method
