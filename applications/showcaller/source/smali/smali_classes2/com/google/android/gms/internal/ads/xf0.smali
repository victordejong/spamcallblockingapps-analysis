.class final synthetic Lcom/google/android/gms/internal/ads/xf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/lg0;

.field private final e:Lcom/google/android/gms/internal/ads/jg0;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lg0;Lcom/google/android/gms/internal/ads/jg0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xf0;->d:Lcom/google/android/gms/internal/ads/lg0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xf0;->e:Lcom/google/android/gms/internal/ads/jg0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xf0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xf0;->d:Lcom/google/android/gms/internal/ads/lg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xf0;->e:Lcom/google/android/gms/internal/ads/jg0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xf0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/lg0;->x(Lcom/google/android/gms/internal/ads/jg0;Ljava/lang/String;)V

    return-void
.end method
