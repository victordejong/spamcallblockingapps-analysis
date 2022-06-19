.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->L(IIIILjava/lang/String;Lr71$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->a:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    sget-object v0, Lq71$g;->c:Lq71$g;

    invoke-static {p1, v0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Lq71$g;Ljava/util/EnumSet;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Li91;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Li91;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    sget-object v0, Lq71$g;->b:Lq71$g;

    invoke-static {p1, v0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Lq71$g;Ljava/util/EnumSet;)Z

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    sget-object v0, Lq71$g;->a:Lq71$g;

    invoke-static {p1, v0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;Lq71$g;Ljava/util/EnumSet;)Z

    :cond_2
    return-void
.end method
