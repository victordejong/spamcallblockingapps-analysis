.class public Lcom/callapp/contacts/popup/WhatsNewItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/text/Spannable;

.field private final c:Landroid/text/Spannable;

.field private d:I

.field private e:I

.field private f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(ILandroid/text/Spannable;Landroid/text/Spannable;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    .line 23
    iput p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    .line 24
    iput-object p2, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    .line 25
    iput-object p3, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    .line 26
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/text/Spannable;)V
    .locals 0

    .line 19
    invoke-static {p2}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILandroid/text/Spannable;Landroid/text/Spannable;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    .line 34
    iput v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(Landroid/text/Spannable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    check-cast p1, Lcom/callapp/contacts/popup/WhatsNewItemData;

    .line 87
    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    iget v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    if-eq v1, v2, :cond_2

    return v0

    .line 88
    :cond_2
    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->d:I

    iget v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->d:I

    if-eq v1, v2, :cond_3

    return v0

    .line 89
    :cond_3
    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->e:I

    iget v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->e:I

    if-eq v1, v2, :cond_4

    return v0

    .line 90
    :cond_4
    iget-boolean v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 91
    :cond_5
    iget-boolean v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    iget-object v2, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    iget-object p1, p1, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    return v0
.end method

.method public getText()Landroid/text/Spannable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    return-object v0
.end method

.method public getTextMaxHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->d:I

    return v0
.end method

.method public getTextMinHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->e:I

    return v0
.end method

.method public getTitle()Landroid/text/Spannable;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->b:Landroid/text/Spannable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->c:Landroid/text/Spannable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-boolean v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-boolean v1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    return v0
.end method

.method public isHeader()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->g:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->f:Z

    return-void
.end method

.method public setTextMaxHeight(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->d:I

    return-void
.end method

.method public setTextMinHeight(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/callapp/contacts/popup/WhatsNewItemData;->e:I

    return-void
.end method
