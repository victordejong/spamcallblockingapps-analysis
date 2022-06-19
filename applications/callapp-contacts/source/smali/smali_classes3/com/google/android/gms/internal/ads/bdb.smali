.class public final Lcom/google/android/gms/internal/ads/bdb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/ex;

.field b:Lcom/google/android/gms/internal/ads/es;

.field c:Lcom/google/android/gms/internal/ads/fm;

.field d:Lcom/google/android/gms/internal/ads/fh;

.field e:Lcom/google/android/gms/internal/ads/jf;

.field final f:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fe;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdb;->f:Landroidx/b/g;

    .line 3
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdb;->g:Landroidx/b/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bcy;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/bcy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bcy;-><init>(Lcom/google/android/gms/internal/ads/bdb;Lcom/google/android/gms/internal/ads/bdc;)V

    return-object v0
.end method
