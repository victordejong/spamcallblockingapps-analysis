.class public Lcom/google/android/gms/ads/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/e$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/pu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/ads/e$a;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/e$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/pu;

    iget-object p1, p1, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Lcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/ads/search/a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/ads/pu;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/ads/pu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/ads/pu;

    return-object v0
.end method
