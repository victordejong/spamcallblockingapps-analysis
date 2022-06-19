.class public final Lcom/google/android/gms/internal/measurement/am;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/an;",
        "Lcom/google/android/gms/internal/measurement/am;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/an;->b()Lcom/google/android/gms/internal/measurement/an;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/al;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/an;->b()Lcom/google/android/gms/internal/measurement/an;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/an;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 1001
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ao;)Lcom/google/android/gms/internal/measurement/am;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ap;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/an;->a(Lcom/google/android/gms/internal/measurement/an;ILcom/google/android/gms/internal/measurement/ap;)V

    return-object p0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/ay;)Lcom/google/android/gms/internal/measurement/am;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/az;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/an;->a(Lcom/google/android/gms/internal/measurement/an;ILcom/google/android/gms/internal/measurement/az;)V

    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/az;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/an;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 2001
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/az;

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/an;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 3001
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/an;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/an;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 4001
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ap;

    return-object p1
.end method
