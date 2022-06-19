.class final Lcom/google/android/gms/measurement/internal/jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/jm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jm;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jl;->d:Lcom/google/android/gms/measurement/internal/jm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jl;->a:Ljava/lang/String;

    const-string p1, "_err"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/jl;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jl;->d:Lcom/google/android/gms/measurement/internal/jm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jl;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jl;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jl;->c:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jl;->d:Lcom/google/android/gms/measurement/internal/jm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v6

    const-string v5, "auto"

    const/4 v8, 0x0

    .line 3
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jl;->d:Lcom/google/android/gms/measurement/internal/jm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/jm;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jl;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
