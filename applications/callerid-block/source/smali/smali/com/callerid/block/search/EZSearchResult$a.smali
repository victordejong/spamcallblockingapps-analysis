.class final Lcom/callerid/block/search/EZSearchResult$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/search/EZSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callerid/block/search/EZSearchResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/callerid/block/search/EZSearchResult;
    .locals 1

    new-instance v0, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v0, p1}, Lcom/callerid/block/search/EZSearchResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/callerid/block/search/EZSearchResult;
    .locals 0

    new-array p1, p1, [Lcom/callerid/block/search/EZSearchResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/search/EZSearchResult$a;->a(Landroid/os/Parcel;)Lcom/callerid/block/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/search/EZSearchResult$a;->b(I)[Lcom/callerid/block/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method
