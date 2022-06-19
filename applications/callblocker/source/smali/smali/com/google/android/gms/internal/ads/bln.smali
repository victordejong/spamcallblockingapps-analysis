.class public final Lcom/google/android/gms/internal/ads/bln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jg",
            "<",
            "Lcom/google/android/gms/internal/ads/bln;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/blu;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/qc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/blq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/blq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bln;->d:Lcom/google/android/gms/internal/ads/jg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/blu;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qc;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bln;->a:Lcom/google/android/gms/internal/ads/blu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bln;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bln;->c:Lcom/google/android/gms/internal/ads/qc;

    .line 5
    return-void
.end method
