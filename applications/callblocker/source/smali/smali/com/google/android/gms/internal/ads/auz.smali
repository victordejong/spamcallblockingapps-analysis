.class public final Lcom/google/android/gms/internal/ads/auz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/auv;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/clj;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/clj;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cgr;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/auz;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/auz;->b:Lcom/google/android/gms/internal/ads/clj;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/auz;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/auz;->b:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/auz;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/util/List;)V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/auz;->c:Z

    .line 8
    :cond_0
    return-void
.end method
