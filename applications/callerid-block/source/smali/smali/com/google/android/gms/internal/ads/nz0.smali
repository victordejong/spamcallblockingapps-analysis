.class final synthetic Lcom/google/android/gms/internal/ads/nz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jz0;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/jr0;

.field private final e:Landroid/app/Activity;

.field private final f:Lcom/google/android/gms/internal/ads/aq1;

.field private final g:Lcom/google/android/gms/ads/internal/overlay/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jz0;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jr0;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/aq1;Lcom/google/android/gms/ads/internal/overlay/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nz0;->b:Lcom/google/android/gms/internal/ads/jz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nz0;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nz0;->d:Lcom/google/android/gms/internal/ads/jr0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nz0;->e:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/nz0;->f:Lcom/google/android/gms/internal/ads/aq1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/nz0;->g:Lcom/google/android/gms/ads/internal/overlay/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nz0;->b:Lcom/google/android/gms/internal/ads/jz0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/nz0;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nz0;->d:Lcom/google/android/gms/internal/ads/jr0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nz0;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nz0;->f:Lcom/google/android/gms/internal/ads/aq1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nz0;->g:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jz0;->B(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p2, "dialog_action"

    const-string v5, "dismiss"

    invoke-interface {v6, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dialog_click"

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/rz0;->C6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;Lcom/google/android/gms/internal/ads/jz0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/n;->b()V

    :cond_1
    return-void
.end method
