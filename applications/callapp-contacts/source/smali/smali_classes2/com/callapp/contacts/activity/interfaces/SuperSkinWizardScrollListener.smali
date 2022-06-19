.class public Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field public a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->b:Z

    :goto_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_4

    .line 41
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->b:Z

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->c:I

    const/4 v0, 0x1

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int p1, v1, v0

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a()V

    .line 46
    :cond_3
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->b:Z

    .line 47
    iput p3, p0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->c:I

    :cond_4
    return-void
.end method
