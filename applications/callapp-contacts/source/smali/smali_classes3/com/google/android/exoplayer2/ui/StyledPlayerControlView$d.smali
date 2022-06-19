.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final b:[Ljava/lang/String;

.field private final c:[I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[I)V
    .locals 0

    .line 1953
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 1954
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b:[Ljava/lang/String;

    .line 1955
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->c:[I

    return-void
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 0

    .line 1992
    iget p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->d:I

    if-eq p1, p2, :cond_0

    .line 1993
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->c:[I

    aget p1, p2, p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 1994
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V

    .line 1996
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$AjfN1NWBEocCIflyTm7klrm6pm4(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 1959
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 1962
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->c:[I

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1963
    aget v3, v3, v0

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1969
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->d:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1973
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 1947
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    .line 2986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 2987
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2989
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->s:Landroid/view/View;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->d:I

    if-ne p2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2990
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$d$AjfN1NWBEocCIflyTm7klrm6pm4;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$d$AjfN1NWBEocCIflyTm7klrm6pm4;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 3978
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 3979
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_sub_settings_list_item:I

    const/4 v0, 0x0

    .line 3980
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3981
    new-instance p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;-><init>(Landroid/view/View;)V

    return-object p2
.end method
