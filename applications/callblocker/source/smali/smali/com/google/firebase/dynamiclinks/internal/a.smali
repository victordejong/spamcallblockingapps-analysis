.class public Lcom/google/firebase/dynamiclinks/internal/a;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Landroid/os/Bundle;

.field private f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/b;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/b;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->d:J

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->e:Landroid/os/Bundle;

    .line 11
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/a;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->b:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/google/firebase/dynamiclinks/internal/a;->c:I

    .line 14
    iput-wide p4, p0, Lcom/google/firebase/dynamiclinks/internal/a;->d:J

    .line 15
    iput-object p6, p0, Lcom/google/firebase/dynamiclinks/internal/a;->e:Landroid/os/Bundle;

    .line 16
    iput-object p7, p0, Lcom/google/firebase/dynamiclinks/internal/a;->f:Landroid/net/Uri;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 4
    iput-wide p1, p0, Lcom/google/firebase/dynamiclinks/internal/a;->d:J

    .line 5
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 3
    iget-wide v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->d:J

    return-wide v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->e:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/a;->e:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->a:Ljava/lang/String;

    .line 23
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    const/4 v1, 0x2

    .line 25
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->b:Ljava/lang/String;

    .line 27
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    const/4 v1, 0x3

    .line 29
    iget v2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->c:I

    .line 30
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 31
    const/4 v1, 0x4

    .line 32
    iget-wide v2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->d:J

    .line 33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/a;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 36
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 37
    const/4 v1, 0x6

    .line 38
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/a;->f:Landroid/net/Uri;

    .line 40
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method
