.class final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e$1;
.super Ljava/lang/Object;
.source "NumberReportsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e$1;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e$1;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void
.end method
