.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment$a;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;->Y(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
