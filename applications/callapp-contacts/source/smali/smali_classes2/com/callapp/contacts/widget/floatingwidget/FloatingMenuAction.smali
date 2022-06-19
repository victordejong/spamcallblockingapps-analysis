.class public Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(IIIIZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->a:I

    .line 31
    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->b:I

    .line 32
    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->c:I

    .line 33
    iput p4, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->d:I

    .line 34
    iput-boolean p5, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->g:Z

    .line 35
    iput-object p6, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->e:Ljava/lang/CharSequence;

    .line 36
    iput-object p7, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->f:Landroid/view/View$OnClickListener;

    .line 37
    iput-boolean p8, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->h:Z

    .line 38
    iput p9, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->i:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V
    .locals 10

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;-><init>(IIIIZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;ZI)V

    return-void
.end method


# virtual methods
.method public getAction()Landroid/view/View$OnClickListener;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getActionColorDisabled()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->c:I

    return v0
.end method

.method public getActionColorEnabled()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->d:I

    return v0
.end method

.method public getActionIcon()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->b:I

    return v0
.end method

.method public getActionText()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->i:I

    return v0
.end method

.method public getLayoutRes()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->a:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->g:Z

    return v0
.end method

.method public isVisibility()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->h:Z

    return v0
.end method
