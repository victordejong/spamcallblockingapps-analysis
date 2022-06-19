.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$e;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$e;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 640
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "InCallActivity.theme"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 641
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->u()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 643
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/model/ai;->c(I)V

    .line 644
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$e;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->D(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    return-void
.end method
