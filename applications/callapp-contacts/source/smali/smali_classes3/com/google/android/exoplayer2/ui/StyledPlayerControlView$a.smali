.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;
.super Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 2093
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V
    .locals 0

    .line 2093
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 2113
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2114
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p1

    const/4 v0, 0x0

    .line 2115
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2117
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;)V

    .line 2121
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2123
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7928
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 2124
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$7V5Ei9jIKnf71jUKrok0q_d0fhg(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;)V
    .locals 5

    .line 2098
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->r:Landroid/widget/TextView;

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2102
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2103
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2104
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/e$a;

    .line 3160
    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, v4, v3

    .line 2105
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2110
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->s:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2111
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$a$7V5Ei9jIKnf71jUKrok0q_d0fhg;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$a$7V5Ei9jIKnf71jUKrok0q_d0fhg;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object v0

    .line 3928
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/trackselection/e$a;)V
    .locals 6
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2140
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4160
    iget-object v4, p3, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, v4, v2

    .line 2143
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2144
    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2149
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2152
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4928
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    .line 2156
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2158
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_auto:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5928
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_3

    .line 2160
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2161
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 2162
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->e:Z

    if-eqz v2, :cond_4

    .line 2163
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->d:Ljava/lang/String;

    .line 6928
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2169
    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->b:Ljava/util/List;

    .line 2170
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->c:Ljava/util/List;

    .line 2171
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;->d:Lcom/google/android/exoplayer2/trackselection/e$a;

    return-void
.end method
