.class public final synthetic Lg31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg31;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    iput-object p2, p0, Lg31;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lg31;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    iget-object v1, p0, Lg31;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->S(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
