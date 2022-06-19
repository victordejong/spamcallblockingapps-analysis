.class public final Lcom/google/android/gms/internal/ads/mu2;
.super Lcom/google/android/gms/internal/ads/uu2;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/t/a$a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/t/a$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uu2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mu2;->b:Lcom/google/android/gms/ads/t/a$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mu2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 0

    return-void
.end method

.method public final V0(Lcom/google/android/gms/internal/ads/su2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mu2;->b:Lcom/google/android/gms/ads/t/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/nu2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mu2;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/nu2;-><init>(Lcom/google/android/gms/internal/ads/su2;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mu2;->b:Lcom/google/android/gms/ads/t/a$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final Y(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mu2;->b:Lcom/google/android/gms/ads/t/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzym;->p()Lcom/google/android/gms/ads/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mu2;->b:Lcom/google/android/gms/ads/t/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method
