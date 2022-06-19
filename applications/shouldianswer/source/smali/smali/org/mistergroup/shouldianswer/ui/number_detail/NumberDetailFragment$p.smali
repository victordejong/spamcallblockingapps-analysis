.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;->c:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 191
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
