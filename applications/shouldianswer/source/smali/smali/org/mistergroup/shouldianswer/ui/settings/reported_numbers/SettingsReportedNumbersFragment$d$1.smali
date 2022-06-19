.class final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;
.super Ljava/lang/Object;
.source "SettingsReportedNumbersFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;

.field final synthetic b:Lorg/mistergroup/shouldianswer/a/eg;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;Lorg/mistergroup/shouldianswer/a/eg;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;->b:Lorg/mistergroup/shouldianswer/a/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 63
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;->b:Lorg/mistergroup/shouldianswer/a/eg;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eg;->c:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v0, "binding.editCaption"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "text"

    .line 64
    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    .line 70
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
