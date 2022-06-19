.class public final Lcom/google/android/gms/internal/measurement/gz;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/eu;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/eu;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/eu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/eu;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/gz;)Lcom/google/android/gms/internal/measurement/eu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/ct;)V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/eu;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/eu;
    .locals 0

    .prologue
    .line 10
    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/eu;->get(I)Ljava/lang/Object;

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
    new-instance v0, Lcom/google/android/gms/internal/measurement/hb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>(Lcom/google/android/gms/internal/measurement/gz;)V

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
    new-instance v0, Lcom/google/android/gms/internal/measurement/gy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/gy;-><init>(Lcom/google/android/gms/internal/measurement/gz;I)V

    return-object v0
.end method

.method public final p_()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/eu;->p_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gz;->a:Lcom/google/android/gms/internal/measurement/eu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/eu;->size()I

    move-result v0

    return v0
.end method
