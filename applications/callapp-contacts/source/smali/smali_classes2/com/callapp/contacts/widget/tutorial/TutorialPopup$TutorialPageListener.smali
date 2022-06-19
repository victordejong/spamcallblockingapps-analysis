.class Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TutorialPageListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;",
            ")V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->b:Ljava/util/List;

    .line 191
    iput-object p3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->c:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;I)V

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->c:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
