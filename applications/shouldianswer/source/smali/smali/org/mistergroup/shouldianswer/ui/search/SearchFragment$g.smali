.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;
.super Lkotlin/e/b/i;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/ui/search/d;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 3

    const-string v0, "searchItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->j()Lorg/mistergroup/shouldianswer/ui/search/d$a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/search/c;->a:[I

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/search/d$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "context!!"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->f()Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&src=sian&countryOperator="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 180
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.dir/contact"

    .line 181
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phone"

    .line 182
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 173
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    .line 174
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void

    .line 165
    :cond_4
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->a()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 166
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    .line 167
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    :cond_6
    :goto_0
    return-void
.end method
