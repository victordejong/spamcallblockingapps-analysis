.class Lcom/balysv/materialmenu/MaterialMenuView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/MaterialMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/balysv/materialmenu/MaterialMenuView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected state:Lcom/balysv/materialmenu/a$b;

.field protected visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState$1;

    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuView$SavedState$1;-><init>()V

    sput-object v0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 225
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-static {}, Lcom/balysv/materialmenu/a$b;->values()[Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->state:Lcom/balysv/materialmenu/a$b;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->visible:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/balysv/materialmenu/MaterialMenuView$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 231
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    iget-object p2, p0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->state:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {p2}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-boolean p2, p0, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->visible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
