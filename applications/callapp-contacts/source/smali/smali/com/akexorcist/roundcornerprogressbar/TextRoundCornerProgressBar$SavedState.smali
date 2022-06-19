.class public Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;
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
            "Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field colorTextProgress:I

.field textInsideGravity:I

.field textOutsideGravity:I

.field textPositionPriority:I

.field textProgress:Ljava/lang/String;

.field textProgressMargin:I

.field textProgressSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$1;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->colorTextProgress:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressSize:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressMargin:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgress:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textInsideGravity:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textOutsideGravity:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textPositionPriority:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 441
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 443
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->colorTextProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textInsideGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textOutsideGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textPositionPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
