.class public Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Point;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloseButtonHeight()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->h:I

    return v0
.end method

.method public getCloseButtonWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->g:I

    return v0
.end method

.method public getHeadHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->b:I

    return v0
.end method

.method public getHeadWidth()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->c:I

    return v0
.end method

.method public getInitialPosition()Landroid/graphics/Point;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method public isCloseButtonHidden()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->l:Z

    return v0
.end method

.method public setCircularRingHeight(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->k:I

    return-void
.end method

.method public setCircularRingWidth(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->j:I

    return-void
.end method

.method public setCloseButtonBottomMargin(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->i:I

    return-void
.end method

.method public setCloseButtonHeight(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->h:I

    return-void
.end method

.method public setCloseButtonHidden(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->l:Z

    return-void
.end method

.method public setCloseButtonWidth(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->g:I

    return-void
.end method

.method public setHeadHeight(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->b:I

    return-void
.end method

.method public setHeadHorizontalSpacing(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->d:I

    return-void
.end method

.method public setHeadVerticalSpacing(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->e:I

    return-void
.end method

.method public setHeadWidth(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->c:I

    return-void
.end method

.method public setInitialPosition(Landroid/graphics/Point;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->f:Landroid/graphics/Point;

    return-void
.end method

.method public setMaxChatHeads(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->a:I

    return-void
.end method
