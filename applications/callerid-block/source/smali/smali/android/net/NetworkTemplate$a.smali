.class final Landroid/net/NetworkTemplate$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/net/NetworkTemplate;
    .locals 2

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$a;)V

    return-object v0
.end method

.method public b(I)[Landroid/net/NetworkTemplate;
    .locals 0

    new-array p1, p1, [Landroid/net/NetworkTemplate;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$a;->a(Landroid/os/Parcel;)Landroid/net/NetworkTemplate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$a;->b(I)[Landroid/net/NetworkTemplate;

    move-result-object p1

    return-object p1
.end method
