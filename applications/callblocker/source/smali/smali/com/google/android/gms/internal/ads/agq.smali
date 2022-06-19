.class final Lcom/google/android/gms/internal/ads/agq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cdo;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/agf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/agf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->c:Lcom/google/android/gms/internal/ads/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/agq;-><init>(Lcom/google/android/gms/internal/ads/agf;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cdl;
    .locals 5

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agq;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agq;->b:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/agp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agq;->c:Lcom/google/android/gms/internal/ads/agf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/agq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/agq;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/agp;-><init>(Lcom/google/android/gms/internal/ads/agf;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/age;)V

    return-object v0
.end method

.method public final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cdo;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agq;->a:Landroid/content/Context;

    .line 12
    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cdo;
    .locals 1

    .prologue
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agq;->b:Ljava/lang/String;

    .line 8
    return-object p0
.end method
