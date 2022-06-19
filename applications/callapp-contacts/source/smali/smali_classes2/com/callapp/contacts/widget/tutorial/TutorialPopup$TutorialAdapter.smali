.class Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TutorialAdapter"
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

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/widget/tutorial/TutorialView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 251
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->c:Ljava/util/Map;

    .line 254
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)Ljava/util/List;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 0

    .line 268
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$hVR141ylRcedi5H7zJKxX7zJf6c(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$j4xXVRCwOo3Z-f4NYk02bVnVOkI(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    if-nez p2, :cond_0

    .line 267
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;-><init>(Landroid/content/Context;)V

    .line 268
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    new-instance v2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$TutorialAdapter$hVR141ylRcedi5H7zJKxX7zJf6c;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$TutorialAdapter$hVR141ylRcedi5H7zJKxX7zJf6c;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;I)V

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->INFORMATIVE:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    goto :goto_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 270
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;-><init>(Landroid/content/Context;)V

    .line 271
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    new-instance v2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$TutorialAdapter$j4xXVRCwOo3Z-f4NYk02bVnVOkI;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$TutorialAdapter$j4xXVRCwOo3Z-f4NYk02bVnVOkI;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)V

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->INFORMATIVE:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    goto :goto_1

    .line 273
    :cond_1
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialView;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;-><init>(Landroid/content/Context;)V

    .line 274
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    new-instance v3, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;I)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    .line 289
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 290
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 292
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/tutorial/TutorialView;

    .line 304
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTutorialViewAtPosition(I)Lcom/callapp/contacts/widget/tutorial/TutorialView;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/TutorialView;

    return-object p1
.end method
