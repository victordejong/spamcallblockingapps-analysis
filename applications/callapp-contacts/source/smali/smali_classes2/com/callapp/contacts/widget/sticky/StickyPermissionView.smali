.class public Lcom/callapp/contacts/widget/sticky/StickyPermissionView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/callapp/contacts/manager/permission/PermissionManager;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;)Lcom/callapp/contacts/manager/permission/PermissionManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->d:Lcom/callapp/contacts/manager/permission/PermissionManager;

    return-object p0
.end method

.method protected static a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .line 67
    invoke-virtual {p0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    if-ltz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 70
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "sans-serif-medium"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p2, :cond_0

    .line 74
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p2, 0x12

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;Landroid/view/View;)V
    .locals 2

    .line 117
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v1, 0x0

    .line 2091
    invoke-virtual {p2, v0, p1, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    const/16 p1, 0x8

    .line 118
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$IKQSzBYBAqInk4l-UpSPpRycfew(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 99
    new-instance v0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$1;-><init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->getLayout()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0897

    .line 58
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->b:Landroid/view/View;

    const p1, 0x7f0a0899

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->c:Landroid/widget/TextView;

    const p1, 0x7f0a089b

    .line 60
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a:Landroid/widget/TextView;

    const p1, 0x7f0a089a

    .line 61
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->e:Landroid/widget/ImageView;

    const p1, 0x7f0805d4

    .line 62
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setBackgroundResource(I)V

    .line 63
    new-instance p1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->getContainerHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 116
    new-instance v0, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l-UpSPpRycfew;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l-UpSPpRycfew;-><init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-object v0
.end method

.method protected c(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;
    .locals 5

    .line 123
    sget-object v0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_0
    new-instance v0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;

    const v1, 0x7f1205d8

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080529

    .line 127
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 1116
    new-instance v4, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l-UpSPpRycfew;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l-UpSPpRycfew;-><init>(Lcom/callapp/contacts/widget/sticky/StickyPermissionView;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected getContainerHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d01bf

    return v0
.end method

.method protected setData(Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;)V
    .locals 3

    .line 89
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x7f1205fa

    .line 90
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->b:Landroid/view/View;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->getOnAllowClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->c:Landroid/widget/TextView;

    const v1, 0x7f120292

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->getOnDenyClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->getImage()I

    move-result p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setPermissionToRequest(Lcom/callapp/contacts/manager/permission/PermissionManager;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->d:Lcom/callapp/contacts/manager/permission/PermissionManager;

    .line 85
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->c(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setData(Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;)V

    return-void
.end method
