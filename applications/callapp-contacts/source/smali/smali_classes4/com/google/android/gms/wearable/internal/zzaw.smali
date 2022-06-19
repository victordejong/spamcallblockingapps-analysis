.class public final Lcom/google/android/gms/wearable/internal/zzaw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/zzaw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:I

.field private final zzcj:I

.field private final zzck:Lcom/google/android/gms/wearable/internal/zzay;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/android/gms/wearable/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    .line 3
    iput p2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->type:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "OUTPUT_CLOSED"

    goto :goto_0

    :cond_1
    const-string v1, "INPUT_CLOSED"

    goto :goto_0

    :cond_2
    const-string v1, "CHANNEL_CLOSED"

    goto :goto_0

    :cond_3
    const-string v1, "CHANNEL_OPENED"

    .line 34
    :goto_0
    iget v5, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    if-eqz v5, :cond_7

    if-eq v5, v4, :cond_6

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_4

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, "CLOSE_REASON_LOCAL_CLOSE"

    goto :goto_1

    :cond_5
    const-string v2, "CLOSE_REASON_REMOTE_CLOSE"

    goto :goto_1

    :cond_6
    const-string v2, "CLOSE_REASON_DISCONNECTED"

    goto :goto_1

    :cond_7
    const-string v2, "CLOSE_REASON_NORMAL"

    .line 42
    :goto_1
    iget v3, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x51

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ChannelEventParcelable[, channel="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closeReason="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appErrorCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 21
    iget p2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->type:I

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 22
    iget p2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 23
    iget p2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 2001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/f$a;)V
    .locals 3

    .line 7
    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 p1, 0x19

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown type: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChannelEventParcelable"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/f$a;->c(Lcom/google/android/gms/wearable/Channel;II)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/f$a;->b(Lcom/google/android/gms/wearable/Channel;II)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzg:I

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzcj:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/f$a;->a(Lcom/google/android/gms/wearable/Channel;II)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzaw;->zzck:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/f$a;->a(Lcom/google/android/gms/wearable/Channel;)V

    return-void
.end method
