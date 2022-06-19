.class public Lcom/google/android/gms/gcm/Task;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/Task$Builder;
    }
.end annotation


# static fields
.field public static final EXTRAS_LIMIT_BYTES:I = 0x2800

.field public static final NETWORK_STATE_ANY:I = 0x2

.field public static final NETWORK_STATE_CONNECTED:I = 0x0

.field public static final NETWORK_STATE_UNMETERED:I = 0x1

.field protected static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final gcmTaskService:Ljava/lang/String;

.field private final isPersisted:Z

.field private final requiredNetworkState:I

.field private final requiresCharging:Z

.field private final tag:Ljava/lang/String;

.field private final updateCurrent:Z

.field private final zzaw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final zzax:Z

.field private final zzay:Lcom/google/android/gms/gcm/zzl;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Task"

    const-string v1, "Constructing a Task object using a parcel."

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->gcmTaskService:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->tag:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->updateCurrent:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/gcm/Task;->isPersisted:Z

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/google/android/gms/gcm/Task;->requiredNetworkState:I

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/gcm/Task;->zzaw:Ljava/util/Set;

    .line 22
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->requiresCharging:Z

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->zzax:Z

    .line 24
    sget-object p1, Lcom/google/android/gms/gcm/zzl;->zzaq:Lcom/google/android/gms/gcm/zzl;

    iput-object p1, p0, Lcom/google/android/gms/gcm/Task;->zzay:Lcom/google/android/gms/gcm/zzl;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/gcm/Task;->extras:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/Task$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->gcmTaskService:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->gcmTaskService:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->tag:Ljava/lang/String;

    .line 4
    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->updateCurrent:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->updateCurrent:Z

    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->isPersisted:Z

    .line 6
    iget v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->requiredNetworkState:I

    iput v0, p0, Lcom/google/android/gms/gcm/Task;->requiredNetworkState:I

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->zzaw:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaw:Ljava/util/Set;

    .line 8
    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->requiresCharging:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->requiresCharging:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzax:Z

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->extras:Landroid/os/Bundle;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->zzay:Lcom/google/android/gms/gcm/zzl;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/gcm/Task$Builder;->zzay:Lcom/google/android/gms/gcm/zzl;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/gcm/zzl;->zzaq:Lcom/google/android/gms/gcm/zzl;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/gcm/Task;->zzay:Lcom/google/android/gms/gcm/zzl;

    return-void
.end method

.method private static zzd(Landroid/net/Uri;)V
    .locals 3

    if-eqz p0, :cond_7

    .line 78
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tcp"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_0

    const v0, 0xffff

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result p0

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid required URI port: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ping"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    if-ne v1, p0, :cond_2

    :goto_0
    return-void

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ping does not support port numbers"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported required URI scheme: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port number: "

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI hostname is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null URI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zze(Landroid/net/Uri;)V
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/google/android/gms/gcm/Task;->zzd(Landroid/net/Uri;)V

    return-void
.end method

.method public static zzg(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p0, :cond_5

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/16 v0, 0x2800

    if-gt v2, v0, :cond_4

    .line 66
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_0

    .line 71
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 72
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/gms/gcm/Task;->zzg(Landroid/os/Bundle;)V

    goto :goto_0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only the following extra parameter types are supported: Integer, Long, Double, String, Boolean, and nested Bundles with the same restrictions."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Extras exceeding maximum size(10240 bytes): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequiredNetwork()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/gms/gcm/Task;->requiredNetworkState:I

    return v0
.end method

.method public getRequiresCharging()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->requiresCharging:Z

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->gcmTaskService:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isPersisted()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->isPersisted:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->updateCurrent:Z

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->tag:Ljava/lang/String;

    const-string v1, "tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->updateCurrent:Z

    const-string v1, "update_current"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->isPersisted:Z

    const-string v1, "persisted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->gcmTaskService:Ljava/lang/String;

    const-string v1, "service"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/google/android/gms/gcm/Task;->requiredNetworkState:I

    const-string v1, "requiredNetwork"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/gcm/Task;->zzaw:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 35
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "reachabilityUris"

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->requiresCharging:Z

    const-string v1, "requiresCharging"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "requiresIdle"

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzay:Lcom/google/android/gms/gcm/zzl;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/zzl;->zzf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "retryStrategy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->extras:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/gcm/Task;->gcmTaskService:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/google/android/gms/gcm/Task;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Lcom/google/android/gms/gcm/Task;->updateCurrent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean p2, p0, Lcom/google/android/gms/gcm/Task;->isPersisted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
