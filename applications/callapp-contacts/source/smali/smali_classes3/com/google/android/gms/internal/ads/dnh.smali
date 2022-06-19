.class public abstract Lcom/google/android/gms/internal/ads/dnh;
.super Lcom/google/android/gms/internal/ads/dln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dnh$a;,
        Lcom/google/android/gms/internal/ads/dnh$e;,
        Lcom/google/android/gms/internal/ads/dnh$c;,
        Lcom/google/android/gms/internal/ads/dnh$b;,
        Lcom/google/android/gms/internal/ads/dnh$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dnh<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/dln<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzitp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzitn:Lcom/google/android/gms/internal/ads/dqj;

.field private zzito:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dnh;->zzitp:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dln;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dqj;->a()Lcom/google/android/gms/internal/ads/dqj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzitn:Lcom/google/android/gms/internal/ads/dqj;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 4019
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqb;-><init>(Lcom/google/android/gms/internal/ads/dot;)V

    .line 126
    new-instance v1, Lcom/google/android/gms/internal/ads/zzenn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeqb;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzenn;-><init>(Ljava/lang/String;)V

    .line 5004
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzenn;->a:Lcom/google/android/gms/internal/ads/dot;

    .line 128
    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dlw;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dnh;->b(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dlw;",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dnh;->b(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dmi;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dmi;",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 89
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->d:I

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    .line 92
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmp;->a(Lcom/google/android/gms/internal/ads/dmi;)Lcom/google/android/gms/internal/ads/dmp;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dpj;Lcom/google/android/gms/internal/ads/dmt;)V

    .line 94
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dpp;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzenn;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzenn;

    throw p0

    .line 103
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzenn;

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzenn;

    throw p0

    .line 99
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzenn;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzenn;-><init>(Ljava/lang/String;)V

    .line 2004
    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzenn;->a:Lcom/google/android/gms/internal/ads/dot;

    .line 99
    throw p2
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnh;[B)Lcom/google/android/gms/internal/ads/dnh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 142
    array-length v0, p1

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v1

    .line 144
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;[BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dnh;[BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;[BI",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 105
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->d:I

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 107
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    .line 108
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v6

    const/4 v3, 0x0

    .line 109
    new-instance v5, Lcom/google/android/gms/internal/ads/dlr;

    invoke-direct {v5, p3}, Lcom/google/android/gms/internal/ads/dlr;-><init>(Lcom/google/android/gms/internal/ads/dmt;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dlr;)V

    .line 110
    invoke-interface {v6, p0}, Lcom/google/android/gms/internal/ads/dpp;->c(Ljava/lang/Object;)V

    .line 111
    iget p1, p0, Lcom/google/android/gms/internal/ads/dnh;->zziop:I

    if-nez p1, :cond_0

    return-object p0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenn;->a()Lcom/google/android/gms/internal/ads/zzenn;

    move-result-object p1

    .line 4004
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzenn;->a:Lcom/google/android/gms/internal/ads/dot;

    .line 119
    throw p1

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzenn;

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzenn;

    throw p0

    .line 117
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzenn;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzenn;-><init>(Ljava/lang/String;)V

    .line 3004
    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzenn;->a:Lcom/google/android/gms/internal/ads/dot;

    .line 117
    throw p2
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnh;[BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 145
    array-length v0, p1

    .line 146
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;[BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 147
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dnh;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/dnh;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dqm;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    .line 44
    sget v1, Lcom/google/android/gms/internal/ads/dnh$d;->f:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    if-eqz v0, :cond_1

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/dnh;->zzitp:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnn;)Lcom/google/android/gms/internal/ads/dnn;
    .locals 1

    .line 79
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dnn;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 82
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/dnn;->b(I)Lcom/google/android/gms/internal/ads/dnn;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dnr<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/dnr<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dnr;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 88
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/dnr;->a(I)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/dpk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dpk;-><init>(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 61
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 62
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/dnh;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final a(Lcom/google/android/gms/internal/ads/dnh;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 64
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->a:I

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dpp;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 73
    sget p1, Lcom/google/android/gms/internal/ads/dnh$d;->b:I

    if-eqz v0, :cond_2

    move-object v1, p0

    .line 76
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dlw;",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->g()Lcom/google/android/gms/internal/ads/dmi;

    move-result-object p1

    .line 136
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dmi;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 137
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dmi;->a(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6004
    :try_start_2
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzenn;->a:Lcom/google/android/gms/internal/ads/dot;

    .line 139
    throw p1
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 141
    throw p0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzemk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    .line 2001
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzemk;->a:Lcom/google/android/gms/internal/ads/dms;

    if-eqz v1, :cond_0

    .line 2002
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzemk;->a:Lcom/google/android/gms/internal/ads/dms;

    goto :goto_0

    .line 2003
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/dms;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/dms;-><init>(Lcom/google/android/gms/internal/ads/zzemk;)V

    move-object p1, v1

    .line 30
    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drd;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final h()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zziop:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zziop:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zziop:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zziop:I

    return v0
.end method

.method protected final i()Lcom/google/android/gms/internal/ads/dnh$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/dnh<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/dnh$b<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->e:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Z)Z

    move-result v0

    return v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/dnh$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->e:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method public final l()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dpp;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnh;->zzito:I

    return v0
.end method

.method public final synthetic m()Lcom/google/android/gms/internal/ads/dos;
    .locals 2

    .line 149
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->e:I

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    .line 152
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method public final synthetic n()Lcom/google/android/gms/internal/ads/dos;
    .locals 2

    .line 156
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->e:I

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method public final synthetic o()Lcom/google/android/gms/internal/ads/dot;
    .locals 2

    .line 161
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->f:I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 1002
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1003
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dou;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/StringBuilder;I)V

    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
