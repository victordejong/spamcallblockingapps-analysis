.class public final Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f;->a(Landroid/content/Context;Li91;Ljava/lang/String;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lx81;

.field public final synthetic d:Li91;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lx81;Li91;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->c:Lx81;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->d:Li91;

    iput-object p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->a:Landroid/content/Context;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-string p2, "BLOCKED_LIST_FULL"

    invoke-static {p1, p2}, Loe1;->l0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->c:Lx81;

    const-class p2, Lq71$e;

    invoke-static {p2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p1, Lx81;->j:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->c:Lx81;

    sget-object p2, Lq71$g;->c:Lq71$g;

    iput-object p2, p1, Lx81;->l:Lq71$g;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->d:Li91;

    iput-object p2, p1, Lx81;->g:Li91;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->f:Ljava/lang/String;

    iput-object p2, p1, Lx81;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lx81;->z()Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
