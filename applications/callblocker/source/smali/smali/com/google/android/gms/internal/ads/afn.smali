.class public final Lcom/google/android/gms/internal/ads/afn;
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
.field private final a:Lcom/google/android/gms/internal/ads/afk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afn;->a:Lcom/google/android/gms/internal/ads/afk;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/afk;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afk;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afn;->a:Lcom/google/android/gms/internal/ads/afk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/afn;->a(Lcom/google/android/gms/internal/ads/afk;)Landroid/content/Context;

    move-result-object v0

    .line 7
    return-object v0
.end method
