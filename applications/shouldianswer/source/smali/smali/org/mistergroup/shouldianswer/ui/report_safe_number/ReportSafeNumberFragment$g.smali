.class final Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;
.super Lkotlin/e/b/i;
.source "ReportSafeNumberFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/m<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;->a(Landroid/view/View;Z)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 89
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
