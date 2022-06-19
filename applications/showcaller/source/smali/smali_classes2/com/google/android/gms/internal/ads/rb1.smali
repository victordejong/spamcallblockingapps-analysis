.class public final Lcom/google/android/gms/internal/ads/rb1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pb1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb1;->a:Lcom/google/android/gms/internal/ads/pb1;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb1;->a:Lcom/google/android/gms/internal/ads/pb1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pb1;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb1;->a:Lcom/google/android/gms/internal/ads/pb1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pb1;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
