.class final synthetic Lcom/google/android/gms/internal/ads/ge1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ze1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ze1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ge1;->d:Lcom/google/android/gms/internal/ads/ze1;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ze1;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ge1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ge1;-><init>(Lcom/google/android/gms/internal/ads/ze1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ge1;->d:Lcom/google/android/gms/internal/ads/ze1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ze1;->v()V

    return-void
.end method
