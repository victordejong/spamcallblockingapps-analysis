.class public final synthetic Lk21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iput-object p2, p0, Lk21;->b:Ljava/util/List;

    iput p3, p0, Lk21;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iget-object v1, p0, Lk21;->b:Ljava/util/List;

    iget v2, p0, Lk21;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->m0(Ljava/util/List;I)V

    return-void
.end method
