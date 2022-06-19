.class public Lcom/facebook/share/model/ShareCameraEffectContent;
.super Lcom/facebook/share/model/ShareContent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareCameraEffectContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public h:Ljava/lang/String;

.field public j:Lcom/facebook/share/model/CameraEffectArguments;

.field public k:Lcom/facebook/share/model/CameraEffectTextures;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareCameraEffectContent$a;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareCameraEffectContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->h:Ljava/lang/String;

    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$b;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectArguments$b;->c(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectArguments$b;

    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectArguments$b;->b()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->j:Lcom/facebook/share/model/CameraEffectArguments;

    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$b;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectTextures$b;->c(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$b;

    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectTextures$b;->b()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->k:Lcom/facebook/share/model/CameraEffectTextures;

    return-void
.end method


# virtual methods
.method public h()Lcom/facebook/share/model/CameraEffectArguments;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->j:Lcom/facebook/share/model/CameraEffectArguments;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/facebook/share/model/CameraEffectTextures;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->k:Lcom/facebook/share/model/CameraEffectTextures;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->j:Lcom/facebook/share/model/CameraEffectArguments;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->k:Lcom/facebook/share/model/CameraEffectTextures;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
