.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/google/android/exoplayer2/ac$a;
.implements Lcom/google/android/exoplayer2/ui/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V
    .locals 0

    .line 1770
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1778
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 1779
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->b()V

    return-void
.end method

.method public final a(JZ)V
    .locals 2

    .line 1794
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    if-nez p3, :cond_0

    .line 1795
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1796
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ac;J)V

    .line 1798
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->a()V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/aa;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ac$b;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1803
    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1806
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1808
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_1
    const/16 v1, 0x9

    .line 1810
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1811
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_2
    const/16 v1, 0xa

    .line 1813
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1814
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_3
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 1816
    fill-array-data v1, :array_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1821
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_4
    new-array v1, v0, [I

    .line 1823
    fill-array-data v1, :array_3

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1824
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_5
    const/16 v1, 0xd

    .line 1826
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1827
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1829
    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1830
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xa
        0xc
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/al;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/al;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic b(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final b(J)V
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic b(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic b(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic c(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$d(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public synthetic e(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$e(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$f(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1843
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1847
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/e;->a()V

    .line 1848
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1849
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1850
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1851
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1852
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1853
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_b

    .line 1854
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->e(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1856
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1857
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->d(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1858
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 1859
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ac;)V

    return-void

    .line 1860
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 1861
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    .line 1862
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/w;->a(II)I

    move-result v1

    .line 1861
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    return-void

    .line 1863
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 1864
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;Z)Z

    return-void

    .line 1865
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 1866
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 1867
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 1868
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 1869
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 1870
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 1871
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    .line 1872
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 1873
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 1874
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_b

    .line 1875
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 1876
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_b
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->a()V

    :cond_0
    return-void
.end method

.method public synthetic p_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$p_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public synthetic q_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$q_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method
