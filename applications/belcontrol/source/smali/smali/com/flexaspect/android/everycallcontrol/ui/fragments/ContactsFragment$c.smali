.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->n0(ILq81;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;Lq71$g;Li91;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq71$g;

.field public final synthetic b:Li91;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Li91;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->a:Lq71$g;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->b:Li91;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->a:Lq71$g;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->b:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->c:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    return-void
.end method
