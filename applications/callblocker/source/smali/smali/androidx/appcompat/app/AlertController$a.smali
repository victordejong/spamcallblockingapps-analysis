.class public Landroidx/appcompat/app/AlertController$a;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$a$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:[Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public K:Landroid/database/Cursor;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public O:Landroidx/appcompat/app/AlertController$a$a;

.field public P:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/DialogInterface$OnClickListener;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnKeyListener;

.field public v:[Ljava/lang/CharSequence;

.field public w:Landroid/widget/ListAdapter;

.field public x:Landroid/content/DialogInterface$OnClickListener;

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput v0, p0, Landroidx/appcompat/app/AlertController$a;->c:I

    .line 871
    iput v0, p0, Landroidx/appcompat/app/AlertController$a;->e:I

    .line 897
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->E:Z

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/AlertController$a;->I:I

    .line 909
    iput-boolean v1, p0, Landroidx/appcompat/app/AlertController$a;->P:Z

    .line 925
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    .line 926
    iput-boolean v1, p0, Landroidx/appcompat/app/AlertController$a;->r:Z

    .line 927
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroid/view/LayoutInflater;

    .line 928
    return-void
.end method

.method private b(Landroidx/appcompat/app/AlertController;)V
    .locals 10

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 988
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroid/view/LayoutInflater;

    iget v1, p1, Landroidx/appcompat/app/AlertController;->l:I

    const/4 v2, 0x0

    .line 989
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 992
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->G:Z

    if-eqz v0, :cond_5

    .line 993
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 994
    new-instance v0, Landroidx/appcompat/app/AlertController$a$1;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget v3, p1, Landroidx/appcompat/app/AlertController;->m:I

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/AlertController$a$1;-><init>(Landroidx/appcompat/app/AlertController$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 1054
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a;->O:Landroidx/appcompat/app/AlertController$a$a;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a;->O:Landroidx/appcompat/app/AlertController$a$a;

    invoke-interface {v1, v6}, Landroidx/appcompat/app/AlertController$a$a;->a(Landroid/widget/ListView;)V

    .line 1061
    :cond_0
    iput-object v0, p1, Landroidx/appcompat/app/AlertController;->j:Landroid/widget/ListAdapter;

    .line 1062
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->I:I

    iput v0, p1, Landroidx/appcompat/app/AlertController;->k:I

    .line 1064
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 1065
    new-instance v0, Landroidx/appcompat/app/AlertController$a$3;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AlertController$a$3;-><init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->H:Z

    if-eqz v0, :cond_a

    .line 1093
    invoke-virtual {v6, v9}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1097
    :cond_3
    :goto_2
    iput-object v6, p1, Landroidx/appcompat/app/AlertController;->b:Landroid/widget/ListView;

    .line 1098
    return-void

    .line 1009
    :cond_4
    new-instance v1, Landroidx/appcompat/app/AlertController$a$2;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$a$2;-><init>(Landroidx/appcompat/app/AlertController$a;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    move-object v0, v1

    goto :goto_0

    .line 1038
    :cond_5
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->H:Z

    if-eqz v0, :cond_6

    .line 1039
    iget v2, p1, Landroidx/appcompat/app/AlertController;->n:I

    .line 1044
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 1045
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroidx/appcompat/app/AlertController$a;->L:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1041
    :cond_6
    iget v2, p1, Landroidx/appcompat/app/AlertController;->o:I

    goto :goto_3

    .line 1047
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    .line 1048
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 1050
    :cond_8
    new-instance v0, Landroidx/appcompat/app/AlertController$c;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1074
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_1

    .line 1075
    new-instance v0, Landroidx/appcompat/app/AlertController$a$4;

    invoke-direct {v0, p0, v6, p1}, Landroidx/appcompat/app/AlertController$a$4;-><init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1094
    :cond_a
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->G:Z

    if-eqz v0, :cond_3

    .line 1095
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/AlertController;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 931
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 932
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;)V

    .line 947
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 950
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 951
    :cond_2
    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->l:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 955
    :cond_4
    const/4 v1, -0x2

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$a;->l:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 958
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 959
    :cond_6
    const/4 v1, -0x3

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 965
    :cond_8
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$a;->b(Landroidx/appcompat/app/AlertController;)V

    .line 967
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 968
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$a;->E:Z

    if-eqz v0, :cond_f

    .line 969
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    iget v2, p0, Landroidx/appcompat/app/AlertController$a;->A:I

    iget v3, p0, Landroidx/appcompat/app/AlertController$a;->B:I

    iget v4, p0, Landroidx/appcompat/app/AlertController$a;->C:I

    iget v5, p0, Landroidx/appcompat/app/AlertController$a;->D:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;IIII)V

    .line 985
    :cond_a
    :goto_1
    return-void

    .line 934
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 935
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 937
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 938
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 940
    :cond_d
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->c:I

    if-eqz v0, :cond_e

    .line 941
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->c:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->b(I)V

    .line 943
    :cond_e
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->e:I

    if-eqz v0, :cond_0

    .line 944
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->e:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->b(I)V

    goto/16 :goto_0

    .line 972
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->z:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->c(Landroid/view/View;)V

    goto :goto_1

    .line 974
    :cond_10
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->y:I

    if-eqz v0, :cond_a

    .line 975
    iget v0, p0, Landroidx/appcompat/app/AlertController$a;->y:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->a(I)V

    goto :goto_1
.end method
