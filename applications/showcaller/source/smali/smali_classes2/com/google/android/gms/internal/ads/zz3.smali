.class public final Lcom/google/android/gms/internal/ads/zz3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wy3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wy3;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zz3;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zz3;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zz3;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zz3;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zz3;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wy3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zz3;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zz3;->c:I

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zz3;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
