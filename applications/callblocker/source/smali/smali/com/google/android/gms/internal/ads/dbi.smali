.class public abstract Lcom/google/android/gms/internal/ads/dbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dbi;

.field private static final b:Lcom/google/android/gms/internal/ads/dbo;

.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/ads/dbt;

    sget-object v1, Lcom/google/android/gms/internal/ads/dcz;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/ads/dbf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/dbv;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dbv;-><init>(Lcom/google/android/gms/internal/ads/dbl;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/ads/dbi;->b:Lcom/google/android/gms/internal/ads/dbo;

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/ads/dbk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dbi;->d:Ljava/util/Comparator;

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dbm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dbm;-><init>(Lcom/google/android/gms/internal/ads/dbl;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbi;->c:I

    .line 3
    return-void
.end method

.method static synthetic a(B)I
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dbi;->b(B)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/16 v0, 0x100

    .line 16
    :goto_0
    new-array v4, v0, [B

    move v1, v2

    .line 18
    :goto_1
    if-ge v1, v0, :cond_0

    .line 19
    sub-int v5, v0, v1

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 20
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 21
    add-int/2addr v1, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-nez v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 27
    :goto_2
    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    shl-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v4, v2, v1}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    goto :goto_2

    .line 31
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/dbi;"
        }
    .end annotation

    .prologue
    .line 33
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 40
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    .line 43
    :goto_1
    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dbt;

    sget-object v1, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    return-object v0
.end method

.method private static a(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/dbi;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;I)",
            "Lcom/google/android/gms/internal/ads/dbi;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 44
    if-gtz p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length (%s) must be >= 1"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-ne p1, v2, :cond_1

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_1
    ushr-int/lit8 v0, p1, 0x1

    .line 49
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    .line 50
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 52
    const v2, 0x7fffffff

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    const/16 v3, 0x35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "ByteString would be too long: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dew;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Lcom/google/android/gms/internal/ads/dbi;
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/ads/dbi;
    .locals 2

    .prologue
    .line 7
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->c(III)I

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dbt;

    sget-object v1, Lcom/google/android/gms/internal/ads/dbi;->b:Lcom/google/android/gms/internal/ads/dbo;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dbo;->a([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    return-object v0
.end method

.method private static b(B)I
    .locals 1

    .prologue
    .line 6
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static b([B)Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    return-object v0
.end method

.method static b(II)V
    .locals 3

    .prologue
    .line 83
    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    .line 84
    if-gez p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Index > length: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    return-void
.end method

.method static c(III)I
    .locals 3

    .prologue
    .line 88
    sub-int v0, p1, p0

    .line 89
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 90
    if-gez p0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Beginning index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-ge p1, p0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Beginning index larger than ending index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "End index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    return v0
.end method

.method static c(I)Lcom/google/android/gms/internal/ads/dbq;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/dbq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dbq;-><init>(ILcom/google/android/gms/internal/ads/dbl;)V

    return-object v0
.end method

.method public static h()Lcom/google/android/gms/internal/ads/dbw;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/dbw;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dbw;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method protected abstract a(III)I
.end method

.method public abstract a(II)Lcom/google/android/gms/internal/ads/dbi;
.end method

.method public a()Lcom/google/android/gms/internal/ads/dbr;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dbl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dbl;-><init>(Lcom/google/android/gms/internal/ads/dbi;)V

    return-object v0
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract a(Lcom/google/android/gms/internal/ads/dbj;)V
.end method

.method public final a([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->c(III)I

    .line 59
    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->c(III)I

    .line 60
    if-lez p4, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    .line 62
    :cond_0
    return-void
.end method

.method abstract b(I)B
.end method

.method public abstract b()I
.end method

.method protected abstract b(III)I
.end method

.method protected abstract b([BIII)V
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/ads/dcz;->b:[B

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-array v0, v1, [B

    .line 67
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/dbi;->b([BIII)V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/dby;
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbi;->c:I

    .line 73
    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->b(III)I

    move-result v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dbi;->c:I

    .line 79
    :cond_1
    return v0
.end method

.method protected abstract i()I
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->a()Lcom/google/android/gms/internal/ads/dbr;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j()Z
.end method

.method protected final k()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbi;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "<ByteString@%s size=%d contents=\"%s\">"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    const/16 v5, 0x32

    if-gt v0, v5, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dfr;->a(Lcom/google/android/gms/internal/ads/dbi;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    aput-object v0, v3, v4

    .line 102
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfr;->a(Lcom/google/android/gms/internal/ads/dbi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
