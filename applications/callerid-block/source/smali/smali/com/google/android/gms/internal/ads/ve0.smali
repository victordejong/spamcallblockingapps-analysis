.class public final Lcom/google/android/gms/internal/ads/ve0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/tq1;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/tq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/al1;->o:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ve0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ve0;->b:Lcom/google/android/gms/internal/ads/tq1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ve0;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ve0;->b:Lcom/google/android/gms/internal/ads/tq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ve0;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tq1;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ve0;->c:Z

    :cond_0
    return-void
.end method
