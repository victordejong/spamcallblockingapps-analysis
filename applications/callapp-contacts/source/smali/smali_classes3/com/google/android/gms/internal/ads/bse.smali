.class final synthetic Lcom/google/android/gms/internal/ads/bse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brs;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/bli;

.field private final d:Landroid/app/Activity;

.field private final e:Lcom/google/android/gms/internal/ads/cty;

.field private final f:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bli;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bse;->a:Lcom/google/android/gms/internal/ads/brs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bse;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bse;->c:Lcom/google/android/gms/internal/ads/bli;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bse;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bse;->e:Lcom/google/android/gms/internal/ads/cty;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bse;->f:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bse;->a:Lcom/google/android/gms/internal/ads/brs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bse;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bse;->c:Lcom/google/android/gms/internal/ads/bli;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bse;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bse;->e:Lcom/google/android/gms/internal/ads/cty;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bse;->f:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/brs;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p2, "dialog_action"

    const-string v5, "dismiss"

    .line 5
    invoke-interface {v6, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dialog_click"

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/internal/ads/brs;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    :cond_1
    return-void
.end method
