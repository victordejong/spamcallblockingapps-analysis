.class public final Lcom/google/android/gms/internal/ads/fl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/fk;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl;->a:Lcom/google/android/gms/internal/ads/fk;

    .line 5
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/fk;)V
    .locals 2

    .prologue
    .line 1
    const-string/jumbo v0, "/reward"

    new-instance v1, Lcom/google/android/gms/internal/ads/fl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/fl;-><init>(Lcom/google/android/gms/internal/ads/fk;)V

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    const-string/jumbo v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 11
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/rr;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl;->a:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fk;->a(Lcom/google/android/gms/internal/ads/rr;)V

    .line 26
    :cond_0
    :goto_1
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string/jumbo v1, "Unable to parse reward amount."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 19
    :cond_2
    const-string/jumbo v1, "video_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl;->a:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fk;->a()V

    goto :goto_1

    .line 23
    :cond_3
    const-string/jumbo v1, "video_complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl;->a:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fk;->b()V

    goto :goto_1
.end method
