.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonSetAdapter"
.end annotation


# instance fields
.field private final a:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field private b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field private c:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;)V
    .locals 6

    .line 501
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->c:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;

    .line 503
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->values()[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->a:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 504
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 505
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 506
    iget-object v5, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->setIsPicked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;->onButtonSetPicked(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 526
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->setIsPicked(Z)V

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->b:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const/4 v0, 0x1

    .line 529
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->setIsPicked(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->notifyDataSetChanged()V

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->c:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;

    if-eqz v0, :cond_1

    .line 532
    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;->onButtonSetPicked(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->a:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 1

    .line 519
    instance-of v0, p1, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;

    if-eqz v0, :cond_0

    .line 520
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;->a:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    aget-object p2, v0, p2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$sVFmxwmTqbt7BVS66jhrSX5QcYU;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$sVFmxwmTqbt7BVS66jhrSX5QcYU;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;)V

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    .line 514
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
