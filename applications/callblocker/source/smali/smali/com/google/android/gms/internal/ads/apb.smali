.class public Lcom/google/android/gms/internal/ads/apb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/apb$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/chh;

.field private c:Landroid/os/Bundle;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/chb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/apb$a;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/apb$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apb$a;->b(Lcom/google/android/gms/internal/ads/apb$a;)Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apb$a;->c(Lcom/google/android/gms/internal/ads/apb$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->c:Landroid/os/Bundle;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apb$a;->d(Lcom/google/android/gms/internal/ads/apb$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apb$a;->e(Lcom/google/android/gms/internal/ads/apb$a;)Lcom/google/android/gms/internal/ads/chb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->e:Lcom/google/android/gms/internal/ads/chb;

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/apb$a;Lcom/google/android/gms/internal/ads/apa;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/apb;-><init>(Lcom/google/android/gms/internal/ads/apb$a;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/apb;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method final a()Lcom/google/android/gms/internal/ads/apb$a;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/apb$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/apb$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apb;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apb;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apb;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apb;->c:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/chh;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->b:Lcom/google/android/gms/internal/ads/chh;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/chb;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->e:Lcom/google/android/gms/internal/ads/chb;

    return-object v0
.end method

.method final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb;->d:Ljava/lang/String;

    return-object v0
.end method
