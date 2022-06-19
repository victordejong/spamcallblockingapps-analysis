.class final Lcom/google/android/gms/internal/ads/kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/jw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jw;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kc;->a:Lcom/google/android/gms/internal/ads/hi;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kc;->a:Lcom/google/android/gms/internal/ads/hi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/jw;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/hi;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
