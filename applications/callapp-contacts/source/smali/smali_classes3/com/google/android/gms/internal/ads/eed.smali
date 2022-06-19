.class public final Lcom/google/android/gms/internal/ads/eed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lorg/json/JSONObject;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eed;->d:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eed;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eed;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eed;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eed;->f:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/eed;->e:Z

    return-void
.end method
