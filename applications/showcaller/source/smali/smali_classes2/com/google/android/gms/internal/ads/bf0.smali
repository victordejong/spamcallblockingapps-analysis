.class final Lcom/google/android/gms/internal/ads/bf0;
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
.field final synthetic a:Lcom/google/android/gms/internal/ads/r03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cf0;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bf0;->a:Lcom/google/android/gms/internal/ads/r03;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cf0;->d()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bf0;->a:Lcom/google/android/gms/internal/ads/r03;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cf0;->d()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bf0;->a:Lcom/google/android/gms/internal/ads/r03;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
