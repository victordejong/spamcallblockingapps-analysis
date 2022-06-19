.class final Lcom/google/android/gms/internal/ads/xg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/yg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xg;->b:Lcom/google/android/gms/internal/ads/yg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xg;->b:Lcom/google/android/gms/internal/ads/yg;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/gh;->b(Ljava/lang/String;)V

    return-void
.end method
