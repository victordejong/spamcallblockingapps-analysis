.class final synthetic Lcom/google/android/gms/internal/ads/he;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hb;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/he;->a:Lcom/google/android/gms/internal/ads/hb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->a:Lcom/google/android/gms/internal/ads/hb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hb;->g(Ljava/lang/String;)V

    return-void
.end method
