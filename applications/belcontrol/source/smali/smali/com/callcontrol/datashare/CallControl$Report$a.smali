.class public final Lcom/callcontrol/datashare/CallControl$Report$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callcontrol/datashare/CallControl$Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callcontrol/datashare/CallControl$Report;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/callcontrol/datashare/CallControl$Report;
    .locals 1

    new-instance v0, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-direct {v0, p1}, Lcom/callcontrol/datashare/CallControl$Report;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/callcontrol/datashare/CallControl$Report;
    .locals 0

    new-array p1, p1, [Lcom/callcontrol/datashare/CallControl$Report;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callcontrol/datashare/CallControl$Report$a;->a(Landroid/os/Parcel;)Lcom/callcontrol/datashare/CallControl$Report;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callcontrol/datashare/CallControl$Report$a;->b(I)[Lcom/callcontrol/datashare/CallControl$Report;

    move-result-object p1

    return-object p1
.end method
