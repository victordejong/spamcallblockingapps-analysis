.class public final synthetic Lv01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iput-object p2, p0, Lv01;->b:Ljava/util/List;

    iput-object p3, p0, Lv01;->c:Ljava/lang/Object;

    iput-object p4, p0, Lv01;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lv01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iget-object v1, p0, Lv01;->b:Ljava/util/List;

    iget-object v2, p0, Lv01;->c:Ljava/lang/Object;

    iget-object v3, p0, Lv01;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->R(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
