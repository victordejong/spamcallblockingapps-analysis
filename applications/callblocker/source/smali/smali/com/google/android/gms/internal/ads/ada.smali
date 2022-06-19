.class final synthetic Lcom/google/android/gms/internal/ads/ada;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ctl;

.field private final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Lcom/google/android/gms/ads/internal/a;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/ads/internal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ada;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ada;->b:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ada;->c:Lcom/google/android/gms/internal/ads/yd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ada;->d:Lcom/google/android/gms/ads/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ada;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ada;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ada;->b:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ada;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ada;->d:Lcom/google/android/gms/ads/internal/a;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/ada;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->d()Lcom/google/android/gms/internal/ads/adb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->a()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwi;->a()Lcom/google/android/gms/internal/ads/dwi;

    move-result-object v10

    move v4, v3

    move-object v8, v7

    move-object v11, v7

    move v12, v3

    .line 5
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/adb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/adc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/adc;-><init>(Lcom/google/android/gms/internal/ads/yp;)V

    .line 9
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 10
    invoke-interface {v0, v13}, Lcom/google/android/gms/internal/ads/act;->loadUrl(Ljava/lang/String;)V

    .line 12
    return-object v1
.end method
