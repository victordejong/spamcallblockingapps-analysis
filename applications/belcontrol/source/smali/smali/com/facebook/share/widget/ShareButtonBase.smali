.class public abstract Lcom/facebook/share/widget/ShareButtonBase;
.super Lcom/facebook/FacebookButtonBase;
.source ""


# instance fields
.field public k:Lcom/facebook/share/model/ShareContent;

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->l:I

    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->m:Z

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/facebook/share/widget/ShareButtonBase;->l:I

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->p(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract getDialog()Lfm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfm0<",
            "Lcom/facebook/share/model/ShareContent;",
            "Ljo0;",
            ">;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->l:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->k:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/facebook/share/widget/ShareButtonBase$a;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareButtonBase$a;-><init>(Lcom/facebook/share/widget/ShareButtonBase;)V

    return-object v0
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getDialog()Lfm0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfm0;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final p(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->setEnabled(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->m:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->m:Z

    return-void
.end method

.method public setRequestCode(I)V
    .locals 3

    invoke-static {p1}, Lui0;->v(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->l:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->k:Lcom/facebook/share/model/ShareContent;

    iget-boolean p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->m:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->o()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->p(Z)V

    :cond_0
    return-void
.end method
