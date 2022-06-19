.class public final Lcom/google/android/gms/internal/measurement/bv;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/bw;",
        "Lcom/google/android/gms/internal/measurement/bv;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bw;->d()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/bm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bw;->d()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ca;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;ILcom/google/android/gms/internal/measurement/ca;)V

    return-object p0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;ILcom/google/android/gms/internal/measurement/ca;)V

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;J)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;Lcom/google/android/gms/internal/measurement/ca;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;Lcom/google/android/gms/internal/measurement/ca;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/ca;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/bv;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 1001
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ca;

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/ca;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bw;->a()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;I)V

    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bw;->b(Lcom/google/android/gms/internal/measurement/bw;J)V

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/bw;)V

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bw;->b()Z

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 3000
    iget-wide v0, v0, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bv;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 4000
    iget-wide v0, v0, Lcom/google/android/gms/internal/measurement/bw;->zzh:J

    return-wide v0
.end method
