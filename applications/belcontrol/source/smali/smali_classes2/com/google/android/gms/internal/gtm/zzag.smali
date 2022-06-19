.class public final Lcom/google/android/gms/internal/gtm/zzag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvw:Lcom/google/android/gms/internal/gtm/zzae;

.field private final synthetic zzvx:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzae;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzvw:Lcom/google/android/gms/internal/gtm/zzae;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzvx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzvw:Lcom/google/android/gms/internal/gtm/zzae;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzae;->zza(Lcom/google/android/gms/internal/gtm/zzae;)Lcom/google/android/gms/internal/gtm/zzbb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void
.end method
