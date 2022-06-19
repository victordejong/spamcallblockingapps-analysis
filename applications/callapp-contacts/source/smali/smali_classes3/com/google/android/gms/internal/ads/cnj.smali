.class final synthetic Lcom/google/android/gms/internal/ads/cnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cma;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cnj;->a:Lcom/google/android/gms/internal/ads/tp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnj;->a:Lcom/google/android/gms/internal/ads/tp;

    check-cast p1, Lcom/google/android/gms/internal/ads/ur;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/vm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/vm;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/ul;)V

    return-void
.end method
