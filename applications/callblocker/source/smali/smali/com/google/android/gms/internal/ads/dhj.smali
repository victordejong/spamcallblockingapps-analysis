.class public Lcom/google/android/gms/internal/ads/dhj;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/ads/dhl;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/gms/internal/ads/dhj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dhl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dhj;->c:Lcom/google/android/gms/internal/ads/dhl;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dhj;->b:Ljava/util/Iterator;

    .line 4
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_0
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dhj;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dhj;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dhm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dhm;-><init>(Lcom/google/android/gms/internal/ads/dhj;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dhj;->c:Lcom/google/android/gms/internal/ads/dhl;

    const-string/jumbo v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dhj;->c:Lcom/google/android/gms/internal/ads/dhl;

    const-string/jumbo v1, "blowup running"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dhj;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
