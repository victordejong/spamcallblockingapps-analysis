.class public Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;-><init>()V

    .line 13
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setHeadHeight(I)V

    .line 14
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setHeadWidth(I)V

    const/16 v0, 0xa

    .line 15
    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setHeadHorizontalSpacing(I)V

    const/4 v0, 0x5

    .line 16
    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setHeadVerticalSpacing(I)V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fC:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setInitialPosition(Landroid/graphics/Point;)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCloseButtonHidden(Z)V

    const/16 v1, 0xaa

    .line 19
    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCloseButtonWidth(I)V

    const/16 v1, 0x3c

    .line 20
    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCloseButtonHeight(I)V

    const/16 v1, 0x32

    .line 21
    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCloseButtonBottomMargin(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCircularRingHeight(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setCircularRingWidth(I)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;->setMaxChatHeads(I)V

    return-void
.end method
