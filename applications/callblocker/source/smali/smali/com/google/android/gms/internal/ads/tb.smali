.class final synthetic Lcom/google/android/gms/internal/ads/tb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tb;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/afb;)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tb;->b:Landroid/os/Bundle;

    .line 2
    const-string/jumbo v2, "am"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/afb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    return-void
.end method
