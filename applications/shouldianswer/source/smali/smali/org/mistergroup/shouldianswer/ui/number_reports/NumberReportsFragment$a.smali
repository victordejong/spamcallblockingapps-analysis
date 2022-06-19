.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;
.super Ljava/lang/Object;
.source "NumberReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public final a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberInfo"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    move-object v1, p0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;

    invoke-virtual {v1, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
