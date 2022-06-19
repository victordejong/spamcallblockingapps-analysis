.class final Lcom/google/android/gms/measurement/internal/o8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/o9;

.field final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/q8;Lcom/google/android/gms/measurement/internal/o9;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/o9;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/o9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o9;->j(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/o9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->f()V

    return-void
.end method
