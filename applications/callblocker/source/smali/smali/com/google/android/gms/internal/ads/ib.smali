.class final Lcom/google/android/gms/internal/ads/ib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/hr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hr;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ib;->b:Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ib;->a:Lcom/google/android/gms/internal/ads/fa;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ib;)Lcom/google/android/gms/internal/ads/fa;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ib;->a:Lcom/google/android/gms/internal/ads/fa;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ib;->a:Lcom/google/android/gms/internal/ads/fa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ib;->b:Lcom/google/android/gms/internal/ads/hr;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ads/fa;->a(Ljava/lang/Object;Ljava/util/Map;)V

    .line 6
    return-void
.end method
