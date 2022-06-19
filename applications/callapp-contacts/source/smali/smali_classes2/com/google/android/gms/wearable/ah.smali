.class final Lcom/google/android/gms/wearable/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/wearable/internal/zzaw;

.field private final synthetic b:Lcom/google/android/gms/wearable/WearableListenerService$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/ah;->b:Lcom/google/android/gms/wearable/WearableListenerService$d;

    iput-object p2, p0, Lcom/google/android/gms/wearable/ah;->a:Lcom/google/android/gms/wearable/internal/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wearable/ah;->a:Lcom/google/android/gms/wearable/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ah;->b:Lcom/google/android/gms/wearable/WearableListenerService$d;

    iget-object v1, v1, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/f$a;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/ah;->a:Lcom/google/android/gms/wearable/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ah;->b:Lcom/google/android/gms/wearable/WearableListenerService$d;

    iget-object v1, v1, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/internal/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/f$a;)V

    return-void
.end method
