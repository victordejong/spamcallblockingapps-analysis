.class final synthetic Lcom/google/android/gms/internal/ads/avt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/avt;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/act;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/avt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/avt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avt;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V

    return-void
.end method
