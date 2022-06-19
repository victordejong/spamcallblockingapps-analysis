.class final Lcom/google/android/gms/internal/ads/w5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ik3;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/mk3;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ok3;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ik3;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ik3;-><init>(Lcom/google/android/gms/internal/ads/ok3;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/w5;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/w5;->e:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    return-object v0
.end method
