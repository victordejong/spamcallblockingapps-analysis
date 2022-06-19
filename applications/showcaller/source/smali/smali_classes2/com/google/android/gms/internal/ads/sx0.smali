.class public final Lcom/google/android/gms/internal/ads/sx0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/ja1<",
        "Lcom/google/android/gms/internal/ads/r71;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ex0;

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/o51;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ex0;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ex0;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/o51;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sx0;->a:Lcom/google/android/gms/internal/ads/ex0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sx0;->b:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sx0;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/sy0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sy0;->a()Lcom/google/android/gms/internal/ads/o51;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ja1;

    new-instance v2, Lcom/google/android/gms/internal/ads/dx0;

    .line 2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/dx0;-><init>(Lcom/google/android/gms/internal/ads/o51;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
