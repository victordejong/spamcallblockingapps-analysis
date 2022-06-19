.class public final Lcom/google/android/gms/internal/ads/cii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cih;

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cif;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cih;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cif;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cii;->a:Lcom/google/android/gms/internal/ads/cih;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cii;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/cif;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cif;->a:Landroid/content/Context;

    .line 8
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/cii;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cih;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cif;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/cii;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cii;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cii;-><init>(Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cii;->a:Lcom/google/android/gms/internal/ads/cih;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cii;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cif;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cii;->a(Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/cif;)Landroid/content/Context;

    move-result-object v0

    .line 11
    return-object v0
.end method
