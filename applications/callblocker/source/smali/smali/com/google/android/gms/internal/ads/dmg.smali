.class final Lcom/google/android/gms/internal/ads/dmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dlj;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dlj;JJ)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmg;->a:Lcom/google/android/gms/internal/ads/dlj;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dmg;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/dmg;->c:J

    .line 5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dlj;JJLcom/google/android/gms/internal/ads/dmc;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/dmg;-><init>(Lcom/google/android/gms/internal/ads/dlj;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dmg;)Lcom/google/android/gms/internal/ads/dlj;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmg;->a:Lcom/google/android/gms/internal/ads/dlj;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dmg;)J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmg;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dmg;)J
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmg;->b:J

    return-wide v0
.end method
