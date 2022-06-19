.class public Lcom/google/android/gms/internal/ads/zzbq;
.super Lcom/google/android/gms/internal/ads/zzepl;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static zzdc:Lcom/google/android/gms/internal/ads/zzept;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzept;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzept;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbq;->zzdc:Lcom/google/android/gms/internal/ads/zzept;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/internal/ads/zzbn;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzepl;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzepn;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Lcom/google/android/gms/internal/ads/zzepn;JLcom/google/android/gms/internal/ads/zzbn;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepn;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "model("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
