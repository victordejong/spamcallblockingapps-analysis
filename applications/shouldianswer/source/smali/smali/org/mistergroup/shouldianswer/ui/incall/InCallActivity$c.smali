.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;
.super Ljava/lang/Object;
.source "InCallActivity.kt"

# interfaces
.implements Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 618
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    return-void
.end method

.method public a(C)V
    .locals 1

    .line 611
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 612
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/telecom/Call;->playDtmfTone(C)V

    return-void
.end method
