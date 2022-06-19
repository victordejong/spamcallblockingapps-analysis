.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$b;,
        Landroidx/recyclerview/widget/LinearLayoutManager$a;,
        Landroidx/recyclerview/widget/LinearLayoutManager$d;,
        Landroidx/recyclerview/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Landroidx/recyclerview/widget/k;

.field k:Z

.field l:I

.field m:I

.field n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

.field final o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 67
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    .line 94
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 101
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 108
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 114
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 126
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 136
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    .line 146
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    .line 151
    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    .line 170
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    .line 171
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 67
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    .line 94
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 101
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 108
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 114
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 126
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 136
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    .line 146
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    .line 151
    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    .line 184
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object v0

    .line 185
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    .line 186
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    .line 187
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Z)V

    .line 188
    return-void
.end method

.method private O()Landroid/view/View;
    .locals 1

    .prologue
    .line 1761
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()Landroid/view/View;
    .locals 1

    .prologue
    .line 1771
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private Q()Landroid/view/View;
    .locals 1

    .prologue
    .line 1885
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1886
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private R()Landroid/view/View;
    .locals 1

    .prologue
    .line 1892
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1893
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private S()Landroid/view/View;
    .locals 2

    .prologue
    .line 1897
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private T()Landroid/view/View;
    .locals 2

    .prologue
    .line 1901
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 963
    if-lez v0, :cond_1

    .line 964
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    .line 969
    add-int v1, p1, v0

    .line 970
    if-eqz p4, :cond_0

    .line 972
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 973
    if-lez v1, :cond_0

    .line 974
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/k;->a(I)V

    .line 975
    add-int/2addr v0, v1

    .line 978
    :cond_0
    :goto_0
    return v0

    .line 966
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1011
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1012
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1014
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1015
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1016
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1017
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1018
    return-void

    :cond_0
    move v0, v1

    .line 1012
    goto :goto_0
.end method

