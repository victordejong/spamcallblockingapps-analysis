.class final Lcom/google/android/gms/internal/ads/wm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xd;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/ads/internal/util/zzf;

.field private c:Lcom/google/android/gms/internal/ads/wo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/wi;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wm;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xd;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wm;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/ads/internal/util/zzf;)Lcom/google/android/gms/internal/ads/xd;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/zzf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wm;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/wo;)Lcom/google/android/gms/internal/ads/xd;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/wo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wm;->c:Lcom/google/android/gms/internal/ads/wo;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/xe;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wm;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wm;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wm;->c:Lcom/google/android/gms/internal/ads/wo;

    const-class v1, Lcom/google/android/gms/internal/ads/wo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/wj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wm;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wm;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wm;->c:Lcom/google/android/gms/internal/ads/wo;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/wj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/wi;)V

    return-object v0
.end method
