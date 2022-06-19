.class final Lcom/google/android/gms/internal/ads/ebt;
.super Lcom/google/android/gms/internal/ads/gh;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/e/c;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ebl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebt;->b:Lcom/google/android/gms/internal/ads/ebl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gh;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebt;->a:Lcom/google/android/gms/ads/e/c;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;Lcom/google/android/gms/internal/ads/ebq;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ebt;-><init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebt;->a:Lcom/google/android/gms/ads/e/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebt;->b:Lcom/google/android/gms/internal/ads/ebl;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ebl;->a(Lcom/google/android/gms/internal/ads/ebl;Ljava/util/List;)Lcom/google/android/gms/ads/e/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/e/c;->a(Lcom/google/android/gms/ads/e/b;)V

    .line 5
    return-void
.end method
