.class public final Lcom/google/android/gms/internal/measurement/ef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field public static final b:[B

.field private static final c:Ljava/nio/charset/Charset;

.field private static final d:Ljava/nio/ByteBuffer;

.field private static final e:Lcom/google/android/gms/internal/measurement/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    .line 24
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ef;->c:Ljava/nio/charset/Charset;

    .line 25
    new-array v0, v2, [B

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/ef;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ef;->d:Ljava/nio/ByteBuffer;

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/measurement/ef;->b:[B

    .line 29
    array-length v1, v0

    .line 30
    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/internal/measurement/dg;->a([BIIZ)Lcom/google/android/gms/internal/measurement/dg;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/measurement/ef;->e:Lcom/google/android/gms/internal/measurement/dg;

    .line 32
    return-void
.end method

.method static a(I[BII)I
    .locals 3

    .prologue
    .line 15
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 16
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return p0
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 9
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 10
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3
    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p0, Lcom/google/android/gms/internal/measurement/fn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/fn;->ar()Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/fn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/fm;->a(Lcom/google/android/gms/internal/measurement/fn;)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fm;->t()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 4
    if-nez p0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    return-object p0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/fn;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/cl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/cl;

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public static a([B)Z
    .locals 1

    .prologue
    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/hd;->a([B)Z

    move-result v0

    return v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .locals 2

    .prologue
    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ef;->a(I[BII)I

    move-result v0

    .line 13
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 14
    :cond_0
    return v0
.end method
