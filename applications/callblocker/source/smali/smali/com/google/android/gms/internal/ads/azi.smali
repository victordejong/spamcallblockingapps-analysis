.class public final Lcom/google/android/gms/internal/ads/azi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/da;

.field b:Lcom/google/android/gms/internal/ads/cv;

.field c:Lcom/google/android/gms/internal/ads/do;

.field d:Lcom/google/android/gms/internal/ads/dj;

.field e:Lcom/google/android/gms/internal/ads/gv;

.field final f:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dg;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/db;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->f:Landroidx/b/g;

    .line 3
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->g:Landroidx/b/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/azg;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/azg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/azg;-><init>(Lcom/google/android/gms/internal/ads/azi;Lcom/google/android/gms/internal/ads/azj;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cv;)Lcom/google/android/gms/internal/ads/azi;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/cv;

    .line 7
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/azi;
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/internal/ads/da;

    .line 5
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dj;)Lcom/google/android/gms/internal/ads/azi;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->d:Lcom/google/android/gms/internal/ads/dj;

    .line 11
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/do;)Lcom/google/android/gms/internal/ads/azi;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->c:Lcom/google/android/gms/internal/ads/do;

    .line 9
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gv;)Lcom/google/android/gms/internal/ads/azi;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->e:Lcom/google/android/gms/internal/ads/gv;

    .line 13
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/db;)Lcom/google/android/gms/internal/ads/azi;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->f:Landroidx/b/g;

    invoke-virtual {v0, p1, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->g:Landroidx/b/g;

    invoke-virtual {v0, p1, p3}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-object p0
.end method
