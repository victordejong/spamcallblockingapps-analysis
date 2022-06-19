.class final Lcom/google/android/gms/internal/ads/dip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/din;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/din;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dip;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dip;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/din;->a(Lcom/google/android/gms/internal/ads/din;)V

    .line 3
    return-void
.end method