.method private a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1229
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    .line 1230
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1231
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aput v0, v2, v0

    .line 1232
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aput v0, v2, v1

    .line 1233
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    invoke-virtual {p0, p4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V

    .line 1234
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v2, v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1235
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1236
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 1237
    :cond_0
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    iput v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1238
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-eqz v0, :cond_4

    :goto_1
    iput v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 1240
    if-eqz v0, :cond_5

    .line 1241
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->g()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1243
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P()Landroid/view/View;

    move-result-object v0

    .line 1245
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_1

    move v1, v5

    :cond_1
    iput v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1247
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1248
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1250
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1251
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1263
    :goto_2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1264
    if-eqz p3, :cond_2

    .line 1265
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1267
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1268
    return-void

    :cond_3
    move v2, v4

    .line 1237
    goto :goto_0

    :cond_4
    move v4, v3

    .line 1238
    goto :goto_1

    .line 1254
    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v0

    .line 1255
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->c()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 1256
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_6

    :goto_3
    iput v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1258
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1259
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1260
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1261
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    move v1, v5

    .line 1256
    goto :goto_3
.end method

.method private a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 1007
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    .line 1008
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 1

    .prologue
    .line 1421
    if-ne p2, p3, :cond_1

    .line 1436
    :cond_0
    return-void

    .line 1427
    :cond_1
    if-le p3, p2, :cond_2

    .line 1428
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1429
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    .line 1428
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1432
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1433
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    .line 1432
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
    .locals 4

    .prologue
    .line 1546
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-eqz v0, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1550
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 1551
    iget v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1552
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1554
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    .line 823
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 875
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    .line 953
    :goto_0
    return v1

    .line 879
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 880
    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 881
    iput v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    move v1, v2

    .line 885
    goto :goto_0

    .line 890
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 891
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 895
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_4

    .line 896
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 899
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 905
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    if-ne v0, v4, :cond_e

    .line 906
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_a

    .line 908
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v3

    .line 909
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 911
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    goto :goto_0

    .line 914
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 915
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 916
    if-gez v3, :cond_7

    .line 917
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 918
    iput-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    goto :goto_0

    .line 921
    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 922
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 923
    if-gez v2, :cond_8

    .line 924
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 925
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    goto/16 :goto_0

    .line 928
    :cond_8
    iget-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 929
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 930
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->b()I

    move-result v2

    add-int/2addr v0, v2

    .line 931
    :goto_1
    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0

    .line 930
    :cond_9
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 931
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 933
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_c

    .line 935
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 936
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 939
    :cond_c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 936
    goto :goto_2

    .line 944
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 946
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_f

    .line 947
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0

    .line 950
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0
.end method

.method private b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 4

    .prologue
    .line 986
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 988
    if-lez v0, :cond_1

    .line 990
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    .line 994
    add-int v1, p1, v0

    .line 995
    if-eqz p4, :cond_0

    .line 997
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 998
    if-lez v1, :cond_0

    .line 999
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/k;->a(I)V

    .line 1000
    sub-int/2addr v0, v1

    .line 1003
    :cond_0
    :goto_0
    return v0

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 362
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .locals 2

    .prologue
    .line 1021
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(II)V

    .line 1022
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1453
    if-gez p2, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    sub-int v2, p2, p3

    .line 1462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v3

    .line 1463
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    .line 1464
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1465
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1466
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v2, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1467
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/k;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 1469
    :cond_2
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1464
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1474
    :goto_2
    if-ge v0, v3, :cond_0

    .line 1475
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v4

    .line 1476
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v5

    if-gt v5, v2, :cond_5

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1477
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/k;->c(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_6

    .line 1479
    :cond_5
    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1474
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 9

    .prologue
    .line 755
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 761
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->c()Ljava/util/List;

    move-result-object v5

    .line 762
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    .line 764
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    .line 765
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 766
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    .line 764
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    .line 769
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v1

    .line 770
    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    .line 772
    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 773
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    add-int v1, v3, v0

    move v0, v2

    goto :goto_2

    .line 770
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 775
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    .line 783
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    .line 784
    if-lez v3, :cond_7

    .line 785
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v0

    .line 786
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(II)V

    .line 787
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 788
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 789
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V

    .line 790
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 793
    :cond_7
    if-lez v2, :cond_8

    .line 794
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P()Landroid/view/View;

    move-result-object v0

    .line 795
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    .line 796
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 797
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 798
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V

    .line 799
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 801
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v2

    if-nez v2, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()Landroid/view/View;

    move-result-object v2

    .line 838
    if-eqz v2, :cond_2

    invoke-virtual {p3, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    move v0, v1

    .line 840
    goto :goto_0

    .line 842
    :cond_2
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-ne v2, v3, :cond_0

    .line 845
    iget-boolean v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v2, :cond_6

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    .line 848
    :goto_1
    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    .line 852
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 854
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 855
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 856
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 857
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 858
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 859
    :cond_4
    if-eqz v0, :cond_5

    .line 860
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 861
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    .line 862
    :goto_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    :cond_5
    move v0, v1

    .line 865
    goto :goto_0

    .line 847
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 861
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 862
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    goto :goto_2
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1502
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v2

    .line 1503
    if-gez p2, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->e()I

    move-result v0

    sub-int/2addr v0, p2

    add-int v3, v0, p3

    .line 1511
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1512
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1513
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v4

    .line 1514
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1515
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/k;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1517
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1512
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1522
    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 1523
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1524
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1525
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/k;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 1527
    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)V

    goto :goto_0

    .line 1522
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1823
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1824
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1840
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1841
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1025
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1026
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1027
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 1029
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 1030
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1031
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1033
    return-void

    :cond_0
    move v0, v1

    .line 1027
    goto :goto_0
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1845
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return v4

    .line 1165
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1166
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1167
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1168
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v4, p0

    .line 1166
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1849
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    :goto_0
    return v4

    .line 1176
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1177
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1178
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1179
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1177
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    :goto_0
    return v4

    .line 1187
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1188
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1189
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1190
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1188
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    .line 1113
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1114
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1572
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1573
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v6, :cond_1

    .line 1575
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    .line 1576
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1578
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    .line 1580
    :cond_1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    .line 1581
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->g:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    .line 1582
    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1583
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a()V

    .line 1587
    invoke-virtual {p0, p1, p3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V

    .line 1591
    iget-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    .line 1622
    :cond_4
    :goto_0
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0

    .line 1594
    :cond_5
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1601
    iget-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v3, :cond_6

    .line 1602
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1603
    :cond_6
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 1605
    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    .line 1608
    :cond_7
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v6, :cond_9

    .line 1609
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1610
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_8

    .line 1611
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 1613
    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    .line 1615
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/16 v0, 0x140

    .line 1990
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1992
    const/4 v1, 0x0

    .line 1993
    if-eqz p3, :cond_0

    .line 1994
    const/16 v2, 0x6003

    .line 2000
    :goto_0
    if-eqz p4, :cond_2

    .line 2004
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/q;

    .line 2005
    invoke-virtual {v1, p1, p2, v2, v0}, Landroidx/recyclerview/widget/q;->a(IIII)Landroid/view/View;

    move-result-object v0

    .line 2004
    :goto_2
    return-object v0

    :cond_0
    move v2, v0

    .line 1997
    goto :goto_0

    .line 2005
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Landroidx/recyclerview/widget/q;

    .line 2007
    invoke-virtual {v1, p1, p2, v2, v0}, Landroidx/recyclerview/widget/q;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 2041
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()V

    .line 2042
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2081
    :cond_0
    :goto_0
    return-object v0

    .line 2046
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(I)I

    move-result v0

    .line 2047
    if-ne v0, v4, :cond_2

    move-object v0, v1

    .line 2048
    goto :goto_0

    .line 2050
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 2051
    const v2, 0x3eaaaaab

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2052
    invoke-direct {p0, v0, v2, v6, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2053
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 2054
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-boolean v6, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 2055
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v2, p4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 2062
    if-ne v0, v5, :cond_3

    .line 2063
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Landroid/view/View;

    move-result-object v2

    .line 2070
    :goto_1
    if-ne v0, v5, :cond_4

    .line 2071
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v0

    .line 2075
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2076
    if-nez v2, :cond_0

    move-object v0, v1

    .line 2077
    goto :goto_0

    .line 2065
    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 2073
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 2081
    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1855
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1858
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v5

    .line 1859
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v6

    .line 1860
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    .line 1861
    :goto_1
    if-eq p3, p4, :cond_3

    .line 1862
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1863
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1864
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 1865
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    .line 1861
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    .line 1860
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1869
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1870
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1871
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    .line 1872
    goto :goto_2

    .line 1879
    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method a(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1783
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 200
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    return-object v0
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1368
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_1

    .line 1369
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 1379
    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    .line 1368
    goto :goto_0

    .line 1374
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1375
    if-lez p1, :cond_3

    move v0, v1

    .line 1376
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1377
    invoke-direct {p0, v0, v2, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 1378
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, v0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V

    goto :goto_1

    .line 1375
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1288
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    .line 1291
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    move v4, v0

    .line 1302
    :goto_0
    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    .line 1306
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->h:I

    if-ge v2, v4, :cond_4

    .line 1307
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1308
    invoke-interface {p2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 1312
    add-int/2addr v3, v0

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1293
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()V

    .line 1294
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    .line 1295
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ne v0, v2, :cond_2

    .line 1296
    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    .line 1298
    :cond_2
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    goto :goto_0

    .line 1302
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1314
    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 279
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    .line 280
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q()V

    .line 288
    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 246
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 248
    :cond_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1627
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v1

    .line 1628
    if-nez v1, :cond_0

    .line 1634
    iput-boolean v7, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 1696
    :goto_0
    return-void

    .line 1637
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 1638
    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1639
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    .line 1641
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    .line 1653
    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    .line 1654
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 1656
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne v0, v7, :cond_a

    .line 1657
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1658
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1659
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1664
    :goto_3
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v4, :cond_9

    .line 1665
    iget v5, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1666
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    move v4, v0

    :goto_4
    move-object v0, p0

    .line 1685
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1692
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    :cond_1
    iput-boolean v7, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 1695
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1639
    goto :goto_1

    .line 1643
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1646
    :cond_5
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    .line 1648
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1646
    goto :goto_5

    .line 1650
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1661
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D()I

    move-result v2

    .line 1662
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    .line 1668
    :cond_9
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1669
    iget v4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v5, v4

    move v4, v0

    goto :goto_4

    .line 1672
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E()I

    move-result v3

    .line 1673
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1675
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_b

    .line 1676
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1677
    iget v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v2, v4

    move v4, v0

    goto :goto_4

    .line 1679
    :cond_b
    iget v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 1680
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_4
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 728
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 729
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 730
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 3

    .prologue
    .line 1277
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 1278
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1279
    const/4 v1, 0x0

    iget v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 1281
    :cond_0
    return-void
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    .line 488
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v2

    .line 489
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    move v3, v2

    .line 495
    :goto_0
    aput v3, p2, v1

    .line 496
    const/4 v1, 0x1

    aput v0, p2, v1

    .line 497
    return-void

    :cond_0
    move v0, v2

    move v3, v1

    .line 492
    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 235
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 237
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$p;->a()V

    .line 239
    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Landroidx/recyclerview/widget/h;

    .line 503
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/h;->c(I)V

    .line 505
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 506
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    .line 1410
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    .line 1412
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    .line 315
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q()V

    goto :goto_0
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1126
    const/4 v0, 0x0

    .line 1128
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method b(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 2012
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 2013
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 2014
    :goto_0
    if-nez v0, :cond_2

    .line 2015
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2031
    :goto_1
    return-object v0

    .line 2013
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2019
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 2020
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2021
    const/16 v1, 0x4104

    .line 2023
    const/16 v0, 0x4004

    .line 2031
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/q;

    .line 2032
    invoke-virtual {v2, p1, p2, v1, v0}, Landroidx/recyclerview/widget/q;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2026
    :cond_3
    const/16 v1, 0x1041

    .line 2028
    const/16 v0, 0x1001

    goto :goto_2

    .line 2032
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Landroidx/recyclerview/widget/q;

    .line 2034
    invoke-virtual {v2, p1, p2, v1, v0}, Landroidx/recyclerview/widget/q;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method b(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1801
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1802
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1805
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 340
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    if-nez v0, :cond_2

    .line 348
    :cond_1
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 349
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    iput-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 350
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    .line 351
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q()V

    .line 353
    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 395
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->c:Z

    .line 399
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q()V

    goto :goto_0
.end method

.method c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1404
    :goto_0
    return p1

    .line 1385
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 1386
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 1387
    if-lez p1, :cond_2

    move v0, v1

    .line 1388
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1389
    invoke-direct {p0, v0, v3, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZLandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 1390
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 1391
    invoke-virtual {p0, p2, v4, p3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1392
    if-gez v1, :cond_3

    move p1, v2

    .line 1396
    goto :goto_0

    .line 1387
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1398
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1399
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->a(I)V

    .line 1403
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I

    goto :goto_0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    .line 408
    if-nez v0, :cond_1

    .line 409
    const/4 v0, 0x0

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 412
    sub-int v1, p1, v1

    .line 413
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 414
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 420
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 8

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 537
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-eq v0, v2, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 721
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 547
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput-boolean v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 550
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()V

    .line 552
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()Landroid/view/View;

    move-result-object v0

    .line 553
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v3, :cond_9

    .line 555
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 556
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 559
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 584
    :cond_4
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I

    if-ltz v0, :cond_b

    move v0, v1

    :goto_2
    iput v0, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aput v7, v0, v7

    .line 587
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aput v7, v0, v1

    .line 588
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V

    .line 589
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v0, v0, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 590
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    add-int/2addr v3, v0

    .line 591
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:[I

    aget v0, v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 592
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->g()I

    move-result v4

    add-int/2addr v0, v4

    .line 593
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    if-eq v4, v2, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 598
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    .line 599
    if-eqz v4, :cond_5

    .line 602
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v5, :cond_c

    .line 603
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/k;->d()I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 604
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    .line 605
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    sub-int/2addr v4, v5

    .line 611
    :goto_3
    if-lez v4, :cond_d

    .line 612
    add-int/2addr v3, v4

    .line 621
    :cond_5
    :goto_4
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v4, :cond_e

    .line 622
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_6

    move v2, v1

    .line 629
    :cond_6
    :goto_5
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 630
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 631
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()Z

    move-result v4

    iput-boolean v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    .line 632
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v4

    iput-boolean v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:Z

    .line 635
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v7, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 636
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v2, :cond_f

    .line 638
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 639
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 640
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v2, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 641
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 642
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 643
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v3, :cond_7

    .line 644
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v3

    .line 647
    :cond_7
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 648
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 649
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 650
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 651
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v0, :cond_14

    .line 655
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 656
    invoke-direct {p0, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(II)V

    .line 657
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 658
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 659
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    :goto_6
    move v2, v3

    move v4, v0

    .line 691
    :goto_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_8

    .line 695
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_11

    .line 696
    invoke-direct {p0, v2, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v0

    .line 697
    add-int v1, v4, v0

    .line 698
    add-int/2addr v0, v2

    .line 699
    invoke-direct {p0, v1, p1, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v2

    .line 700
    add-int v4, v1, v2

    .line 701
    add-int/2addr v2, v0

    .line 711
    :cond_8
    :goto_8
    invoke-direct {p0, p1, p2, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 712
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 713
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->a()V

    .line 717
    :goto_9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    goto/16 :goto_0

    .line 560
    :cond_9
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 561
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->d()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 562
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 563
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->c()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 575
    :cond_a
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 584
    goto/16 :goto_2

    .line 607
    :cond_c
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 608
    invoke-virtual {v5}, Landroidx/recyclerview/widget/k;->c()I

    move-result v5

    sub-int/2addr v4, v5

    .line 609
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    sub-int v4, v5, v4

    goto/16 :goto_3

    .line 614
    :cond_d
    sub-int/2addr v0, v4

    goto/16 :goto_4

    .line 625
    :cond_e
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-nez v4, :cond_6

    move v2, v1

    goto/16 :goto_5

    .line 663
    :cond_f
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 664
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 665
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 666
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 667
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 668
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v4, :cond_10

    .line 669
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    .line 672
    :cond_10
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 673
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 674
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 675
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v3, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 676
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 678
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-lez v4, :cond_13

    .line 679
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 681
    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    .line 682
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 683
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    .line 684
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    move v2, v0

    move v4, v3

    goto/16 :goto_7

    .line 703
    :cond_11
    invoke-direct {p0, v4, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v0

    .line 704
    add-int v1, v4, v0

    .line 705
    add-int/2addr v0, v2

    .line 706
    invoke-direct {p0, v0, p1, p2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)I

    move-result v2

    .line 707
    add-int v4, v1, v2

    .line 708
    add-int/2addr v2, v0

    goto/16 :goto_8

    .line 715
    :cond_12
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    goto/16 :goto_9

    :cond_13
    move v2, v0

    move v4, v3

    goto/16 :goto_7

    :cond_14
    move v0, v2

    goto/16 :goto_6
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 2150
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 510
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v2

    if-nez v2, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 518
    :goto_0
    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    .line 514
    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    .line 515
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    .line 516
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 518
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$d;)V

    .line 274
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>()V

    .line 256
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    if-lez v1, :cond_2

    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()V

    .line 258
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    .line 259
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:Z

    .line 260
    if-eqz v1, :cond_1

    .line 261
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P()Landroid/view/View;

    move-result-object v1

    .line 262
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 263
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    .line 264
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O()Landroid/view/View;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->a:I

    .line 268
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 269
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b()V

    goto :goto_0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 1070
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->l:I

    .line 1071
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->m:I

    .line 1072
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b()V

    .line 1075
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q()V

    .line 1076
    return-void
.end method

.method f(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1716
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1749
    :cond_0
    :goto_0
    return v0

    .line 1718
    :sswitch_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-eq v1, v2, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1721
    goto :goto_0

    .line 1726
    :sswitch_1
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 1727
    goto :goto_0

    .line 1728
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1731
    goto :goto_0

    .line 1734
    :sswitch_2
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1737
    :sswitch_3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1740
    :sswitch_4
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1743
    :sswitch_5
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 1716
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 303
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method protected i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1036
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->v()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()Landroidx/recyclerview/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->a:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 1043
    :cond_0
    return-void
.end method

.method k()Landroidx/recyclerview/widget/LinearLayoutManager$c;
    .locals 1

    .prologue
    .line 1051
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->e:Z

    return v0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1271
    :goto_0
    return v0

    .line 1272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1700
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1701
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->z()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1702
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1700
    :goto_0
    return v0

    .line 1702
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1923
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1924
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public p()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1963
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1964
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
