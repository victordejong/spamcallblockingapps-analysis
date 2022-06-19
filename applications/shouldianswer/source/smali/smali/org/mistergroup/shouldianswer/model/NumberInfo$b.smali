.class public final Lorg/mistergroup/shouldianswer/model/NumberInfo$b;
.super Ljava/lang/Object;
.source "NumberInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/NumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 0

    .line 925
    new-array p1, p1, [Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 919
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$b;->a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 919
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$b;->a(I)[Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    return-object p1
.end method
