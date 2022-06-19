.class public final Lcom/google/android/gms/internal/ads/pm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/pm;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    .line 2
    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/pm;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pm;->b:Ljava/util/List;

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/pm;->c:I

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/pm;->d:Ljava/io/InputStream;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/pm;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pm;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/pm;->c:I

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pm;->d:Ljava/io/InputStream;

    return-object v0
.end method
