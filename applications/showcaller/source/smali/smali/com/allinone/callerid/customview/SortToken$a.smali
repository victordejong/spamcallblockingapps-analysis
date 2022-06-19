.class Lcom/allinone/callerid/customview/SortToken$a;
.super Ljava/lang/Object;
.source "SortToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/customview/SortToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/allinone/callerid/customview/SortToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/allinone/callerid/customview/SortToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/customview/SortToken;

    invoke-direct {v0, p1}, Lcom/allinone/callerid/customview/SortToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/allinone/callerid/customview/SortToken;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/allinone/callerid/customview/SortToken;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/SortToken$a;->a(Landroid/os/Parcel;)Lcom/allinone/callerid/customview/SortToken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/SortToken$a;->b(I)[Lcom/allinone/callerid/customview/SortToken;

    move-result-object p1

    return-object p1
.end method
