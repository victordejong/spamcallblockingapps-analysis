.class final Lcom/google/android/gms/wearable/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/data/DataHolder;

.field private final synthetic b:Lcom/google/android/gms/wearable/WearableListenerService$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/z;->b:Lcom/google/android/gms/wearable/WearableListenerService$d;

    iput-object p2, p0, Lcom/google/android/gms/wearable/z;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/wearable/h;

    iget-object v1, p0, Lcom/google/android/gms/wearable/z;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/h;->a()V

    return-void
.end method
