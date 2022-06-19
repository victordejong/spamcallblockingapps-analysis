.class public Lcom/unknownphone/callblocker/b/a;
.super Landroidx/fragment/app/Fragment;
.source "UserTypeFreeFragment.java"


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatImageButton;

.field private b:Landroidx/appcompat/widget/AppCompatButton;

.field private c:Lcom/unknownphone/callblocker/custom/a;

.field private d:Lcom/unknownphone/callblocker/custom/a;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/b/a;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/unknownphone/callblocker/b/a;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/b/a;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/unknownphone/callblocker/b/a;->c:Lcom/unknownphone/callblocker/custom/a;

    .line 27
    iput-object p1, v0, Lcom/unknownphone/callblocker/b/a;->d:Lcom/unknownphone/callblocker/custom/a;

    .line 28
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/b/a;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->c:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/b/a;)Lcom/unknownphone/callblocker/custom/a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->d:Lcom/unknownphone/callblocker/custom/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f0c005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/a;->e:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->e:Landroid/view/View;

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/a;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 35
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->e:Landroid/view/View;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/b/a;->b:Landroidx/appcompat/widget/AppCompatButton;

    .line 36
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->e:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/b/a$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/a$1;-><init>(Lcom/unknownphone/callblocker/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/b/a$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/a$2;-><init>(Lcom/unknownphone/callblocker/b/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a;->b:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/b/a$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/b/a$3;-><init>(Lcom/unknownphone/callblocker/b/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
