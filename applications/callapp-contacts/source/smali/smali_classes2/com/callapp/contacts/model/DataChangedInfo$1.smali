.class final Lcom/callapp/contacts/model/DataChangedInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/DataChangedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callapp/contacts/model/DataChangedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/model/DataChangedInfo;
    .locals 1

    .line 89
    new-instance v0, Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/model/DataChangedInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/DataChangedInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/callapp/contacts/model/DataChangedInfo;
    .locals 0

    .line 94
    new-array p1, p1, [Lcom/callapp/contacts/model/DataChangedInfo;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/DataChangedInfo$1;->newArray(I)[Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p1

    return-object p1
.end method
