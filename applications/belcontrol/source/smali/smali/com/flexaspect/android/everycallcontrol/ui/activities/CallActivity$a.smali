.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110190

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p2, v0, p1}, Lf61;->m(Landroid/telecom/Call;Ljava/lang/String;)V

    return-void
.end method
