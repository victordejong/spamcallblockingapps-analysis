.class final Lcom/google/android/gms/internal/ads/dgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dda;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/dda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgu;->a:Lcom/google/android/gms/internal/ads/dda;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .prologue
    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dgr$a$c;->a(I)Lcom/google/android/gms/internal/ads/dgr$a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
