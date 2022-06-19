.class public Lcom/google/android/gms/internal/measurement/ed$b;
.super Lcom/google/android/gms/internal/measurement/cm;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/ed",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/cm",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/measurement/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Z

.field private final c:Lcom/google/android/gms/internal/measurement/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/ed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->c:Lcom/google/android/gms/internal/measurement/ed;

    .line 3
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->d:I

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 8
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/ed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/gd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/ed$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/dg;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/dl;->a(Lcom/google/android/gms/internal/measurement/dg;)Lcom/google/android/gms/internal/measurement/dl;

    move-result-object v2

    .line 55
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ge;Lcom/google/android/gms/internal/measurement/dp;)V
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

.method private final b([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/ed$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/dp;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 40
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 41
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/measurement/cs;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/measurement/cs;-><init>(Lcom/google/android/gms/internal/measurement/dp;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/cs;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzft; {:try_start_0 .. :try_end_0} :catch_0
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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

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
.method protected final synthetic a(Lcom/google/android/gms/internal/measurement/ck;)Lcom/google/android/gms/internal/measurement/cm;
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/google/android/gms/internal/measurement/ed;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;)Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ed$b;->b(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([BII)Lcom/google/android/gms/internal/measurement/cm;
    .locals 2

    .prologue
    .line 66
    .line 67
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/android/gms/internal/measurement/ed$b;->b([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final synthetic a([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/gms/internal/measurement/ed$b;->b([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ed;)Lcom/google/android/gms/internal/measurement/ed$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 34
    return-object p0
.end method

.method public final al()Z
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/ed;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic at()Lcom/google/android/gms/internal/measurement/fn;
    .locals 1

    .prologue
    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->c:Lcom/google/android/gms/internal/measurement/ed;

    .line 75
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->c:Lcom/google/android/gms/internal/measurement/ed;

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 80
    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    .line 81
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->t()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;)Lcom/google/android/gms/internal/measurement/ed$b;

    .line 86
    return-object v0
.end method

.method public final synthetic p()Lcom/google/android/gms/internal/measurement/cm;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    return-object v0
.end method

.method protected q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->d:I

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    .line 15
    return-void
.end method

.method public r()Lcom/google/android/gms/internal/measurement/ed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/gd;->c(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->a:Lcom/google/android/gms/internal/measurement/ed;

    goto :goto_0
.end method

.method public final s()Lcom/google/android/gms/internal/measurement/ed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->t()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->al()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>(Lcom/google/android/gms/internal/measurement/fn;)V

    .line 27
    throw v1

    .line 28
    :cond_0
    return-object v0
.end method

.method public synthetic t()Lcom/google/android/gms/internal/measurement/fn;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->r()Lcom/google/android/gms/internal/measurement/ed;

    move-result-object v0

    return-object v0
.end method

.method public synthetic u()Lcom/google/android/gms/internal/measurement/fn;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->s()Lcom/google/android/gms/internal/measurement/ed;

    move-result-object v0

    return-object v0
.end method
