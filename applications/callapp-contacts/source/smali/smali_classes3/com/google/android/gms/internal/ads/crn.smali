.class public final Lcom/google/android/gms/internal/ads/crn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/crf;",
            "Lcom/google/android/gms/internal/ads/crm<",
            "+",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crn;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/crf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/cru;)Lcom/google/android/gms/internal/ads/crm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crf;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/cqs;",
            "Lcom/google/android/gms/internal/ads/cru<",
            "TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/crm<",
            "TAdT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crm;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cqy;

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrc;->zza(Lcom/google/android/gms/internal/ads/crf;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/cqy;-><init>(Lcom/google/android/gms/internal/ads/zzdrc;)V

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/crr;

    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/crr;-><init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/cru;)V

    .line 9
    new-instance p3, Lcom/google/android/gms/internal/ads/crm;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/crm;-><init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/crr;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/crn;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    :cond_0
    return-object v0
.end method
