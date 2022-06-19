.class public final Lcom/google/android/gms/ads/internal/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/google/android/gms/internal/ads/st;

.field private d:Lcom/google/android/gms/internal/ads/pk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/st;Lcom/google/android/gms/internal/ads/pk;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c;->c:Lcom/google/android/gms/internal/ads/st;

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/pk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    .line 7
    :cond_0
    return-void
.end method

.method private final c()Z
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->c:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->c:Lcom/google/android/gms/internal/ads/st;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/st;->a()Lcom/google/android/gms/internal/ads/ss;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ss;->f:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/pk;->a:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 10
    :goto_0
    return v0

    .line 9
    :cond_2
    const/4 v0, 0x0

    .line 10
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->b:Z

    .line 12
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->c:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->c:Lcom/google/android/gms/internal/ads/st;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    .line 16
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/pk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pk;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->d:Lcom/google/android/gms/internal/ads/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    const-string/jumbo v2, "{NAVIGATION_URL}"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->a:Landroid/content/Context;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
