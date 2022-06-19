.class public final Lcom/google/android/gms/internal/ads/bee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adb;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Lcom/google/android/gms/internal/ads/ctl;

.field private final e:Lcom/google/android/gms/internal/ads/yd;

.field private final f:Lcom/google/android/gms/ads/internal/a;

.field private final g:Lcom/google/android/gms/internal/ads/dwi;

.field private final h:Lcom/google/android/gms/internal/ads/arz;

.field private final i:Lcom/google/android/gms/internal/ads/dvk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/adb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/arz;Lcom/google/android/gms/internal/ads/avp;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bee;->a:Lcom/google/android/gms/internal/ads/adb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bee;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bee;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bee;->d:Lcom/google/android/gms/internal/ads/ctl;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bee;->e:Lcom/google/android/gms/internal/ads/yd;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bee;->f:Lcom/google/android/gms/ads/internal/a;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bee;->g:Lcom/google/android/gms/internal/ads/dwi;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bee;->h:Lcom/google/android/gms/internal/ads/arz;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bee;->i:Lcom/google/android/gms/internal/ads/dvk;

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bee;)Lcom/google/android/gms/internal/ads/arz;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bee;->h:Lcom/google/android/gms/internal/ads/arz;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bee;->b:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aei;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bee;->d:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bee;->e:Lcom/google/android/gms/internal/ads/yd;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/internal/ads/bei;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/bei;-><init>(Lcom/google/android/gms/internal/ads/bee;)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/bee;->f:Lcom/google/android/gms/ads/internal/a;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/bee;->g:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/bee;->i:Lcom/google/android/gms/internal/ads/dvk;

    move v4, v3

    move v12, p2

    .line 15
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/adb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    return-object v0
.end method
