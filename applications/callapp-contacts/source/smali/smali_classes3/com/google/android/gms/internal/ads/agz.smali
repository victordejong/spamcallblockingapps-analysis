.class final Lcom/google/android/gms/internal/ads/agz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjv;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agz;->c:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/agz;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cjs;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agz;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agz;->b:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ahc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agz;->c:Lcom/google/android/gms/internal/ads/ago;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/agz;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/agz;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ahc;-><init>(Lcom/google/android/gms/internal/ads/ago;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v0
.end method

.method public final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cjv;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agz;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cjv;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agz;->b:Ljava/lang/String;

    return-object p0
.end method
