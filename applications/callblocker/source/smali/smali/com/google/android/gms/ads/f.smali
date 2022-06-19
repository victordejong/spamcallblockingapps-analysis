.class public final Lcom/google/android/gms/ads/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method private constructor <init>(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/f;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/f;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/ads/f;->c:J

    .line 5
    return-void
.end method

.method public static a(ILjava/lang/String;J)Lcom/google/android/gms/ads/f;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/ads/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/f;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method
