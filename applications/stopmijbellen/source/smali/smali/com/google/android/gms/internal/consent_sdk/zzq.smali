.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzv;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Ls4/d;

.field public final synthetic zzd:Ls4/c$b;

.field public final synthetic zze:Ls4/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzv;Landroid/app/Activity;Ls4/d;Ls4/c$b;Ls4/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zza:Lcom/google/android/gms/internal/consent_sdk/zzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzc:Ls4/d;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzd:Ls4/c$b;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zze:Ls4/c$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zza:Lcom/google/android/gms/internal/consent_sdk/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzc:Ls4/d;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zzd:Ls4/c$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->zze:Ls4/c$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzb(Landroid/app/Activity;Ls4/d;Ls4/c$b;Ls4/c$a;)V

    return-void
.end method
