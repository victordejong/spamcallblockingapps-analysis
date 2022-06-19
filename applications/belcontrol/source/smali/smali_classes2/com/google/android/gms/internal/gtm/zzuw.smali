.class public abstract Lcom/google/android/gms/internal/gtm/zzuw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile zzbhl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/gtm/zzuw;[B)Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuw;",
            ">(TT;[B)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzb(Lcom/google/android/gms/internal/gtm/zzuw;[BII)Lcom/google/android/gms/internal/gtm/zzuw;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/gtm/zzuw;[BII)V
    .locals 0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzuo;->zzk([BII)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuw;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzrx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzb(Lcom/google/android/gms/internal/gtm/zzuw;[BII)Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuw;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzun;->zzj([BII)Lcom/google/android/gms/internal/gtm/zzun;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuw;->zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzun;->zzan(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzuv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzry()Lcom/google/android/gms/internal/gtm/zzuw;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzux;->zzc(Lcom/google/android/gms/internal/gtm/zzuw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;
.end method

.method public zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 0

    return-void
.end method

.method public final zzpe()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzy()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    return v0
.end method

.method public zzry()Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuw;

    return-object v0
.end method

.method public final zzse()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzpe()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    return v0
.end method

.method public zzy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
