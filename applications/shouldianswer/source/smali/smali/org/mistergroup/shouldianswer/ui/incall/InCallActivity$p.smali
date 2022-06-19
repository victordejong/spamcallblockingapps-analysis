.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;
.super Ljava/lang/Object;
.source "InCallActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 251
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InCallActivity.onSelectPhoneAccountState phoneAccountSelected to which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 252
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 254
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
