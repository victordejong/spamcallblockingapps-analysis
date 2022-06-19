.class final Lcom/google/android/gms/measurement/internal/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzaa;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ev;->b:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ev;->b:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ev;->b:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1001
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ev;->b:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2001
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2002
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method
