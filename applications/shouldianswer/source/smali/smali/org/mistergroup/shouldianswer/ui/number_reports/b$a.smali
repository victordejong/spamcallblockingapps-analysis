.class final Lorg/mistergroup/shouldianswer/ui/number_reports/b$a;
.super Ljava/lang/Object;
.source "ItemAppPromoHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/b;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/number_reports/b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/b;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b$a;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b$a;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->a()Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->b()Lkotlin/e/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/e/a/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
