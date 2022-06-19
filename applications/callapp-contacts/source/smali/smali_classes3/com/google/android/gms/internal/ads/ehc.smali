.class final Lcom/google/android/gms/internal/ads/ehc;
.super Lcom/google/android/gms/internal/ads/zp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zp<",
        "Lcom/google/android/gms/internal/ads/ehh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/egz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ehc;->a:Lcom/google/android/gms/internal/ads/egz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehc;->a:Lcom/google/android/gms/internal/ads/egz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/egz;->a(Lcom/google/android/gms/internal/ads/egz;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->cancel(Z)Z

    move-result p1

    return p1
.end method
