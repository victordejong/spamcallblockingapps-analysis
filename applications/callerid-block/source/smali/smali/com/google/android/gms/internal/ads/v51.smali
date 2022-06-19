.class public final Lcom/google/android/gms/internal/ads/v51;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jg0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v51;->a:Lcom/google/android/gms/internal/ads/jg0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Landroid/view/View;Lcom/google/android/gms/internal/ads/r51;)Ljava/lang/Object;
    .locals 3

    new-instance p3, Lcom/google/android/gms/internal/ads/t51;

    sget-object v0, Lcom/google/android/gms/internal/ads/s51;->a:Lcom/google/android/gms/internal/ads/qg0;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/t51;-><init>(Lcom/google/android/gms/internal/ads/v51;Lcom/google/android/gms/internal/ads/qg0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v51;->a:Lcom/google/android/gms/internal/ads/jg0;

    new-instance v1, Lcom/google/android/gms/internal/ads/k40;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/jg0;->c(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/pf0;)Lcom/google/android/gms/internal/ads/mf0;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/u51;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/u51;-><init>(Lcom/google/android/gms/internal/ads/v51;Lcom/google/android/gms/internal/ads/mf0;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/r51;->a(Lcom/google/android/gms/ads/internal/f;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mf0;->h()Lcom/google/android/gms/internal/ads/lf0;

    move-result-object p1

    return-object p1
.end method
