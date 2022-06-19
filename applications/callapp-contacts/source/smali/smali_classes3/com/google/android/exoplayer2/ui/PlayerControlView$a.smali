.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ac$a;
.implements Lcom/google/android/exoplayer2/ui/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V
    .locals 0

    .line 1321
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    .line 1327
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 2

    .line 1341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p3, :cond_0

    .line 1342
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1343
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;J)V

    :cond_0
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

    .line 1349
    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1352
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_1
    const/16 v1, 0x9

    .line 1356
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_2
    const/16 v1, 0xa

    .line 1359
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1360
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_3
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 1362
    fill-array-data v1, :array_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1367
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_4
    new-array v0, v0, [I

    .line 1369
    fill-array-data v0, :array_3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ac$b;->a([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1370
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_5
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

    .line 1334
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

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

    .line 1376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ac;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1380
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1381
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1382
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1383
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1384
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1385
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    .line 1386
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->e(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1388
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1389
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/g;->d(Lcom/google/android/exoplayer2/ac;)Z

    return-void

    .line 1390
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 1391
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;)V

    return-void

    .line 1392
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 1393
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;)V

    return-void

    .line 1394
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 1395
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    .line 1396
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/w;->a(II)I

    move-result v1

    .line 1395
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    return-void

    .line 1397
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 1398
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;

    move-result-object p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;Z)Z

    :cond_8
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
