.class final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;
.super Ljava/lang/Object;
.source "SettingsAllowedNumbersFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d;

.field final synthetic b:Lorg/mistergroup/shouldianswer/a/de;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d;Lorg/mistergroup/shouldianswer/a/de;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;->b:Lorg/mistergroup/shouldianswer/a/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 61
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;->b:Lorg/mistergroup/shouldianswer/a/de;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/de;->c:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v0, "binding.editCaption"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/i/g;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 63
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;

    const/4 v4, 0x0

    invoke-direct {v0, p2, v4, p0}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;-><init>(Ljava/util/List;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 82
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
