.class public final Lcom/facebook/share/model/ShareVideoContent;
.super Lcom/facebook/share/model/ShareContent;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareVideoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/facebook/share/model/SharePhoto;

.field public final l:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/model/ShareVideoContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideoContent$a;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareVideoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->j:Ljava/lang/String;

    new-instance v0, Lcom/facebook/share/model/SharePhoto$b;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$b;->l(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$b;->k()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$b;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$b;->i()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->k:Lcom/facebook/share/model/SharePhoto;

    new-instance v0, Lcom/facebook/share/model/ShareVideo$b;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideo$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideo$b;->g(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo$b;->f()Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent;->l:Lcom/facebook/share/model/ShareVideo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/facebook/share/model/SharePhoto;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->k:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public k()Lcom/facebook/share/model/ShareVideo;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->l:Lcom/facebook/share/model/ShareVideo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->k:Lcom/facebook/share/model/SharePhoto;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->l:Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
