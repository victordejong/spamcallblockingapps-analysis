.class public final Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;
.super Landroidx/lifecycle/u;
.source "ReportSafeNumberViewModel.kt"


# instance fields
.field public a:Lorg/mistergroup/shouldianswer/model/NumberReport;

.field private b:Lorg/mistergroup/shouldianswer/model/NumberReport$c;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 8
    new-instance v7, Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V

    iput-object v7, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b:Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b:Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->a:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->a:Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-nez v0, :cond_0

    const-string v1, "numberReport"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b:Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    return-object v0
.end method
