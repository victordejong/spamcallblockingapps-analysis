.class abstract Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/google/android/exoplayer2/trackselection/e$a;

.field final synthetic e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 2181
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 2182
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b:Ljava/util/List;

    .line 2183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 2184
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;Landroid/view/View;)V
    .locals 8

    .line 2221
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2222
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2223
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2224
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2225
    iget v3, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->a:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 2226
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    .line 2230
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/e$a;

    .line 4160
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, v3, v2

    .line 2230
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v6, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->b:I

    new-array v4, v4, [I

    iget v7, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->c:I

    aput v7, v4, v0

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 4761
    iget-object v4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->b:Landroid/util/SparseArray;

    .line 4762
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    .line 4764
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4765
    iget-object v6, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4767
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 4771
    :cond_1
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    :goto_1
    invoke-virtual {p2, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p2

    goto :goto_2

    .line 2236
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p2

    .line 2237
    invoke-virtual {p2, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2240
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;)V

    .line 2241
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Ljava/lang/String;)V

    .line 2242
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$D2-TB566K2AWpVcThMn_UJFYg9U(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;)V
.end method

.method public a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;I)V
    .locals 4

    .line 2204
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 2208
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;)V

    return-void

    .line 2210
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/util/List;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 2211
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    iget v2, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->a:I

    .line 3160
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, v2

    .line 2212
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2213
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 2214
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    iget v3, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->a:I

    .line 2215
    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->e:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2217
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->r:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->s:Landroid/view/View;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2219
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$k$D2-TB566K2AWpVcThMn_UJFYg9U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$k$D2-TB566K2AWpVcThMn_UJFYg9U;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/trackselection/e$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/e$a;",
            ")V"
        }
    .end annotation
.end method

.method public final b()V
    .locals 1

    .line 2254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 2255
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 0

    .line 2175
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 3192
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 3193
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_sub_settings_list_item:I

    const/4 v0, 0x0

    .line 3194
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3195
    new-instance p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;-><init>(Landroid/view/View;)V

    return-object p2
.end method
