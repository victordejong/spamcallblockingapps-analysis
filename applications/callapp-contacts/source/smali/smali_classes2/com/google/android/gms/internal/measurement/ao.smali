.class public final Lcom/google/android/gms/internal/measurement/ao;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/ap;",
        "Lcom/google/android/gms/internal/measurement/ao;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ap;->f()Lcom/google/android/gms/internal/measurement/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/al;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ap;->f()Lcom/google/android/gms/internal/measurement/ap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/measurement/ar;)Lcom/google/android/gms/internal/measurement/ao;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/ap;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ap;->a(Lcom/google/android/gms/internal/measurement/ap;ILcom/google/android/gms/internal/measurement/ar;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/ap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ap;->a(Lcom/google/android/gms/internal/measurement/ap;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/ap;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ap;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 1001
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ar;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/ap;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ap;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/ap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ap;->b()I

    move-result v0

    return v0
.end method
