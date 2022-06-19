.class final Lcom/callerid/block/customview/ProgressWheel$WheelSavedState$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;",
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
.method public a(Landroid/os/Parcel;)Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;
    .locals 2

    new-instance v0, Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/callerid/block/customview/ProgressWheel$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;
    .locals 0

    new-array p1, p1, [Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/ProgressWheel$WheelSavedState$a;->a(Landroid/os/Parcel;)Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/ProgressWheel$WheelSavedState$a;->b(I)[Lcom/callerid/block/customview/ProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method
