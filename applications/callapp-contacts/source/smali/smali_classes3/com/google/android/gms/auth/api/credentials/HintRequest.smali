.class public final Lcom/google/android/gms/auth/api/credentials/HintRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/HintRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/HintRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzab:[Ljava/lang/String;

.field private final zzae:Z

.field private final zzaf:Ljava/lang/String;

.field private final zzag:Ljava/lang/String;

.field private final zzai:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzaj:Z

.field private final zzak:Z

.field private final zzv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzv:I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzai:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaj:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzak:Z

    .line 6
    invoke-static {p5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzab:[Ljava/lang/String;

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzae:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaf:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzag:Ljava/lang/String;

    return-void

    .line 11
    :cond_0
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzae:Z

    .line 12
    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaf:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$a;)V
    .locals 9

    .line 1025
    iget-object v2, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->d:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 1026
    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->a:Z

    .line 1027
    iget-boolean v4, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->b:Z

    .line 1028
    iget-object v5, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->c:[Ljava/lang/String;

    .line 1029
    iget-boolean v6, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->e:Z

    .line 1030
    iget-object v7, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->f:Ljava/lang/String;

    .line 1031
    iget-object v8, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->g:Ljava/lang/String;

    const/4 v1, 0x2

    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$a;Lcom/google/android/gms/auth/api/credentials/j;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$a;)V

    return-void
.end method


# virtual methods
.method public final getAccountTypes()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzab:[Ljava/lang/String;

    return-object v0
.end method

.method public final getHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzai:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public final getIdTokenNonce()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzag:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaf:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmailAddressIdentifierSupported()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaj:Z

    return v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzae:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 2001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->getHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->isEmailAddressIdentifierSupported()Z

    move-result p2

    const/4 v1, 0x2

    .line 38
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 40
    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzak:Z

    const/4 v1, 0x3

    .line 41
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->getAccountTypes()[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    .line 44
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->isIdTokenRequested()Z

    move-result p2

    const/4 v1, 0x5

    .line 47
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->getServerClientId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 50
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->getIdTokenNonce()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    .line 53
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    iget p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzv:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 3001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
