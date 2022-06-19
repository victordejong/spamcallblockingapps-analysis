.class public final Lcom/google/android/gms/wearable/internal/zzay;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/wearable/Channel;
.implements Lcom/google/android/gms/wearable/ChannelClient$Channel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/zzay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzce:Ljava/lang/String;

.field private final zzcl:Ljava/lang/String;

.field private final zzo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/google/android/gms/wearable/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzo:Ljava/lang/String;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzcl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;)Lcom/google/android/gms/common/api/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Lcom/google/android/gms/wearable/f$a;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.wearable.CHANNEL_EVENT"

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/cp;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    .line 59
    new-instance v2, Lcom/google/android/gms/wearable/internal/v;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/wearable/internal/v;-><init>(Ljava/lang/String;[Landroid/content/IntentFilter;)V

    .line 60
    invoke-static {p1, v2, p2}, Lcom/google/android/gms/wearable/internal/p;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/internal/ak;Ljava/lang/Object;)Lcom/google/android/gms/common/api/j;

    move-result-object p1

    return-object p1
.end method

.method public final close(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/android/gms/wearable/internal/o;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/o;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final close(Lcom/google/android/gms/common/api/g;I)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "I)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/gms/wearable/internal/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/q;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/wearable/internal/zzay;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 34
    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzay;

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/zzay;->zzo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzo:Ljava/lang/String;

    .line 36
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzay;->zzcl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzcl:Ljava/lang/String;

    .line 37
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getInputStream(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/d;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/gms/wearable/internal/r;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/r;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final getNodeId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputStream(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/e;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/android/gms/wearable/internal/s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/s;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzcl:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final receiveFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            "Z)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "client is null"

    .line 47
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri is null"

    .line 48
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/google/android/gms/wearable/internal/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/t;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;Landroid/net/Uri;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final removeListener(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;)Lcom/google/android/gms/common/api/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Lcom/google/android/gms/wearable/f$a;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "client is null"

    .line 61
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener is null"

    .line 62
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/google/android/gms/wearable/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/j;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method

.method public final sendFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;)Lcom/google/android/gms/common/api/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/wearable/internal/zzay;->sendFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/j;

    move-result-object p1

    return-object p1
.end method

.method public final sendFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            "JJ)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    move-object v8, p1

    const-string v0, "client is null"

    .line 51
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, p0

    .line 52
    iget-object v0, v9, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    const-string v1, "token is null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri is null"

    move-object v3, p2

    .line 53
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    cmp-long v5, p3, v0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v6, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "startOffset is negative: %s"

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v5, p5, v0

    if-gez v5, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v5, p5, v0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    new-array v1, v2, [Ljava/lang/Object;

    .line 55
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "invalid length: %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v10, Lcom/google/android/gms/wearable/internal/u;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/u;-><init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;Landroid/net/Uri;JJ)V

    invoke-virtual {p1, v10}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v5, v0, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x19

    if-le v1, v3, :cond_1

    const/16 v3, 0xa

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0xa

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzcl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Channel{token="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nodeId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzay;->getNodeId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 14
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzay;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay;->zzce:Ljava/lang/String;

    return-object v0
.end method
