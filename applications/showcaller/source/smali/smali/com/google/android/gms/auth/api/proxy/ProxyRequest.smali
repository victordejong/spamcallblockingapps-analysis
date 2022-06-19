.class public Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I


# instance fields
.field private final m:I

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:J

.field public final q:[B

.field private r:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/proxy/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->d:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->e:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->f:I

    const/4 v0, 0x3

    .line 5
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->g:I

    const/4 v0, 0x4

    .line 6
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->h:I

    const/4 v0, 0x5

    .line 7
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->i:I

    const/4 v0, 0x6

    .line 8
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->j:I

    const/4 v0, 0x7

    .line 9
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->k:I

    .line 10
    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->l:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->m:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->n:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->o:I

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->p:J

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->q:[B

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->r:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->n:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->o:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ProxyRequest[ url: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->n:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->o:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->p:J

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;IJ)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->q:[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I[BZ)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->r:Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 7
    iget v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->m:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
