.class final Lcom/google/android/gms/measurement/internal/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzkl;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hm;->d:Lcom/google/android/gms/measurement/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hm;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/hm;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/hm;->c:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hm;->d:Lcom/google/android/gms/measurement/internal/ik;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hm;->d:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Discarding data. Failed to set user property"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hm;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hm;->d:Lcom/google/android/gms/measurement/internal/ik;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/hm;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hm;->c:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hm;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/measurement/internal/df;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hm;->d:Lcom/google/android/gms/measurement/internal/ik;

    .line 2001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ik;->i()V

    return-void
.end method
