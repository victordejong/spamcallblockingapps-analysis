.class public Lcom/google/android/gms/internal/ads/dhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhs;->c(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhp;->a:Ljava/util/LinkedHashMap;

    .line 3
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dhp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TV;>;)",
            "Lcom/google/android/gms/internal/ads/dhp",
            "<TK;TV;TV2;>;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhp;->a:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "key"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    return-object p0
.end method
