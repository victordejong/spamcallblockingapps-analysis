.class public abstract Lcom/google/android/gms/internal/ads/dcw;
.super Lcom/google/android/gms/internal/ads/day;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dcw$c;,
        Lcom/google/android/gms/internal/ads/dcw$d;,
        Lcom/google/android/gms/internal/ads/dcw$e;,
        Lcom/google/android/gms/internal/ads/dcw$b;,
        Lcom/google/android/gms/internal/ads/dcw$a;,
        Lcom/google/android/gms/internal/ads/dcw$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dcw",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/day",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzhxx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzhxv:Lcom/google/android/gms/internal/ads/dfu;

.field private zzhxw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxx:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/day;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->a()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeez;-><init>(Lcom/google/android/gms/internal/ads/deg;)V

    .line 127
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeez;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzeco;->a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 130
    :cond_0
    return-object p0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    .line 133
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dcw;->b(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dbi;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dcw;->b(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dby;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dby;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->d:I

    .line 91
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 93
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dcb;->a(Lcom/google/android/gms/internal/ads/dby;)Lcom/google/android/gms/internal/ads/dcb;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;Lcom/google/android/gms/internal/ads/dci;)V

    .line 95
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dfd;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzeco;

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeco;

    throw v0

    .line 100
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeco;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeco;->a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzeco;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeco;

    throw v0

    .line 104
    :cond_1
    throw v0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dcw;[B)Lcom/google/android/gms/internal/ads/dcw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    array-length v1, p1

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v2

    .line 145
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;[BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dcw;[BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->d:I

    .line 107
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    .line 109
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    .line 110
    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/dbh;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/dbh;-><init>(Lcom/google/android/gms/internal/ads/dci;)V

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dbh;)V

    .line 111
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dfd;->c(Ljava/lang/Object;)V

    .line 112
    iget v0, v1, Lcom/google/android/gms/internal/ads/dcw;->zzhsq:I

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzeco;

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeco;

    throw v0

    .line 118
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeco;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeco;->a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 120
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;->a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 121
    :cond_1
    return-object v1
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dcw;[BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    array-length v1, p1

    .line 147
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;[BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxx:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 36
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
    sget-object v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxx:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 42
    :cond_0
    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 44
    sget v1, Lcom/google/android/gms/internal/ads/dcw$f;->f:I

    .line 45
    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Class initialization cannot fail."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/dcw;->zzhxx:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/ddd;)Lcom/google/android/gms/internal/ads/ddd;
    .locals 1

    .prologue
    .line 80
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ddd;->size()I

    move-result v0

    .line 82
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 83
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/ddd;->b(I)Lcom/google/android/gms/internal/ads/ddd;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/dde;)Lcom/google/android/gms/internal/ads/dde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dde",
            "<TE;>;)",
            "Lcom/google/android/gms/internal/ads/dde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v0

    .line 88
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 89
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/deu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/deu;-><init>(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 59
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 61
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxx:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method protected static final a(Lcom/google/android/gms/internal/ads/dcw;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->a:I

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 68
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 78
    :goto_0
    return v0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dfd;->d(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    if-eqz p1, :cond_2

    .line 74
    sget v3, Lcom/google/android/gms/internal/ads/dcw$f;->b:I

    .line 75
    if-eqz v2, :cond_3

    move-object v0, p0

    .line 77
    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 75
    goto :goto_1
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/dbi;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->g()Lcom/google/android/gms/internal/ads/dby;

    move-result-object v0

    .line 137
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dby;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dby;->a(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;->a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :catch_1
    move-exception v0

    throw v0
.end method

.method protected static r()Lcom/google/android/gms/internal/ads/ddd;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcx;->d()Lcom/google/android/gms/internal/ads/dcx;

    move-result-object v0

    return-object v0
.end method

.method protected static s()Lcom/google/android/gms/internal/ads/ddf;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddu;->d()Lcom/google/android/gms/internal/ads/ddu;

    move-result-object v0

    return-object v0
.end method

.method protected static t()Lcom/google/android/gms/internal/ads/dde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/dde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/dev;->d()Lcom/google/android/gms/internal/ads/dev;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    .line 27
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzebk;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dcf;->a(Lcom/google/android/gms/internal/ads/zzebk;)Lcom/google/android/gms/internal/ads/dcf;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 31
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9
    if-ne p0, p1, :cond_1

    .line 10
    const/4 v0, 0x1

    .line 15
    :cond_0
    :goto_0
    return v0

    .line 11
    :cond_1
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/dcw;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhsq:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhsq:I

    .line 8
    :goto_0
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhsq:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhsq:I

    goto :goto_0
.end method

.method final m()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    return v0
.end method

.method protected final n()Lcom/google/android/gms/internal/ads/dcw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/dcw",
            "<TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/dcw$a",
            "<TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->e:I

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Z)Z

    move-result v0

    return v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/dcw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->e:I

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    .line 24
    return-object v0
.end method

.method public final q()I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dfd;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxw:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/deh;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u()Lcom/google/android/gms/internal/ads/def;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    .line 150
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->e:I

    .line 151
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    .line 153
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    .line 155
    return-object v0
.end method

.method public final synthetic v()Lcom/google/android/gms/internal/ads/def;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    .line 157
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->e:I

    .line 158
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    .line 160
    return-object v0
.end method

.method public final synthetic w()Lcom/google/android/gms/internal/ads/deg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    .line 162
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->f:I

    .line 163
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 165
    return-object v0
.end method
