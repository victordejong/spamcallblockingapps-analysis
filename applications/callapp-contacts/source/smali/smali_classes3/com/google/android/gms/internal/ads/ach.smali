.class final synthetic Lcom/google/android/gms/internal/ads/ach;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/abu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ach;->a:Lcom/google/android/gms/internal/ads/abw;

    return-void
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ach;->a:Lcom/google/android/gms/internal/ads/abw;

    .line 1242
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acg;->a(ZJ)V

    :cond_0
    return-void
.end method
