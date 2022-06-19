.class public final Lorg/mistergroup/shouldianswer/ui/main/a/a;
.super Lorg/mistergroup/shouldianswer/ui/main/d;
.source "ContactsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/a/s;

.field private b:Lorg/mistergroup/shouldianswer/ui/main/a;

.field private c:Lorg/mistergroup/shouldianswer/components/a/e;

.field private d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:Z

.field private f:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/widget/AppCompatTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->e:Z

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/a/a;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->f:I

    return p0
.end method

.method private final a(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/a/a;I)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->f:I

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/a/a;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->e:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Lorg/mistergroup/shouldianswer/components/a/e;
    .locals 1

    .line 39
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez p0, :cond_0

    const-string v0, "contactsAdapter"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 39
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p0, :cond_0

    const-string v0, "layoutManager"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final e()V
    .locals 3

    .line 302
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a:Lorg/mistergroup/shouldianswer/a/s;

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvA"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 304
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvB"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 305
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->k:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvC"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 306
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvD"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 307
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->m:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvE"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 308
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->n:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvF"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 309
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvG"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 310
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvH"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 311
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvI"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 312
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvJ"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 313
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvK"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 314
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvL"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 315
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->u:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvM"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 316
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvN"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 317
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvO"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 318
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvP"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 319
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->y:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvQ"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 320
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->z:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvR"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 321
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvS"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 322
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->B:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvT"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 323
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvU"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 324
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvV"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 325
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->E:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvW"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 326
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->F:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvX"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 327
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/a/s;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvY"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 328
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/s;->H:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvZ"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Landroidx/appcompat/widget/AppCompatTextView;)V

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->e:Z

    return p0
.end method


