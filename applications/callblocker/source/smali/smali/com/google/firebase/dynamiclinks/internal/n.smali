.class public final Lcom/google/firebase/dynamiclinks/internal/n;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/p;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/p;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/n;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/n;->b:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/dynamiclinks/internal/n;->c:Ljava/util/List;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/n;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/n;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/dynamiclinks/internal/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/n;->c:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/n;->a()Landroid/net/Uri;

    move-result-object v2

    .line 13
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/n;->b()Landroid/net/Uri;

    move-result-object v2

    .line 16
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/n;->c()Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 21
    return-void
.end method
