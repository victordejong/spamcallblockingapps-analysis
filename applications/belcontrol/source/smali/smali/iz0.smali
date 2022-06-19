.class public final synthetic Liz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$d;

.field public final synthetic b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$d;Lcom/kedlin/cca/ui/RedeemCodeEditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$d;

    iput-object p2, p0, Liz0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iput-object p3, p0, Liz0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Liz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$d;

    iget-object v1, p0, Liz0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iget-object v2, p0, Liz0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$d;->c(Lcom/kedlin/cca/ui/RedeemCodeEditText;Ljava/lang/String;)V

    return-void
.end method
