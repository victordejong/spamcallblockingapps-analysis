.class public Lcom/google/android/gms/internal/ads/dnh$b;
.super Lcom/google/android/gms/internal/ads/dlm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dnh<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/dlm<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/dnh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Z

.field private final c:Lcom/google/android/gms/internal/ads/dnh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/dnh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dlm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->c:Lcom/google/android/gms/internal/ads/dnh;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/dnh$d;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    return-void
.end method

.method private a()Lcom/google/android/gms/internal/ads/dnh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dpp;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dnh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dpp;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dmi;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dmi;",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmp;->a(Lcom/google/android/gms/internal/ads/dmi;)Lcom/google/android/gms/internal/ads/dmp;

    move-result-object p1

    .line 53
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dpj;Lcom/google/android/gms/internal/ads/dmt;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 58
    :cond_1
    throw p1
.end method

.method private final b([BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh$b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/dmt;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dpi;->a()Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dpi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dpp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    const/4 v5, 0x0

    new-instance v7, Lcom/google/android/gms/internal/ads/dlr;

    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/ads/dlr;-><init>(Lcom/google/android/gms/internal/ads/dmt;)V

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dpp;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dlr;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenn;->a()Lcom/google/android/gms/internal/ads/zzenn;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 41
    throw p1
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/internal/ads/dln;)Lcom/google/android/gms/internal/ads/dlm;
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dmi;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dlm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dnh$b;->b(Lcom/google/android/gms/internal/ads/dmi;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a([BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dlm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dnh$b;->b([BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dnh;)V

    return-object p0
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/ads/dlm;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method protected final c()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    sget v1, Lcom/google/android/gms/internal/ads/dnh$d;->d:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dnh;)V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->c:Lcom/google/android/gms/internal/ads/dnh;

    .line 74
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    .line 75
    sget v1, Lcom/google/android/gms/internal/ads/dnh$d;->e:I

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dnh;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh$b;

    .line 2066
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->a()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v1

    .line 79
    check-cast v1, Lcom/google/android/gms/internal/ads/dnh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dnh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1066
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->a()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeqb;-><init>(Lcom/google/android/gms/internal/ads/dot;)V

    .line 25
    throw v1
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/ads/dot;
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->a()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/google/android/gms/internal/ads/dot;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic o()Lcom/google/android/gms/internal/ads/dot;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->c:Lcom/google/android/gms/internal/ads/dnh;

    return-object v0
.end method
