.class public Lcom/unknownphone/callblocker/custom/NoPermissionWidget;
.super Landroid/widget/FrameLayout;
.source "NoPermissionWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->a()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->a()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/custom/NoPermissionWidget;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    const v0, 0x7f0901a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100126

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0901a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v0, 0x7f0901a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100128

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0901a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100129

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f0900b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/unknownphone/callblocker/custom/NoPermissionWidget$1;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget$1;-><init>(Lcom/unknownphone/callblocker/custom/NoPermissionWidget;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/NoPermissionWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 60
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Landroid/app/Activity;

    .line 64
    :goto_1
    return-object v0

    .line 62
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