# virtual methods
.method public c()V
    .locals 10

    const-string v0, "binding.listView"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v3

    .line 78
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a:Lorg/mistergroup/shouldianswer/a/s;

    if-nez v3, :cond_1

    .line 80
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "ContactsFragment.init mainActivity is null,skipping!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    if-nez v4, :cond_2

    .line 84
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "ContactsFragment.init binding is null,skipping!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 87
    :cond_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "ContactsFragment.init"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 88
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->m()Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v3

    .line 89
    iput-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    .line 90
    new-instance v5, Lorg/mistergroup/shouldianswer/components/a/e;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->b()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/mistergroup/shouldianswer/components/a/e;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    .line 91
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "contactsAdapter"

    if-nez v5, :cond_3

    :try_start_1
    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/components/a/e;->a()Lorg/mistergroup/shouldianswer/components/a/e$a;

    move-result-object v5

    new-instance v7, Lorg/mistergroup/shouldianswer/ui/main/a/a$b;

    invoke-direct {v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V

    check-cast v7, Ljava/util/Observer;

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/components/a/e$a;->addObserver(Ljava/util/Observer;)V

    .line 94
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v5, :cond_4

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    sget-object v7, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ai;->I()Z

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Z)V

    .line 95
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v5, :cond_5

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/components/a/e;->e(Z)V

    .line 96
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v5, :cond_6

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    new-instance v8, Lorg/mistergroup/shouldianswer/ui/main/a/a$c;

    invoke-direct {v8, p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V

    check-cast v8, Lkotlin/e/a/b;

    invoke-virtual {v5, v8}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lkotlin/e/a/b;)V

    .line 99
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v5, :cond_7

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    new-instance v8, Lorg/mistergroup/shouldianswer/ui/main/a/a$d;

    invoke-direct {v8, v3}, Lorg/mistergroup/shouldianswer/ui/main/a/a$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a;)V

    check-cast v8, Lkotlin/e/a/m;

    invoke-virtual {v5, v8}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lkotlin/e/a/m;)V

    .line 110
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getActivity()Landroidx/fragment/app/c;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-direct {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    iget-object v5, v4, Lorg/mistergroup/shouldianswer/a/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v8, :cond_8

    const-string v9, "layoutManager"

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 112
    iget-object v5, v4, Lorg/mistergroup/shouldianswer/a/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v0, :cond_9

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 113
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->registerForContextMenu(Landroid/view/View;)V

    .line 114
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, p0

    check-cast v5, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 115
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->e()V

    int-to-float v0, v7

    .line 116
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "resources"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/16 v6, 0xa0

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v0, v5

    .line 118
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_a
    invoke-direct {v5, p0, v6}, Lorg/mistergroup/shouldianswer/ui/main/a/a$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;Landroid/content/Context;)V

    .line 124
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_b
    const-string v9, "context!!"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f040094

    invoke-virtual {v6, v8, v9}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result v6

    .line 125
    iget-object v8, v4, Lorg/mistergroup/shouldianswer/a/s;->e:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;

    invoke-direct {v9, p0, v0, v5, v6}, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;FLorg/mistergroup/shouldianswer/ui/main/a/a$h;I)V

    check-cast v9, Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/s;->c:Landroid/widget/Button;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/a/a$f;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget-object v0, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/k;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;

    invoke-direct {v5, p0, v3}, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;Lorg/mistergroup/shouldianswer/ui/main/a;)V

    check-cast v5, Landroidx/lifecycle/q;

    invoke-virtual {v0, v4, v5}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 233
    invoke-virtual {p0, v7}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 8

    .line 240
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-eqz v0, :cond_5

    .line 241
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a:Lorg/mistergroup/shouldianswer/a/s;

    if-eqz v1, :cond_5

    .line 242
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c:Lorg/mistergroup/shouldianswer/components/a/e;

    if-nez v2, :cond_0

    const-string v3, "contactsAdapter"

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/a/e;->f()Z

    move-result v2

    .line 243
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 244
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v3

    .line 245
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "ContactsFragment.updateUI - invalidating ContactsLiveData due fixed permissions"

    invoke-static {v4, v7, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 247
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ad;->d()V

    .line 249
    :cond_1
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/a/s;->f:Landroid/widget/LinearLayout;

    const-string v5, "binding.llLoadingData"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/a/s;->g:Landroid/widget/LinearLayout;

    const-string v7, "binding.llNoItems"

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/s;->h:Landroid/widget/LinearLayout;

    const-string v1, "binding.llNoPermissions"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    nop

    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "ContactsFragment.onActivityCreated"

    invoke-static {p1, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->b()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onAttach(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "ContactsFragment.onAttach"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 64
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 267
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/a;->f()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 268
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 269
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/a/a$a;->values()[Lorg/mistergroup/shouldianswer/ui/main/a/a$a;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    aget-object p1, v4, p1

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/main/a/b;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a$a;->ordinal()I

    move-result p1

    aget p1, v4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, v0, :cond_6

    const-string v4, "it"

    if-eq p1, v1, :cond_5

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 284
    :try_start_1
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getActivity()Landroidx/fragment/app/c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    const-string v4, "activity!!"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 281
    :cond_3
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v2, p1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 277
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_5
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/mistergroup/shouldianswer/model/ac;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 271
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->a()Landroid/content/ClipboardManager;

    move-result-object p1

    const-string v2, "phone number"

    .line 272
    check-cast v2, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 273
    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v1, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x7f0e0000

    .line 332
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a003e

    .line 333
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 334
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->I()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 336
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/a/a$i;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a$i;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0a003d

    .line 344
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0a0039

    .line 345
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0a003b

    .line 346
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f0a003c

    .line 347
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0a003a

    .line 348
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0034

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/s;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a:Lorg/mistergroup/shouldianswer/a/s;

    .line 52
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a:Lorg/mistergroup/shouldianswer/a/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/s;->d()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 257
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;->onResume()V

    .line 258
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsFragment.setUserVisibleHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->setUserVisibleHint(Z)V

    .line 70
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V

    :cond_0
    return-void
.end method
