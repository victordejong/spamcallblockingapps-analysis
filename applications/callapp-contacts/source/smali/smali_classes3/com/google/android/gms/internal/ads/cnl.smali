.class final synthetic Lcom/google/android/gms/internal/ads/cnl;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cnl;->a:Lcom/google/android/gms/internal/ads/tp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnl;->a:Lcom/google/android/gms/internal/ads/tp;

    check-cast p1, Lcom/google/android/gms/internal/ads/tz;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/tz;->a(Lcom/google/android/gms/internal/ads/tp;)V

    return-void
.end method
