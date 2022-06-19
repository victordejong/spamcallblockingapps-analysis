.class Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
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
            "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeArrangement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;"
        }
    .end annotation
.end field

.field private activeArrangementBundle:Landroid/os/Bundle;

.field private chatHeads:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "+",
            "Ljava/io/Serializable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 612
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState$1;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 629
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangement:Ljava/lang/Class;

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangementBundle:Landroid/os/Bundle;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->chatHeads:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public getActiveArrangement()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangement:Ljava/lang/Class;

    return-object v0
.end method

.method public getActiveArrangementBundle()Landroid/os/Bundle;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangementBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getChatHeads()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "+",
            "Ljava/io/Serializable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->chatHeads:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public setActiveArrangement(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;)V"
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangement:Ljava/lang/Class;

    return-void
.end method

.method public setActiveArrangementBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangementBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setChatHeads(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "+",
            "Ljava/io/Serializable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 668
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->chatHeads:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 657
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 658
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangement:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 659
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->activeArrangementBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 660
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState;->chatHeads:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
