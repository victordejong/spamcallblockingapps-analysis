.class public final Lcom/google/android/gms/internal/ads/azo;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/azl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azo;->a:Lcom/google/android/gms/internal/ads/azl;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/azl;)Lcom/google/android/gms/internal/ads/azo;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/azo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/azo;-><init>(Lcom/google/android/gms/internal/ads/azl;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0
.end method
