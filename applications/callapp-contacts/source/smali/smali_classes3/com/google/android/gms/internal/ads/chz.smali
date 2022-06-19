.class final synthetic Lcom/google/android/gms/internal/ads/chz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chz;->a:Lcom/google/android/gms/internal/ads/cia;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1008
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1011
    new-instance v1, Lcom/google/android/gms/internal/ads/chw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/chw;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
