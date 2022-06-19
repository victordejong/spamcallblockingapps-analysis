.class final Lcom/google/android/gms/internal/ads/ia0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/ja0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ja0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ia0;->d:Lcom/google/android/gms/internal/ads/ja0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ia0;->d:Lcom/google/android/gms/internal/ads/ja0;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ra0;->b(Ljava/lang/String;)V

    return-void
.end method
