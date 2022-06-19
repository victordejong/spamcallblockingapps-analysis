.class public final Lcom/google/android/gms/internal/ads/dfw;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ddm;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ddm;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ddm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ddm;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dfw;)Lcom/google/android/gms/internal/ads/ddm;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ddm;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ddm;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dfy;-><init>(Lcom/google/android/gms/internal/ads/dfw;)V

    return-object v0
.end method

.method public final l_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ddm;->l_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dfz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dfz;-><init>(Lcom/google/android/gms/internal/ads/dfw;I)V

    return-object v0
.end method

.method public final m_()Lcom/google/android/gms/internal/ads/ddm;
    .locals 0

    .prologue
    .line 10
    return-object p0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw;->a:Lcom/google/android/gms/internal/ads/ddm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ddm;->size()I

    move-result v0

    return v0
.end method
