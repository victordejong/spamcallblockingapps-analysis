.class public final Lcom/google/android/gms/internal/ads/awq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/arn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awm;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/arp;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awm;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/arp;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/awq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awm;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/arp;",
            ">;>;>;)",
            "Lcom/google/android/gms/internal/ads/awq;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/awq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/awq;-><init>(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1029
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/awm;->n:Lcom/google/android/gms/internal/ads/arn;

    if-nez v2, :cond_0

    .line 1030
    new-instance v2, Lcom/google/android/gms/internal/ads/arn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/arn;-><init>(Ljava/util/Set;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/awm;->n:Lcom/google/android/gms/internal/ads/arn;

    .line 1031
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/awm;->n:Lcom/google/android/gms/internal/ads/arn;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/arn;

    return-object v0
.end method
