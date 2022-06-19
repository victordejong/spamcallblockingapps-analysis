.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;
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
.field public final synthetic a:[La81$a;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;[La81$a;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->a:[La81$a;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->a:[La81$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, La81$a;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$n;->b:[I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$w;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
