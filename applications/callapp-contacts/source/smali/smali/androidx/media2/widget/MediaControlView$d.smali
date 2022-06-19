.class final Landroidx/media2/widget/MediaControlView$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2003
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$d;->c:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2004
    iput-object p2, p0, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    .line 2005
    iput p3, p0, Landroidx/media2/widget/MediaControlView$d;->b:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 2019
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 2036
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$d;->c:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Landroidx/media2/widget/l$f;->media2_widget_sub_settings_list_item:I

    invoke-static {p2, p3}, Landroidx/media2/widget/MediaControlView;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    .line 2037
    sget p3, Landroidx/media2/widget/l$e;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2038
    sget v0, Landroidx/media2/widget/l$e;->check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2040
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2041
    iget p3, p0, Landroidx/media2/widget/MediaControlView$d;->b:I

    if-eq p1, p3, :cond_0

    const/4 p1, 0x4

    .line 2042
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-object p2
.end method
