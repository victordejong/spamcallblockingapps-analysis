.class public final Lcom/google/android/gms/internal/ads/fc;
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
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fc;->a:Landroid/content/Context;

    .line 3
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
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "eventName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "eventId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 15
    const-string/jumbo v0, "logScionEvent gmsg contained unsupported eventName"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :sswitch_0
    const-string/jumbo v3, "_ac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "_ai"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "_aa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 9
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ta;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ta;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ta;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    nop

    :sswitch_data_0
    .sparse-switch
        0x170bf -> :sswitch_2
        0x170c1 -> :sswitch_0
        0x170c7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
