.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic r:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final s:Landroid/widget/TextView;

.field private final t:Landroid/widget/TextView;

.field private final u:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 0

    .line 1938
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->r:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1939
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 1940
    sget p1, Lcom/google/android/exoplayer2/ui/c$f;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->s:Landroid/widget/TextView;

    .line 1941
    sget p1, Lcom/google/android/exoplayer2/ui/c$f;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->t:Landroid/widget/TextView;

    .line 1942
    sget p1, Lcom/google/android/exoplayer2/ui/c$f;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->u:Landroid/widget/ImageView;

    .line 1943
    new-instance p1, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$f$VP_OyqunfLgpgyuvXSLHi4sU7NY;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$f$VP_OyqunfLgpgyuvXSLHi4sU7NY;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/TextView;
    .locals 0

    .line 1932
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 1943
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->r:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/TextView;
    .locals 0

    .line 1932
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)Landroid/widget/ImageView;
    .locals 0

    .line 1932
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic lambda$VP_OyqunfLgpgyuvXSLHi4sU7NY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;->a(Landroid/view/View;)V

    return-void
.end method
