.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/widget/CheckedTextView;

.field private final d:Landroid/widget/CheckedTextView;

.field private final e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Lcom/google/android/exoplayer2/ui/i;

.field private j:[[Landroid/widget/CheckedTextView;

.field private k:Lcom/google/android/exoplayer2/trackselection/e$a;

.field private l:I

.field private m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private n:Z

.field private o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 94
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setOrientation(I)V

    .line 96
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    const/4 p3, 0x0

    .line 99
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setSaveFromParentEnabled(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, p2, [I

    const v2, 0x101030e

    aput v2, v1, p3

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    .line 110
    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/i;

    .line 111
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const v2, 0x109000f

    .line 116
    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    .line 117
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 118
    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_none:I

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 119
    invoke-virtual {v3, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 120
    invoke-virtual {v3, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 121
    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 122
    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 125
    sget v3, Lcom/google/android/exoplayer2/ui/c$h;->exo_list_divider:I

    invoke-virtual {p1, v3, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 131
    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_auto:I

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 132
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a()V
    .locals 11

    .line 250
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/e$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/e$a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 1160
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, v3

    .line 263
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 266
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()Z

    move-result v0

    const/4 v3, 0x0

    .line 268
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_9

    .line 269
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 270
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(I)Z

    move-result v5

    .line 271
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v3

    .line 273
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v6, [Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    const/4 v8, 0x0

    .line 274
    :goto_2
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_2

    .line 275
    new-instance v9, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    invoke-direct {v9, v3, v8, v10}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;-><init>(IILcom/google/android/exoplayer2/Format;)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Ljava/util/Comparator;

    if-eqz v4, :cond_3

    .line 278
    invoke-static {v7, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_8

    if-nez v4, :cond_4

    .line 283
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    sget v9, Lcom/google/android/exoplayer2/ui/c$h;->exo_list_divider:I

    invoke-virtual {v8, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    :cond_4
    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const v8, 0x109000f

    goto :goto_5

    :cond_6
    :goto_4
    const v8, 0x1090010

    .line 289
    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    .line 290
    invoke-virtual {v9, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckedTextView;

    .line 291
    iget v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {v8, v9}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 292
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/i;

    aget-object v10, v7, v4

    iget-object v10, v10, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->c:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/ui/i;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/e$a;

    iget v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    invoke-virtual {v9, v10, v3, v4}, Lcom/google/android/exoplayer2/trackselection/e$a;->a(III)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    .line 296
    invoke-virtual {v8, v1}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 297
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    invoke-virtual {v8, v9}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 299
    :cond_7
    invoke-virtual {v8, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 300
    invoke-virtual {v8, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 302
    :goto_6
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v9, v9, v3

    aput-object v8, v9, v4

    .line 303
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 307
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V
    .locals 9

    .line 1327
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 1341
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 1342
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_3

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_1

    .line 1346
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 1347
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_3

    .line 1351
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    .line 1353
    iget v3, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:I

    .line 1354
    iget v0, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    .line 1355
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 1356
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/e$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 1359
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1361
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1363
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-direct {v4, v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1366
    :cond_3
    iget v5, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 1367
    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1368
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 1369
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz p1, :cond_9

    if-eqz v7, :cond_9

    if-ne v5, v2, :cond_6

    .line 1375
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1413
    :cond_6
    array-length p1, v4

    sub-int/2addr p1, v2

    new-array p1, p1, [I

    .line 1415
    array-length v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    aget v7, v4, v5

    if-eq v7, v0, :cond_7

    add-int/lit8 v8, v6, 0x1

    .line 1417
    aput v7, p1, v6

    move v6, v8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1378
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_b

    if-eqz v6, :cond_a

    .line 2407
    array-length p1, v4

    add-int/2addr p1, v2

    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 2408
    array-length v4, p1

    sub-int/2addr v4, v2

    aput v0, p1, v4

    .line 1384
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 1387
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-direct {v4, v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1334
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    .line 1335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    if-eqz p1, :cond_c

    .line 3239
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3240
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 3241
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private a(I)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "mappedTrackInfo"
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 396
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lcom/google/android/exoplayer2/trackselection/e$a;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 397
    invoke-virtual {v0, v2, p1}, Lcom/google/android/exoplayer2/trackselection/e$a;->a(II)I

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    .line 313
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v3, 0x0

    .line 315
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_2

    if-eqz v1, :cond_1

    .line 317
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    .line 318
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget v4, v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->containsTrack(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    .line 320
    :cond_1
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c()Z
    .locals 2

    .line 403
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eq v0, p1, :cond_1

    .line 162
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-lez p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    :cond_1
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/i;)V
    .locals 0

    .line 188
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/i;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lcom/google/android/exoplayer2/ui/i;

    .line 189
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    return-void
.end method
