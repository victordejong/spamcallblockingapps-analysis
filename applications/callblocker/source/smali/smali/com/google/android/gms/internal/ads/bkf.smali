.class final synthetic Lcom/google/android/gms/internal/ads/bkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bkg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkf;->a:Lcom/google/android/gms/internal/ads/bkg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkf;->a:Lcom/google/android/gms/internal/ads/bkg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bke;->a()V

    .line 3
    return-void
.end method
