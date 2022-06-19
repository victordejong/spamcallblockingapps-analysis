.class public final Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->R(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;->a:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;->b:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D(Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
