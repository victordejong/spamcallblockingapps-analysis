.class public final Lcom/google/android/gms/internal/ads/bdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fk;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqq;

.field private final b:Lcom/google/android/gms/internal/ads/rr;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aqq;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/aqq;

    .line 3
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->b:Lcom/google/android/gms/internal/ads/rr;

    .line 4
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->d:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/aqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqq;->d()V

    .line 8
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rr;)V
    .locals 4
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .prologue
    .line 9
    const-string/jumbo v1, ""

    .line 10
    const/4 v0, 0x1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bdp;->b:Lcom/google/android/gms/internal/ads/rr;

    if-eqz v2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bdp;->b:Lcom/google/android/gms/internal/ads/rr;

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rr;->a:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/google/android/gms/internal/ads/rr;->b:I

    .line 16
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/qp;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/qp;-><init>(Ljava/lang/String;I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/aqq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdp;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bdp;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/aqq;->a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/aqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqq;->e()V

    .line 20
    return-void
.end method
