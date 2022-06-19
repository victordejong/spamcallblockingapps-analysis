.class final Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;
.super Ljava/lang/Object;
.source "ReportSafeNumberFragment.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lkotlin/e/a/m;


# direct methods
.method constructor <init>(Lkotlin/e/a/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;->a:Lkotlin/e/a/m;

    return-void
.end method


# virtual methods
.method public final synthetic onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;->a:Lkotlin/e/a/m;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invoke(...)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
