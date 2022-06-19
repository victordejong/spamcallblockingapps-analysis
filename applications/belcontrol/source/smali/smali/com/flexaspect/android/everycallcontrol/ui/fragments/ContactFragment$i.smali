.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La81$a;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;La81$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;->a:La81$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i;->a:La81$a;

    invoke-virtual {v0}, La81$a;->a()Li91;

    move-result-object v0

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
