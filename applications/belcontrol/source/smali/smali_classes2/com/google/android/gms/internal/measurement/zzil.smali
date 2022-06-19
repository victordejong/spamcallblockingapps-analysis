.class public abstract Lcom/google/android/gms/internal/measurement/zzil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzil;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzil;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzij;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzij;-><init>(Lcom/google/android/gms/internal/measurement/zzii;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzil;->zza:Lcom/google/android/gms/internal/measurement/zzil;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Lcom/google/android/gms/internal/measurement/zzii;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzil;->zzb:Lcom/google/android/gms/internal/measurement/zzil;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzil;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzil;->zza:Lcom/google/android/gms/internal/measurement/zzil;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzil;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzil;->zzb:Lcom/google/android/gms/internal/measurement/zzil;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
