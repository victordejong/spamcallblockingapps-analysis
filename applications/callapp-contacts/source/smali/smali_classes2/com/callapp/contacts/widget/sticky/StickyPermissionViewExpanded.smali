.class public Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;
.super Lcom/callapp/contacts/widget/sticky/StickyPermissionView;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->a(Landroid/content/Context;)V

    const p1, 0x7f0a015b

    .line 40
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->a:Landroid/widget/TextView;

    return-void
.end method

.method protected final c(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;
    .locals 7

    .line 56
    sget-object v0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->c(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance v6, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;

    const v0, 0x7f1205d8

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1205fa

    .line 1077
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x7f120000

    .line 1078
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f1205d7

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v4, 0x7f060244

    .line 1081
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    const v4, 0x7f08052a

    .line 61
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 62
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)Landroid/view/View$OnClickListener;

    move-result-object p1

    move-object v0, v6

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v6
.end method

.method protected getContainerHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d01c0

    return v0
.end method

.method protected setData(Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setData(Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;)V

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
