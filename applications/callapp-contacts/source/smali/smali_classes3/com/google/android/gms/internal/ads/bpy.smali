.class public final Lcom/google/android/gms/internal/ads/bpy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/lk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lk<",
            "Lcom/google/android/gms/internal/ads/bpy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/bqb;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/ta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/bpx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bpx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bpy;->d:Lcom/google/android/gms/internal/ads/lk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bqb;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpy;->a:Lcom/google/android/gms/internal/ads/bqb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpy;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/ta;

    return-void
.end method
