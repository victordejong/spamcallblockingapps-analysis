.class public final Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaa:Z

.field private final zzab:[Ljava/lang/String;

.field private final zzac:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzad:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzae:Z

.field private final zzaf:Ljava/lang/String;

.field private final zzag:Ljava/lang/String;

.field private final zzah:Z

.field private final zzv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzv:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaa:Z

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzab:[Ljava/lang/String;

    if-nez p4, :cond_0

    .line 7
    new-instance p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;

    invoke-direct {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p4

    .line 8
    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzac:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    if-nez p5, :cond_1

    .line 11
    new-instance p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;

    invoke-direct {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p5

    .line 12
    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzad:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    const/4 p2, 0x3

    if-ge p1, p2, :cond_2

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzae:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaf:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzag:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_2
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzae:Z

    .line 18
    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaf:Ljava/lang/String;

    .line 19
    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzag:Ljava/lang/String;

    .line 20
    :goto_0
    iput-boolean p9, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzah:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;)V
    .locals 10

    .line 1027
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->a:Z

    .line 1028
    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->b:[Ljava/lang/String;

    .line 1029
    iget-object v4, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->c:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 1030
    iget-object v5, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->d:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 1031
    iget-boolean v6, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->e:Z

    .line 1032
    iget-object v7, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->f:Ljava/lang/String;

    .line 1033
    iget-object v8, p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->g:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;Lcom/google/android/gms/auth/api/credentials/g;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;)V

    return-void
.end method


# virtual methods
.method public final getAccountTypes()[Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzab:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountTypesSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzab:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getCredentialHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzad:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public final getCredentialPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzac:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public final getIdTokenNonce()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzag:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaf:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsPasswordLogin()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->isPasswordLoginSupported()Z

    move-result v0

    return v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzae:Z

    return v0
.end method

.method public final isPasswordLoginSupported()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaa:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 2001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->isPasswordLoginSupported()Z

    move-result v1

    const/4 v2, 0x1

    .line 46
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->getAccountTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 49
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->getCredentialPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x3

    .line 52
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->getCredentialHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x4

    .line 55
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->isIdTokenRequested()Z

    move-result p2

    const/4 v1, 0x5

    .line 58
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->getServerClientId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 61
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->getIdTokenNonce()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    .line 64
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 66
    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzah:Z

    const/16 v1, 0x8

    .line 67
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 68
    iget p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzv:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 3001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
