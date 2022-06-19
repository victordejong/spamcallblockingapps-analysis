.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$2;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    :try_start_0
    new-instance v0, Lc71;

    invoke-direct {v0}, Lc71;-><init>()V

    iput-object p3, v0, Lc71;->b:Li91;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, v0, Lc71;->c:I

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, v0, Lc71;->d:I

    invoke-static {v0}, Lk61;->s(Lc71;)Lc71;

    iget-object p3, v0, Lc71;->a:Lc71$c;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_0
    return-void
.end method
