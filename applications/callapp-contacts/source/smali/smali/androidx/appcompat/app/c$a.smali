.class public final Landroidx/appcompat/app/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, v0}, Landroidx/appcompat/app/c;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Landroidx/appcompat/app/AlertController$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 344
    invoke-static {p1, p2}, Landroidx/appcompat/app/c;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    .line 345
    iput p2, p0, Landroidx/appcompat/app/c$a;->b:I

    return-void
.end method


# virtual methods
.method public final create()Landroidx/appcompat/app/c;
    .locals 15

    .line 983
    new-instance v0, Landroidx/appcompat/app/c;

    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/app/c$a;->b:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/c;-><init>(Landroid/content/Context;I)V

    .line 984
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v10, v0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    .line 1931
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    .line 1932
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    .line 2257
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_1

    .line 1934
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1935
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 1937
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1938
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    .line 2378
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 2379
    iput v12, v10, Landroidx/appcompat/app/AlertController;->B:I

    .line 2381
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 2383
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2384
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2386
    :cond_2
    iget-object v2, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1940
    :cond_3
    :goto_0
    iget v2, v1, Landroidx/appcompat/app/AlertController$a;->c:I

    if-eqz v2, :cond_4

    .line 1941
    iget v2, v1, Landroidx/appcompat/app/AlertController$a;->c:I

    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertController;->a(I)V

    .line 1943
    :cond_4
    iget v2, v1, Landroidx/appcompat/app/AlertController$a;->e:I

    if-eqz v2, :cond_5

    .line 1944
    iget v2, v1, Landroidx/appcompat/app/AlertController$a;->e:I

    .line 2398
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2399
    iget-object v4, v10, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2400
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 1944
    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertController;->a(I)V

    .line 1947
    :cond_5
    :goto_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 1948
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3261
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 3262
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 3263
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    :cond_6
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->i:Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    :cond_7
    const/4 v3, -0x1

    .line 1951
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1954
    :cond_8
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->l:Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    :cond_9
    const/4 v3, -0x2

    .line 1955
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$a;->l:Ljava/lang/CharSequence;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1958
    :cond_a
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->o:Ljava/lang/CharSequence;

    if-nez v2, :cond_b

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    :cond_b
    const/4 v3, -0x3

    .line 1959
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1964
    :cond_c
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    const/4 v13, 0x0

    if-nez v2, :cond_d

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v2, :cond_d

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_18

    .line 3988
    :cond_d
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->b:Landroid/view/LayoutInflater;

    iget v3, v10, Landroidx/appcompat/app/AlertController;->L:I

    .line 3989
    invoke-virtual {v2, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 3992
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$a;->G:Z

    if-eqz v3, :cond_f

    .line 3993
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v3, :cond_e

    .line 3994
    new-instance v14, Landroidx/appcompat/app/AlertController$a$1;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget v6, v10, Landroidx/appcompat/app/AlertController;->M:I

    const v7, 0x1020014

    iget-object v8, v1, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    move-object v3, v14

    move-object v4, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/app/AlertController$a$1;-><init>(Landroidx/appcompat/app/AlertController$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_3

    .line 4009
    :cond_e
    new-instance v14, Landroidx/appcompat/app/AlertController$a$2;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v6, v1, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    const/4 v7, 0x0

    move-object v3, v14

    move-object v4, v1

    move-object v8, v2

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/app/AlertController$a$2;-><init>(Landroidx/appcompat/app/AlertController$a;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    goto :goto_3

    .line 4038
    :cond_f
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$a;->H:Z

    if-eqz v3, :cond_10

    .line 4039
    iget v3, v10, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_2

    .line 4041
    :cond_10
    iget v3, v10, Landroidx/appcompat/app/AlertController;->O:I

    :goto_2
    move v6, v3

    .line 4044
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    const v4, 0x1020014

    if-eqz v3, :cond_11

    .line 4045
    new-instance v14, Landroid/widget/SimpleCursorAdapter;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    new-array v8, v11, [Ljava/lang/String;

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->L:Ljava/lang/String;

    aput-object v3, v8, v12

    new-array v9, v11, [I

    aput v4, v9, v12

    move-object v4, v14

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_3

    .line 4047
    :cond_11
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_12

    .line 4048
    iget-object v14, v1, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    goto :goto_3

    .line 4050
    :cond_12
    new-instance v14, Landroidx/appcompat/app/AlertController$c;

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    invoke-direct {v14, v3, v6, v4, v5}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 4061
    :goto_3
    iput-object v14, v10, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 4062
    iget v3, v1, Landroidx/appcompat/app/AlertController$a;->I:I

    iput v3, v10, Landroidx/appcompat/app/AlertController;->I:I

    .line 4064
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_13

    .line 4065
    new-instance v3, Landroidx/appcompat/app/AlertController$a$3;

    invoke-direct {v3, v1, v10}, Landroidx/appcompat/app/AlertController$a$3;-><init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    .line 4074
    :cond_13
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_14

    .line 4075
    new-instance v3, Landroidx/appcompat/app/AlertController$a$4;

    invoke-direct {v3, v1, v2, v10}, Landroidx/appcompat/app/AlertController$a$4;-><init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4088
    :cond_14
    :goto_4
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_15

    .line 4089
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4092
    :cond_15
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$a;->H:Z

    if-eqz v3, :cond_16

    .line 4093
    invoke-virtual {v2, v11}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_5

    .line 4094
    :cond_16
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$a;->G:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x2

    .line 4095
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 4097
    :cond_17
    :goto_5
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 1967
    :cond_18
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 1968
    iget-boolean v2, v1, Landroidx/appcompat/app/AlertController$a;->E:Z

    if-eqz v2, :cond_19

    .line 1969
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    iget v3, v1, Landroidx/appcompat/app/AlertController$a;->A:I

    iget v4, v1, Landroidx/appcompat/app/AlertController$a;->B:I

    iget v5, v1, Landroidx/appcompat/app/AlertController$a;->C:I

    iget v1, v1, Landroidx/appcompat/app/AlertController$a;->D:I

    .line 4290
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 4291
    iput v12, v10, Landroidx/appcompat/app/AlertController;->i:I

    .line 4292
    iput-boolean v11, v10, Landroidx/appcompat/app/AlertController;->n:Z

    .line 4293
    iput v3, v10, Landroidx/appcompat/app/AlertController;->j:I

    .line 4294
    iput v4, v10, Landroidx/appcompat/app/AlertController;->k:I

    .line 4295
    iput v5, v10, Landroidx/appcompat/app/AlertController;->l:I

    .line 4296
    iput v1, v10, Landroidx/appcompat/app/AlertController;->m:I

    goto :goto_6

    .line 1972
    :cond_19
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    .line 5280
    iput-object v1, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 5281
    iput v12, v10, Landroidx/appcompat/app/AlertController;->i:I

    .line 5282
    iput-boolean v12, v10, Landroidx/appcompat/app/AlertController;->n:Z

    goto :goto_6

    .line 1974
    :cond_1a
    iget v2, v1, Landroidx/appcompat/app/AlertController$a;->y:I

    if-eqz v2, :cond_1b

    .line 1975
    iget v1, v1, Landroidx/appcompat/app/AlertController$a;->y:I

    .line 6271
    iput-object v13, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 6272
    iput v1, v10, Landroidx/appcompat/app/AlertController;->i:I

    .line 6273
    iput-boolean v12, v10, Landroidx/appcompat/app/AlertController;->n:Z

    .line 985
    :cond_1b
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$a;->r:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->setCancelable(Z)V

    .line 986
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$a;->r:Z

    if-eqz v1, :cond_1c

    .line 987
    invoke-virtual {v0, v11}, Landroidx/appcompat/app/c;->setCanceledOnTouchOutside(Z)V

    .line 989
    :cond_1c
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 990
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 991
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1d

    .line 992
    iget-object v1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1d
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 358
    iget-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 2

    .line 509
    iget-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$a;->l:Ljava/lang/CharSequence;

    .line 510
    iget-object p1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 2

    .line 473
    iget-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$a;->i:Ljava/lang/CharSequence;

    .line 474
    iget-object p1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;
    .locals 1

    .line 377
    iget-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;
    .locals 1

    .line 902
    iget-object v0, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    .line 903
    iget-object p1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/appcompat/app/AlertController$a;->y:I

    .line 904
    iget-object p1, p0, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$a;->E:Z

    return-object p0
.end method
