.class public Lit/gmariotti/cardslib/library/view/listener/UndoCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lit/gmariotti/cardslib/library/view/listener/UndoCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemId:[Ljava/lang/String;

.field public itemPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/UndoCard$1;

    invoke-direct {v0}, Lit/gmariotti/cardslib/library/view/listener/UndoCard$1;-><init>()V

    sput-object v0, Lit/gmariotti/cardslib/library/view/listener/UndoCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/UndoCard;->itemPosition:[I

    .line 37
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/UndoCard;->itemId:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
