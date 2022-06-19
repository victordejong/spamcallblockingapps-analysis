.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$n;
.super Ljava/lang/Object;
.source "InCallActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$n;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 600
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "InCallActivity.butAddCall click"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 601
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$n;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->b(Landroid/content/Context;)V

    return-void
.end method
