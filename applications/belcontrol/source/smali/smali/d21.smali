.class public final synthetic Ld21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

.field public final synthetic b:Lkq0;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iput-object p2, p0, Ld21;->b:Lkq0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iget-object v1, p0, Ld21;->b:Lkq0;

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->w0(Lkq0;)V

    return-void
.end method
