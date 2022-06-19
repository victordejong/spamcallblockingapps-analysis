.class public final Lcom/google/android/gms/internal/gtm/zzdf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzadd:Lcom/google/android/gms/internal/gtm/zzde;

.field private static volatile zzade:Lcom/google/android/gms/internal/gtm/zzde;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzdh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzdh;-><init>(Lcom/google/android/gms/internal/gtm/zzdg;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzdf;->zzadd:Lcom/google/android/gms/internal/gtm/zzde;

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzdf;->zzade:Lcom/google/android/gms/internal/gtm/zzde;

    return-void
.end method

.method public static zzgp()Lcom/google/android/gms/internal/gtm/zzde;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdf;->zzade:Lcom/google/android/gms/internal/gtm/zzde;

    return-object v0
.end method
