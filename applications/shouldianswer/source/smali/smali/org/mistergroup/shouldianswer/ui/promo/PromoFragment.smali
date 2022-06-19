.class public final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "PromoFragment.kt"

# interfaces
.implements Lcom/android/billingclient/api/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

# The value of this static final field might be set in the static constructor
.field private static final l:Ljava/lang/String; = "sub_tier_1"

# The value of this static final field might be set in the static constructor
.field private static final m:Ljava/lang/String; = "sub_tier_2"

# The value of this static final field might be set in the static constructor
.field private static final n:Ljava/lang/String; = "sub_tier_3"


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/bk;

.field private d:Lcom/android/billingclient/api/b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    const-string v0, "sub_tier_1"

    .line 294
    sput-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->l:Ljava/lang/String;

    const-string v0, "sub_tier_2"

    .line 295
    sput-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->m:Ljava/lang/String;

    const-string v0, "sub_tier_3"

    .line 296
    sput-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->i:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->j:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->f:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->f:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->g:Z

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->h:Z

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->g:Z

    return p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->h:Z

    return p0
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Lcom/android/billingclient/api/b;
    .locals 1

    .line 29
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d:Lcom/android/billingclient/api/b;

    if-nez p0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic g()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic i()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/f;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 247
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/f;

    .line 249
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promo.onPurchasesUpdated purchase.sku="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 254
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string p2, "Promo.onPurchasesUpdated canceled by user"

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Promo.onPurchasesUpdated canceled due error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "skuId"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/e;->i()Lcom/android/billingclient/api/e$a;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/e$a;->a(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;

    move-result-object p1

    const-string v0, "inapp"

    .line 237
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/e$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/android/billingclient/api/e$a;->a()Lcom/android/billingclient/api/e;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d:Lcom/android/billingclient/api/b;

    if-nez v0, :cond_0

    const-string v1, "billingClient"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/b;->a(Landroid/app/Activity;Lcom/android/billingclient/api/e;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->o:Landroid/widget/LinearLayout;

    const-string v1, "binding.llPanel"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->h:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$b;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->i:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->k:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$f;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->j:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$g;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->m:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$h;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->d:Landroid/widget/Button;

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->e:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$j;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->l:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$k;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/android/billingclient/api/b;->a(Landroid/content/Context;)Lcom/android/billingclient/api/b$a;

    move-result-object p2

    move-object v1, p0

    check-cast v1, Lcom/android/billingclient/api/g;

    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/b$a;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/b$a;->a()Lcom/android/billingclient/api/b;

    move-result-object p2

    const-string v1, "BillingClient.newBuilder\u2026setListener(this).build()"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d:Lcom/android/billingclient/api/b;

    .line 104
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d:Lcom/android/billingclient/api/b;

    if-nez p2, :cond_9

    const-string v1, "billingClient"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V

    check-cast v1, Lcom/android/billingclient/api/d;

    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/d;)V

    .line 146
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->i:Landroid/widget/Button;

    const-string v1, "binding.buttonDonationBronze"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->k:Landroid/widget/Button;

    const-string v2, "binding.buttonDonationSilver"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->j:Landroid/widget/Button;

    const-string v2, "binding.buttonDonationGold"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->f:Landroid/widget/ImageButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$c;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p2, :cond_e

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bk;->g:Landroid/widget/ImageButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$d;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bk;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final d()V
    .locals 7

    .line 160
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public final e()V
    .locals 13

    const-string v0, "binding.buttonDonationGold"

    const-string v1, "binding.buttonDonationSilver"

    const-string v2, "binding.buttonDonationBronze"

    .line 210
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "binding"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/bk;->i:Landroid/widget/Button;

    invoke-static {v3, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/bk;->k:Landroid/widget/Button;

    invoke-static {v3, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/bk;->j:Landroid/widget/Button;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    if-eqz v5, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    if-eqz v3, :cond_c

    .line 215
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v3, :cond_6

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/bk;->i:Landroid/widget/Button;

    invoke-static {v3, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "java.lang.String.format(format, *args)"

    const/4 v6, 0x1

    const-string v8, "getString(R.string.subscribe)"

    const v9, 0x7f1001f6

    const v10, 0x7f10021f

    if-eqz v2, :cond_7

    :try_start_2
    invoke-virtual {p0, v10}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    sget-object v2, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    .line 216
    invoke-virtual {p0, v9}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v11, v6, [Ljava/lang/Object;

    .line 217
    iget-object v12, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->i:Ljava/lang/String;

    aput-object v12, v11, v7

    .line 215
    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v2, :cond_8

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/bk;->k:Landroid/widget/Button;

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->g:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0, v10}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_9
    sget-object v1, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    .line 220
    invoke-virtual {p0, v9}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    .line 221
    iget-object v11, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->j:Ljava/lang/String;

    aput-object v11, v3, v7

    .line 219
    array-length v11, v3

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez v1, :cond_a

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/bk;->j:Landroid/widget/Button;

    invoke-static {v1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->h:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, v10}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_b
    sget-object v0, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    .line 224
    invoke-virtual {p0, v9}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->k:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 223
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 229
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final f()V
    .locals 4

    const v0, 0x7f10008e

    .line 284
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.app_name)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 286
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "org.mistergroup.shouldianswer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&referrer=utm_source=sian_share&utm_medium=sian_share&utm_campaign=sian_share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 288
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 289
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f100043

    .line 290
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0052

    const/4 v0, 0x0

    .line 43
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bk;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c:Lorg/mistergroup/shouldianswer/a/bk;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/bk;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 265
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d()V

    :cond_0
    return-void
.end method
