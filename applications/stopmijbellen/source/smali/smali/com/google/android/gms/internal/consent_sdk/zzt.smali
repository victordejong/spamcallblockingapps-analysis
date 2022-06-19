.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ls4/c$a;

.field public final synthetic zzb:Lcom/google/android/gms/internal/consent_sdk/zzj;


# direct methods
.method public synthetic constructor <init>(Ls4/c$a;Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zza:Ls4/c$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zza:Ls4/c$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Ls4/e;

    check-cast v0, Lt4/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/mglab/scm/MainActivity;->v:I

    return-void
.end method
