.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;
.super Ljava/lang/Object;
.source "NumberDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;->c:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    :try_start_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "NumberDetailActivity.onSMS"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
