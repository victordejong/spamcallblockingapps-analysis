.class public final Lcom/google/android/gms/wearable/internal/k;
.super Lcom/google/android/gms/wearable/ChannelClient;


# instance fields
.field private final h:Lcom/google/android/gms/wearable/internal/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/ChannelClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/wearable/internal/i;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/k;->h:Lcom/google/android/gms/wearable/internal/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/ChannelClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/wearable/internal/i;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/k;->h:Lcom/google/android/gms/wearable/internal/i;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzay;
    .locals 1

    const-string v0, "channel must not be null"

    .line 1026
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    check-cast p0, Lcom/google/android/gms/wearable/internal/zzay;

    return-object p0
.end method
