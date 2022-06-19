.class public final Lcom/google/android/gms/wearable/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/f$a;


# instance fields
.field private final a:Lcom/google/android/gms/wearable/ChannelClient$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/ChannelClient$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/wearable/ChannelClient$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/Channel;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/k;->a(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzay;

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/k;->a(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzay;

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/k;->a(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzay;

    return-void
.end method

.method public final c(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/k;->a(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzay;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/l;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/wearable/ChannelClient$a;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/wearable/ChannelClient$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/wearable/ChannelClient$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
