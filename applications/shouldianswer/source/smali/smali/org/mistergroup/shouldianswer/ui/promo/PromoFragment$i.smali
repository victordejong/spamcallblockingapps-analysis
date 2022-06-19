.class final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;
.super Ljava/lang/Object;
.source "PromoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$i;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->b(Z)V

    .line 89
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "Promo.disable"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    return-void
.end method
