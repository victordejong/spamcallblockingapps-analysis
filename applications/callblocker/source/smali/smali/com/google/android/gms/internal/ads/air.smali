.class public final Lcom/google/android/gms/internal/ads/air;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgs;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/clj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/clj;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/air;->b:Lcom/google/android/gms/internal/ads/chd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/air;->c:Lcom/google/android/gms/internal/ads/clj;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/air;->a:Lcom/google/android/gms/internal/ads/cgs;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/air;->c:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/air;->b:Lcom/google/android/gms/internal/ads/chd;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/air;->a:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgs;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V

    .line 7
    return-void
.end method
