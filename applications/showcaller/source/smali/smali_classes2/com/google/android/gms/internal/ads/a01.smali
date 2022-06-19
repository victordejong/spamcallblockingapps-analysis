.class final Lcom/google/android/gms/internal/ads/a01;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/b01;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b01;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a01;->a:Lcom/google/android/gms/internal/ads/b01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/a01;->a:Lcom/google/android/gms/internal/ads/b01;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/b01;->a(Lcom/google/android/gms/internal/ads/b01;)Lcom/google/android/gms/internal/ads/h81;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/h81;->E0(Z)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/a01;->a:Lcom/google/android/gms/internal/ads/b01;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/b01;->a(Lcom/google/android/gms/internal/ads/b01;)Lcom/google/android/gms/internal/ads/h81;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/h81;->E0(Z)V

    return-void
.end method
