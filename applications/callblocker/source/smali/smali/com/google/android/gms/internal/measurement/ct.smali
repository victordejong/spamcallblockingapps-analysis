.class public abstract Lcom/google/android/gms/internal/measurement/ct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

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
.field public static final a:Lcom/google/android/gms/internal/measurement/ct;

.field private static final b:Lcom/google/android/gms/internal/measurement/da;

.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/internal/measurement/ct;",
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

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/measurement/de;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ef;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/de;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/dh;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/dh;-><init>(Lcom/google/android/gms/internal/measurement/cx;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/ct;->b:Lcom/google/android/gms/internal/measurement/da;

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/measurement/cw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ct;->d:Ljava/util/Comparator;

    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/cy;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/cy;-><init>(Lcom/google/android/gms/internal/measurement/cx;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ct;->c:I

    .line 3
    return-void
.end method

.method static synthetic a(B)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ct;->b(B)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ct;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/de;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/de;-><init>([B)V

    return-object v0
.end method

.method static a([B)Lcom/google/android/gms/internal/measurement/ct;
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/de;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/de;-><init>([B)V

    return-object v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/measurement/ct;
    .locals 2

    .prologue
    .line 5
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ct;->b(III)I

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/de;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ct;->b:Lcom/google/android/gms/internal/measurement/da;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/da;->a([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/de;-><init>([B)V

    return-object v0
.end method

.method private static b(B)I
    .locals 1

    .prologue
    .line 4
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static b(III)I
    .locals 3

    .prologue
    .line 22
    sub-int v0, p1, p0

    .line 23
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 24
    if-gez p0, :cond_0

    .line 25
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

    .line 26
    :cond_0
    if-ge p1, p0, :cond_1

    .line 27
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

    .line 28
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

    .line 29
    :cond_2
    return v0
.end method

.method static c(I)Lcom/google/android/gms/internal/measurement/dc;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/dc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/dc;-><init>(ILcom/google/android/gms/internal/measurement/cx;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method protected abstract a(III)I
.end method

.method public abstract a(II)Lcom/google/android/gms/internal/measurement/ct;
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract a(Lcom/google/android/gms/internal/measurement/cv;)V
.end method

.method abstract b(I)B
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    .line 11
    :goto_0
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ct;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract c()Z
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ct;->c:I

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ct;->c:I

    .line 13
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v0

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/measurement/ct;->a(III)I

    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/ct;->c:I

    .line 19
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/measurement/cx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/cx;-><init>(Lcom/google/android/gms/internal/measurement/ct;)V

    .line 39
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 30
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "<ByteString@%s size=%d contents=\"%s\">"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v0

    const/16 v5, 0x32

    if-gt v0, v5, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/gr;->a(Lcom/google/android/gms/internal/measurement/ct;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    aput-object v0, v3, v4

    .line 36
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/internal/measurement/ct;->a(II)Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gr;->a(Lcom/google/android/gms/internal/measurement/ct;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
