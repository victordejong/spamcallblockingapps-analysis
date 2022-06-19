.class public final Lorg/mistergroup/shouldianswer/model/NumberReport$b;
.super Ljava/lang/Object;
.source "NumberReport.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/NumberReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mistergroup/shouldianswer/model/NumberReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>(Landroid/os/Parcel;Lkotlin/e/b/e;)V

    return-object v0
.end method

.method public a(I)[Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 0

    .line 146
    new-array p1, p1, [Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$b;->a(Landroid/os/Parcel;)Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$b;->a(I)[Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    return-object p1
.end method
