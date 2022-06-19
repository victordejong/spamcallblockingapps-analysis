.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm91$c;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lm91$c;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->a:Lm91$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->a:Lm91$c;

    sget-object v1, Lm91$c;->a:Lm91$c;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->v()Lsb1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsb1;->n(Z)V

    return-void

    :cond_0
    sget-object v1, Lm91$c;->c:Lm91$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->v()Lsb1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsb1;->n(Z)V

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Z)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    return-void
.end method
