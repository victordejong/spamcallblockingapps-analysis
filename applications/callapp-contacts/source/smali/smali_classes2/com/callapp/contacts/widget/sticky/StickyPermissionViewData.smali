.class public Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/CharSequence;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->b:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->c:Ljava/lang/CharSequence;

    .line 19
    iput-object p3, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->d:Landroid/view/View$OnClickListener;

    .line 20
    iput-object p4, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->c:Ljava/lang/CharSequence;

    .line 29
    iput p3, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->b:I

    .line 30
    iput-object p4, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->d:Landroid/view/View$OnClickListener;

    .line 31
    iput-object p5, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->e:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getImage()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->b:I

    return v0
.end method

.method public getOnAllowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getOnDenyClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewData;->a:Ljava/lang/String;

    return-object v0
.end method
