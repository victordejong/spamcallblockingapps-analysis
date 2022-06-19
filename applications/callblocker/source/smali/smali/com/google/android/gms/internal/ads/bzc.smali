.class final synthetic Lcom/google/android/gms/internal/ads/bzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzc;->a:Lcom/google/android/gms/internal/ads/bzd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzc;->a:Lcom/google/android/gms/internal/ads/bzd;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bzd;->a(Landroid/os/Bundle;)V

    return-void
.end method
