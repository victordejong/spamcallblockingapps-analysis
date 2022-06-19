.class public Llp0$a;
.super Ltp0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llp0;


# direct methods
.method public constructor <init>(Llp0;)V
    .locals 0

    iput-object p1, p0, Llp0$a;->a:Llp0;

    invoke-direct {p0}, Ltp0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/os/Bundle;I)V
    .locals 1

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d()Lxp0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxp0;->c(Landroid/os/Bundle;)Lyp0$b;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FJD.ExternalReceiver"

    const-string p2, "jobFinished: unknown invocation provided"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Llp0$a;->a:Llp0;

    invoke-virtual {p1}, Lyp0$b;->l()Lyp0;

    move-result-object p1

    invoke-static {v0, p1, p2}, Llp0;->a(Llp0;Lyp0;I)V

    return-void
.end method
