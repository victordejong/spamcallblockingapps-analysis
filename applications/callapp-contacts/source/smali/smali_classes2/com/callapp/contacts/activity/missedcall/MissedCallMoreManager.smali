.class public Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/shehabic/droppy/DroppyMenuPopup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;)V
    .locals 1

    .line 1096
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1097
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;Z)V
    .locals 8

    .line 29
    new-instance v0, Lcom/shehabic/droppy/DroppyMenuPopup$a;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/shehabic/droppy/DroppyMenuPopup$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    new-instance p2, Lcom/shehabic/droppy/b;

    const v1, 0x7f0d01f4

    invoke-direct {p2, v1}, Lcom/shehabic/droppy/b;-><init>(I)V

    .line 31
    invoke-virtual {p2, p1}, Lcom/shehabic/droppy/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02f2

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12045a

    .line 34
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080401

    const/4 v4, 0x0

    .line 35
    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 36
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07036d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/16 v3, 0x10

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    instance-of v6, p1, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MissedCallActivity;

    const/16 v7, 0x8

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :cond_0
    instance-of p1, p1, Lcom/callapp/contacts/activity/missedcall/missedAnswer/NotAnsweredActivity;

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const p1, 0x7f0a0818

    .line 44
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p4, :cond_2

    const p4, 0x7f080405

    .line 46
    invoke-virtual {p1, p4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const p4, 0x7f120468

    .line 47
    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p4, 0x7f080404

    .line 49
    invoke-virtual {p1, p4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const p4, 0x7f120467

    .line 50
    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p4

    invoke-virtual {p4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 53
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const p4, 0x7f0a033f

    .line 55
    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v1, 0x7f12045b

    .line 56
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080402

    .line 57
    invoke-virtual {p4, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 59
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$1;

    invoke-direct {v1, p0, p3}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$1;-><init>(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;

    invoke-direct {v1, p0, p3}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;-><init>(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance p1, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$3;

    invoke-direct {p1, p0, p3}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$3;-><init>(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v0, p2}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c()Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    .line 92
    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup;->b()V

    return-void
.end method
