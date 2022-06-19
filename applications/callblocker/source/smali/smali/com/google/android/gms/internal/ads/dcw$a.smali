.class public Lcom/google/android/gms/internal/ads/dcw$a;
.super Lcom/google/android/gms/internal/ads/dbb;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dcw",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/dbb",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/dcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Z

.field private final c:Lcom/google/android/gms/internal/ads/dcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/dcw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->c:Lcom/google/android/gms/internal/ads/dcw;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/dcw$f;->d:I

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 8
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dcw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dfd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dby;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dby;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dcb;->a(Lcom/google/android/gms/internal/ads/dby;)Lcom/google/android/gms/internal/ads/dcb;

    move-result-object v2

    .line 55
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;Lcom/google/android/gms/internal/ads/dci;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 60
    :cond_1
    throw v0
.end method

.method private final b([BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 40
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 41
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/dbh;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/dbh;-><init>(Lcom/google/android/gms/internal/ads/dci;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dfd;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dbh;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    return-object p0

    .line 43
    :catch_0
    move-exception v0

    throw v0

    .line 45
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from byte array should not throw IOException."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/internal/ads/day;)Lcom/google/android/gms/internal/ads/dbb;
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dby;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dbb;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dcw$a;->b(Lcom/google/android/gms/internal/ads/dby;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dbb;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/dcw$a;->b([BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 34
    return-object p0
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/ads/dbb;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    return-object v0
.end method

.method protected c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    sget v1, Lcom/google/android/gms/internal/ads/dcw$f;->d:I

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 15
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->c:Lcom/google/android/gms/internal/ads/dcw;

    .line 76
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 77
    sget v1, Lcom/google/android/gms/internal/ads/dcw$f;->e:I

    .line 78
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/dcw;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$a;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->f()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    .line 83
    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/ads/dcw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dfd;->c(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/dcw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->f()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeez;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeez;-><init>(Lcom/google/android/gms/internal/ads/deg;)V

    .line 27
    throw v1

    .line 28
    :cond_0
    return-object v0
.end method

.method public synthetic f()Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->d()Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->e()Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic w()Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->c:Lcom/google/android/gms/internal/ads/dcw;

    .line 72
    return-object v0
.end method
