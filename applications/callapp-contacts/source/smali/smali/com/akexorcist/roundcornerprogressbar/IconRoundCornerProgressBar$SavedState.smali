.class public Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field colorIconBackground:I

.field iconHeight:I

.field iconPadding:I

.field iconPaddingBottom:I

.field iconPaddingLeft:I

.field iconPaddingRight:I

.field iconPaddingTop:I

.field iconResource:I

.field iconSize:I

.field iconWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconResource:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconSize:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconWidth:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconHeight:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPadding:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingLeft:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingRight:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingTop:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingBottom:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->colorIconBackground:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 395
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 397
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconResource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPadding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingLeft:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingRight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingTop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingBottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->colorIconBackground:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
