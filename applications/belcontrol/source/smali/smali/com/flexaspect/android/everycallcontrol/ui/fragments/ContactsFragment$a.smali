.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->Z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getRight()I

    move-result p2

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;->a:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    sget-object p2, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->g(Lsb1$c;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
