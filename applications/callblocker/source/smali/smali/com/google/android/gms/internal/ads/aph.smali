.class public final Lcom/google/android/gms/internal/ads/aph;
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
        "Lcom/google/android/gms/internal/ads/apb$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/apb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/apb;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aph;->a:Lcom/google/android/gms/internal/ads/apb;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/aph;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aph;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aph;-><init>(Lcom/google/android/gms/internal/ads/apb;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->a:Lcom/google/android/gms/internal/ads/apb;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apb;->a()Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apb$a;

    .line 8
    return-object v0
.end method
