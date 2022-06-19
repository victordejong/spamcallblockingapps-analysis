.class final Lcom/google/android/gms/measurement/internal/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fc;->b:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fc;->a:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fc;->b:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fc;->b:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fc;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 1000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 8
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 9
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->a(Lcom/google/android/gms/measurement/internal/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method
