.class public final Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "DebugFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->b:Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 11

    const-string p2, ""

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "uri"

    .line 39
    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "uri.pathSegments[1]"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "uri.pathSegments[2]"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    move-object v1, p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 45
    :goto_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    move-object p1, p2

    .line 47
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x533a80d4

    const-string v9, "context!!"

    const/4 v10, 0x0

    if-eq v0, v2, :cond_5

    const v2, 0x589895c

    if-eq v0, v2, :cond_3

    const v2, 0x12b349f4

    if-eq v0, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "forcenumber"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "0"

    .line 49
    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/c;->c(Ljava/lang/String;)V

    const-string p2, "Funkce zrusena!"

    goto/16 :goto_5

    .line 53
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/c;->c(Ljava/lang/String;)V

    const-string p2, "Cislo nastaveno!"

    goto/16 :goto_5

    :cond_3
    const-string p2, "alert"

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 58
    new-instance p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 59
    sget-object v0, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-static {v2, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2, v10}, Lorg/mistergroup/shouldianswer/b/h$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V

    const-string p2, "Alert vyvol\u00e1n!"

    goto :goto_5

    :cond_5
    const-string p2, "banner"

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 64
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->values()[Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    move-result-object p2

    .line 89
    array-length v0, p2

    move v2, v10

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v3, p2, v2

    .line 65
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->a()I

    move-result v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 66
    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    goto :goto_3

    .line 68
    :cond_6
    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v4, v3, v10}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 71
    :cond_7
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_8
    invoke-static {v0, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->b(Landroid/content/Context;)V

    :cond_9
    :goto_4
    const-string p2, "Unknown command"

    .line 74
    :goto_5
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->c:Lorg/mistergroup/shouldianswer/a/k;

    if-nez v0, :cond_a

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/k;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvInfo"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parameter:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0022

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/k;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->c:Lorg/mistergroup/shouldianswer/a/k;

    .line 28
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/debug/DebugFragment;->c:Lorg/mistergroup/shouldianswer/a/k;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/k;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
