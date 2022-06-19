.class final Lcom/google/android/gms/internal/ads/rc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mp;->c()V

    return-void
.end method
