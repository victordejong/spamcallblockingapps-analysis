.class public Lcom/google/android/gms/tasks/CancellationTokenSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/zza;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zza;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zza;->zza()V

    return-void
.end method

.method public getToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zza;

    return-object v0
.end method
