.class public Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/GdprButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GdprDialogButtonData"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/View$OnClickListener;

.field private e:I


# direct methods
.method public constructor <init>(IIILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->a:I

    .line 82
    iput p2, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->b:I

    .line 83
    iput p3, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->c:I

    .line 84
    iput-object p4, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(IILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->a:I

    .line 89
    iput p2, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->b:I

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->c:I

    .line 91
    iput-object p3, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->d:Landroid/view/View$OnClickListener;

    .line 92
    iput p4, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->e:I

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->e:I

    return v0
.end method

.method public getImageDrawableResource()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->a:I

    return v0
.end method

.method public getOnClickCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->c:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;->b:I

    return v0
.end method
