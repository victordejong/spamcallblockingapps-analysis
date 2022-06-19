.class final Lcom/google/android/gms/measurement/internal/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ii;->a:Lcom/google/android/gms/measurement/internal/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ii;->a:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    const/4 v1, 0x0

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ii;->a:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    .line 1001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ik;->q()V

    return-void
.end method
