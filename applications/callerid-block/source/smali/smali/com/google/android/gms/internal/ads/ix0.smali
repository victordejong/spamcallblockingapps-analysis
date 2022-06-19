.class public final Lcom/google/android/gms/internal/ads/ix0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bd<",
            "Lcom/google/android/gms/internal/ads/ix0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/mx0;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/mj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/hx0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hx0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ix0;->d:Lcom/google/android/gms/internal/ads/bd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/mx0;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/mj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ix0;->a:Lcom/google/android/gms/internal/ads/mx0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ix0;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ix0;->c:Lcom/google/android/gms/internal/ads/mj;

    return-void
.end method
