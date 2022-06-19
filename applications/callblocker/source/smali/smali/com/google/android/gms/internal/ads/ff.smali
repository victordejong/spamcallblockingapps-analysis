.class public final Lcom/google/android/gms/internal/ads/ff;
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
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/c;

.field private final b:Lcom/google/android/gms/internal/ads/ni;

.field private final c:Lcom/google/android/gms/internal/ads/ns;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "resize"

    aput-object v2, v0, v1

    const-string/jumbo v1, "playVideo"

    aput-object v1, v0, v4

    const-string/jumbo v1, "storePicture"

    aput-object v1, v0, v5

    const-string/jumbo v1, "createCalendarEvent"

    aput-object v1, v0, v6

    const-string/jumbo v1, "setOrientationProperties"

    aput-object v1, v0, v7

    const-string/jumbo v1, "closeResizedAd"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "unload"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x6

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const/4 v3, 0x7

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/f;->a([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ff;->d:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;Lcom/google/android/gms/internal/ads/ns;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ff;->a:Lcom/google/android/gms/ads/internal/c;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ff;->b:Lcom/google/android/gms/internal/ads/ni;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ff;->c:Lcom/google/android/gms/internal/ads/ns;

    .line 5
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 7
    const-string/jumbo v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/ff;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff;->a:Lcom/google/android/gms/ads/internal/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff;->a:Lcom/google/android/gms/ads/internal/c;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->a:Lcom/google/android/gms/ads/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 13
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 26
    :pswitch_0
    const-string/jumbo v0, "Unknown MRAID command called."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->b:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ni;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 16
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ads/nd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nd;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nd;->a()V

    goto :goto_0

    .line 18
    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/nj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nj;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nj;->a()V

    goto :goto_0

    .line 20
    :pswitch_4
    new-instance v0, Lcom/google/android/gms/internal/ads/nk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nk;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk;->a()V

    goto :goto_0

    .line 22
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->b:Lcom/google/android/gms/internal/ads/ni;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ni;->a(Z)V

    goto :goto_0

    .line 24
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->c:Lcom/google/android/gms/internal/ads/ns;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ns;->b()V

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
