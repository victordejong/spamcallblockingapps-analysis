.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;",
        ">;"
    }
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final synthetic b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final c:[Ljava/lang/String;

.field private final d:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1887
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 1888
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->c:[Ljava/lang/String;

    .line 1889
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    .line 1890
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->d:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 3

    .line 1881
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;

    .line 2902
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2904
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2905
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2907
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2910
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    .line 2911
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2913
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->d:[Landroid/graphics/drawable/Drawable;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 3895
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 3896
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_settings_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3897
    new-instance p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V

    return-object p2
.end method
