.class final Lcom/google/android/gms/measurement/internal/zzjs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:J

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjz;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:Lcom/google/android/gms/measurement/internal/zzjz;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:J

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjz;->zzi(Lcom/google/android/gms/measurement/internal/zzjz;J)V

    return-void
.end method
