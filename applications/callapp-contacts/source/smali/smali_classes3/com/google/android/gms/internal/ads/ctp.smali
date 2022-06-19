.class final synthetic Lcom/google/android/gms/internal/ads/ctp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctp;->a:Lcom/google/android/gms/internal/ads/csu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctp;->a:Lcom/google/android/gms/internal/ads/csu;

    check-cast p1, Lcom/google/android/gms/internal/ads/cto;

    .line 1013
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/csu;->a:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/google/android/gms/internal/ads/ctj;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/csu;->b:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/cto;->b(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V

    return-void
.end method
