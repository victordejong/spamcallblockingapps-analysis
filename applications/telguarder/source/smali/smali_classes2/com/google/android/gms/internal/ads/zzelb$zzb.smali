.class public Lcom/google/android/gms/internal/ads/zzelb$zzb;
.super Lcom/google/android/gms/internal/ads/zzejg;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzelb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzejg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zziqo:Lcom/google/android/gms/internal/ads/zzelb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zziqp:Lcom/google/android/gms/internal/ads/zzelb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zziqq:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzelb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqo:Lcom/google/android/gms/internal/ads/zzelb;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqv:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzelb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzenj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzekc;",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekj;->zza(Lcom/google/android/gms/internal/ads/zzekc;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p1

    .line 53
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzenj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzend;Lcom/google/android/gms/internal/ads/zzeko;)V
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

.method private final zzb([BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 36
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzejm;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzejm;-><init>(Lcom/google/android/gms/internal/ads/zzeko;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzenj;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzejm;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_2
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 41
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqo:Lcom/google/android/gms/internal/ads/zzelb;

    .line 74
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 75
    sget v1, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqw:I

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiv()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzejg;
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    const/4 p2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb([BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-object p0
.end method

.method public final synthetic zzbfy()Lcom/google/android/gms/internal/ads/zzejg;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final synthetic zzbiq()Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqo:Lcom/google/android/gms/internal/ads/zzelb;

    return-object v0
.end method

.method protected zzbis()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    sget v1, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqv:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    return-void
.end method

.method public zzbit()Lcom/google/android/gms/internal/ads/zzelb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzenj;->zzak(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    return-object v0
.end method

.method public final zzbiu()Lcom/google/android/gms/internal/ads/zzelb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiv()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeoc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeoc;-><init>(Lcom/google/android/gms/internal/ads/zzemo;)V

    .line 25
    throw v1
.end method

.method public synthetic zzbiv()Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbit()Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzbiw()Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiu()Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object v0

    return-object v0
.end method
