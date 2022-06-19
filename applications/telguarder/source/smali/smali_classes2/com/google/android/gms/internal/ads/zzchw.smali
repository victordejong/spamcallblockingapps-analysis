.class final synthetic Lcom/google/android/gms/internal/ads/zzchw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final zzgjx:Lcom/google/android/gms/internal/ads/zzchs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchw;->zzgjx:Lcom/google/android/gms/internal/ads/zzchs;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchw;->zzgjx:Lcom/google/android/gms/internal/ads/zzchs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchs;->zza(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
