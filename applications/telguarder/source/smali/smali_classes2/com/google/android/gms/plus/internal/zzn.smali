.class public final Lcom/google/android/gms/plus/internal/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/plus/internal/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaa:Ljava/lang/String;

.field private final zzab:[Ljava/lang/String;

.field private final zzac:[Ljava/lang/String;

.field private final zzad:[Ljava/lang/String;

.field private final zzae:Ljava/lang/String;

.field private final zzaf:Ljava/lang/String;

.field private final zzag:Ljava/lang/String;

.field private final zzah:Ljava/lang/String;

.field private final zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final zzw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p7, 0x1

    iput p7, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/plus/internal/zzn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/plus/internal/zzn;

    iget v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object p1, p1, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    const-string v2, "accountName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    const-string v2, "requestedScopes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    const-string v2, "visibleActivities"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    const-string v2, "requiredFeatures"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    const-string v2, "packageNameForAuth"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    const-string v2, "callingPackageName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    const-string v2, "applicationName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaa:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzab:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzad:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzaf:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzag:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzw:I

    const/16 v2, 0x3e8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzah:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzc()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzac:[Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzn;->zzae:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzn;->zzai:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    const-string v2, "android.gms.plus.internal.PlusCommonExtras.extraPlusCommon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method
