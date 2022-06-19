.class public final synthetic Lw21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;ZILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;

    iput-boolean p2, p0, Lw21;->b:Z

    iput p3, p0, Lw21;->c:I

    iput-object p4, p0, Lw21;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lw21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;

    iget-boolean v1, p0, Lw21;->b:Z

    iget v2, p0, Lw21;->c:I

    iget-object v3, p0, Lw21;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->P(ZILjava/util/List;)V

    return-void
.end method
