.class public final Lcom/google/android/gms/internal/ads/n22;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jc1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n22;->a:Lcom/google/android/gms/internal/ads/jc1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Landroid/view/View;Lcom/google/android/gms/internal/ads/j22;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/l22;

    sget-object v0, Lcom/google/android/gms/internal/ads/k22;->a:Lcom/google/android/gms/internal/ads/qc1;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/l22;-><init>(Lcom/google/android/gms/internal/ads/n22;Lcom/google/android/gms/internal/ads/qc1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n22;->a:Lcom/google/android/gms/internal/ads/jc1;

    new-instance v1, Lcom/google/android/gms/internal/ads/mz0;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/jc1;->c(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/pb1;)Lcom/google/android/gms/internal/ads/mb1;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/m22;

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/m22;-><init>(Lcom/google/android/gms/internal/ads/n22;Lcom/google/android/gms/internal/ads/mb1;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/j22;->a(Lcom/google/android/gms/ads/internal/f;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mb1;->h()Lcom/google/android/gms/internal/ads/lb1;

    move-result-object p1

    return-object p1
.end method
