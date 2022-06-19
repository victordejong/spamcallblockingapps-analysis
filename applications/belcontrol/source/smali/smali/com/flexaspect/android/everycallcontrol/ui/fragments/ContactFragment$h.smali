.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;
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

.field public final synthetic b:Z

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;La81$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->a:La81$a;

    iput-boolean p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->a:La81$a;

    invoke-virtual {v0}, La81$a;->a()Li91;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h;->b:Z

    invoke-static {p1, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Li91;Z)V

    return-void
.end method
