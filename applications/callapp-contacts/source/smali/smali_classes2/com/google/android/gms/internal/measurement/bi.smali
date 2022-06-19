.class public final Lcom/google/android/gms/internal/measurement/bi;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/bj;",
        "Lcom/google/android/gms/internal/measurement/bi;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bj;->d()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/bf;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bj;->d()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    .line 1001
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/bh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    .line 2001
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/bh;

    return-object p1
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/bg;)Lcom/google/android/gms/internal/measurement/bi;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bj;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/bh;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bj;ILcom/google/android/gms/internal/measurement/bh;)V

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/an;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/bj;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bj;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/bi;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bj;)V

    return-object p0
.end method
