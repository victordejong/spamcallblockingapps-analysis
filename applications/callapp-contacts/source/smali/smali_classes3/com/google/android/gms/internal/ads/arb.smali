.class public final Lcom/google/android/gms/internal/ads/arb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqz;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/apf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqz;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/apf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/arb;->a:Lcom/google/android/gms/internal/ads/aqz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/arb;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/arb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqz;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/apf;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/arb;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/arb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/arb;-><init>(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/apf;)Ljava/lang/String;
    .locals 0

    .line 1023
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 1069
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yc;->e:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arb;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/arb;->a(Lcom/google/android/gms/internal/ads/apf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
