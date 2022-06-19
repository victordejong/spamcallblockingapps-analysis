.class public Lcom/callapp/contacts/util/tooltip/ToolTip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;,
        Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/view/View;

.field private g:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

.field private h:Landroid/graphics/Typeface;

.field private i:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->b:Ljava/lang/CharSequence;

    .line 52
    iput-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->h:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->c:I

    .line 54
    iput v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->d:I

    .line 55
    iput-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->f:Landroid/view/View;

    .line 56
    sget-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_MASTER_VIEW:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    iput-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->g:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    .line 57
    sget-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->DEFUALT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    iput-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->i:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    return-void
.end method


# virtual methods
.method public getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->g:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->d:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->f:Landroid/view/View;

    return-object v0
.end method

.method public getOrientation()Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->i:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->e:I

    return v0
.end method

.method public getTextResId()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->c:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTip;->h:Landroid/graphics/Typeface;

    return-object v0
.end method
