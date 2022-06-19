.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/database/Cursor;

.field public b:Landroid/content/Context;

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->a:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/content/Context;Landroid/database/Cursor;Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    goto :goto_0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$o;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$o;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->a:Landroid/database/Cursor;

    invoke-interface {p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$o;->a(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    move-result-object v0

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p2, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method
