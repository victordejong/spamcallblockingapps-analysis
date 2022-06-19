.class public final Lcom/google/android/gms/internal/ads/cvm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvm;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cvm;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwa;->a()Lcom/google/android/gms/internal/ads/cwa$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvm;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwa$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cwa$b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cwa$a;->zzhww:Lcom/google/android/gms/internal/ads/cwa$a;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwa$b;->a(Lcom/google/android/gms/internal/ads/cwa$a;)Lcom/google/android/gms/internal/ads/cwa$b;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvt;->a()Lcom/google/android/gms/internal/ads/cvt$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/cvt$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cvt$b;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/cvt$a;->zzhwp:Lcom/google/android/gms/internal/ads/cvt$a;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/cvt$b;->a(Lcom/google/android/gms/internal/ads/cvt$a;)Lcom/google/android/gms/internal/ads/cvt$b;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cwa$b;->a(Lcom/google/android/gms/internal/ads/cvt$b;)Lcom/google/android/gms/internal/ads/cwa$b;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/cwa;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvm;->b:Landroid/os/Looper;

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/cvl;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/cvl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/cwa;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cvl;->b()V

    return-void
.end method
