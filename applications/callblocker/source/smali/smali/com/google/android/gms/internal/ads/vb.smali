.class final synthetic Lcom/google/android/gms/internal/ads/vb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/uz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->a:Lcom/google/android/gms/internal/ads/uz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->a:Lcom/google/android/gms/internal/ads/uz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uz;->a()Lcom/google/android/gms/internal/ads/dui;

    return-void
.end method
