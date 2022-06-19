.class final Lcom/google/android/gms/measurement/internal/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Lcom/google/android/gms/measurement/internal/fl;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Lcom/google/android/gms/measurement/internal/zzas;

    .line 1001
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v3, "_cmp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v2, :cond_2

    .line 1002
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zze()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v3, "_cis"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "referrer broadcast"

    .line 1004
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "referrer API"

    .line 1005
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 1006
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    .line 1006
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event has been filtered "

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    .line 1007
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-string v5, "_cmpx"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v1, v0

    .line 1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
