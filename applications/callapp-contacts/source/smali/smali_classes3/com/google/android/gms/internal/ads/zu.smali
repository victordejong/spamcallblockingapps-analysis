.class final Lcom/google/android/gms/internal/ads/zu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zt;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zs;Lcom/google/android/gms/internal/ads/zt;Lcom/google/android/gms/internal/ads/zr;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zu;->a:Lcom/google/android/gms/internal/ads/zt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zu;->b:Lcom/google/android/gms/internal/ads/zr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zu;->a:Lcom/google/android/gms/internal/ads/zt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zt;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zu;->b:Lcom/google/android/gms/internal/ads/zr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zr;->a()V

    return-void
.end method
