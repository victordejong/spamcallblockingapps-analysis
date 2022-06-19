.class public Lcom/kedlin/cca/ui/CallScreenLayout$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->B0(Lg61;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:J

.field public final synthetic c:Lg61;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic f:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;JLg61;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    iput-wide p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->b:J

    iput-object p4, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->c:Lg61;

    iput-object p5, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    iget-wide v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kedlin/cca/ui/CallScreenLayout;->l(Lcom/kedlin/cca/ui/CallScreenLayout;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->c:Lg61;

    iget-object v1, v1, Lg61;->b:Lg61$c;

    sget-object v2, Lg61$c;->h:Lg61$c;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11016f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->a:J

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$e;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->m(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
