.class final synthetic Lcom/google/android/gms/internal/ads/iw1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/dw1;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/rn1;

.field private final g:Landroid/app/Activity;

.field private final h:Lcom/google/android/gms/internal/ads/jo2;

.field private final i:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dw1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rn1;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iw1;->d:Lcom/google/android/gms/internal/ads/dw1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iw1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/iw1;->f:Lcom/google/android/gms/internal/ads/rn1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/iw1;->g:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/iw1;->h:Lcom/google/android/gms/internal/ads/jo2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/iw1;->i:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 8

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iw1;->d:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/iw1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iw1;->f:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iw1;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iw1;->h:Lcom/google/android/gms/internal/ads/jo2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/iw1;->i:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/dw1;->g(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v6, Ljava/util/HashMap;

    .line 2
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v5, "dialog_action"

    const-string v7, "dismiss"

    .line 3
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dialog_click"

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/lw1;->H6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/dw1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/l;->b()V

    :cond_1
    return-void
.end method
