.class final synthetic Lcom/google/android/gms/internal/ads/beo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/beh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/beh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/beo;->a:Lcom/google/android/gms/internal/ads/beh;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/beo;->a:Lcom/google/android/gms/internal/ads/beh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/beh;->a(Landroid/view/View;)V

    return-void
.end method
