.class final Lcom/google/android/gms/internal/measurement/d7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/k7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/k7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/y6;

.field private final b:Lcom/google/android/gms/internal/measurement/x7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/y6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/y6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/m5;->a(Lcom/google/android/gms/internal/measurement/y6;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/d7;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/d7;->a:Lcom/google/android/gms/internal/measurement/y6;

    return-void
.end method

.method static h(Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/y6;)Lcom/google/android/gms/internal/measurement/d7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/y6;",
            ")",
            "Lcom/google/android/gms/internal/measurement/d7<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/d7;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d7;-><init>(Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/y6;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/x7;->g(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/d7;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m7;->f(Lcom/google/android/gms/internal/measurement/x7;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d7;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m7;->e(Lcom/google/android/gms/internal/measurement/m5;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/d7;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d7;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final e0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:Lcom/google/android/gms/internal/measurement/x7;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/r4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")V"
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/x5;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->a()Lcom/google/android/gms/internal/measurement/y7;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->b()Lcom/google/android/gms/internal/measurement/y7;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/v5;

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/g5;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/d7;->d:Lcom/google/android/gms/internal/measurement/m5;

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d7;->a:Lcom/google/android/gms/internal/measurement/y6;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/y6;->a()Lcom/google/android/gms/internal/measurement/x6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/x6;->f()Lcom/google/android/gms/internal/measurement/y6;

    move-result-object v0

    return-object v0
.end method
