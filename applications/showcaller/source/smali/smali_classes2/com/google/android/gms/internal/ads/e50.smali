.class final Lcom/google/android/gms/internal/ads/e50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/n20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/ads/f50;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/f50;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e50;->b:Lcom/google/android/gms/internal/ads/f50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e50;->a:Lcom/google/android/gms/internal/ads/n20;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/e50;)Lcom/google/android/gms/internal/ads/n20;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/e50;->a:Lcom/google/android/gms/internal/ads/n20;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e50;->a:Lcom/google/android/gms/internal/ads/n20;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e50;->b:Lcom/google/android/gms/internal/ads/f50;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/n20;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
