.class public final Lcom/google/android/gms/internal/ads/apb$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/apb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/ads/chh;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ads/chb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/apb$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/apb$a;)Lcom/google/android/gms/internal/ads/chh;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb$a;->b:Lcom/google/android/gms/internal/ads/chh;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/apb$a;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb$a;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/apb$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/apb$a;)Lcom/google/android/gms/internal/ads/chb;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apb$a;->e:Lcom/google/android/gms/internal/ads/chb;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apb$a;->a:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/apb$a;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apb$a;->c:Landroid/os/Bundle;

    .line 7
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chb;)Lcom/google/android/gms/internal/ads/apb$a;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apb$a;->e:Lcom/google/android/gms/internal/ads/chb;

    .line 12
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apb$a;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/apb$a;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apb$a;->d:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/apb;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/apb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/apb;-><init>(Lcom/google/android/gms/internal/ads/apb$a;Lcom/google/android/gms/internal/ads/apa;)V

    return-object v0
.end method
