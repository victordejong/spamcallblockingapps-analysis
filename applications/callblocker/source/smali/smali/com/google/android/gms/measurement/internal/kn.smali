.class public final Lcom/google/android/gms/measurement/internal/kn;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/measurement/internal/jv;

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/measurement/internal/r;

.field public h:J

.field public i:Lcom/google/android/gms/measurement/internal/r;

.field public j:J

.field public k:Lcom/google/android/gms/measurement/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/km;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/km;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/kn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/kn;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kn;->d:J

    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    .line 10
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/kn;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kn;->h:J

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/kn;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kn;->j:J

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    .line 14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/jv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 19
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/kn;->d:J

    .line 20
    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    .line 21
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    .line 23
    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/kn;->h:J

    .line 24
    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    .line 25
    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/kn;->j:J

    .line 26
    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    .line 27
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 30
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 32
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kn;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 34
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 35
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kn;->h:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 38
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 39
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kn;->j:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 40
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method
