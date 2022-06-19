.class public final Lcom/google/android/gms/tasks/zzv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/gms/tasks/zzw;

.field private static zzb:Lcom/google/android/gms/tasks/zzw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tasks/zzx;->zza:Lcom/google/android/gms/tasks/zzw;

    sput-object v0, Lcom/google/android/gms/tasks/zzv;->zza:Lcom/google/android/gms/tasks/zzw;

    sput-object v0, Lcom/google/android/gms/tasks/zzv;->zzb:Lcom/google/android/gms/tasks/zzw;

    return-void
.end method

.method public static zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tasks/zzv;->zzb:Lcom/google/android/gms/tasks/zzw;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzb(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method
