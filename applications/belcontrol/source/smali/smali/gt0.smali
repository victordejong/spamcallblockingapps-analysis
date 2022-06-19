.class public final synthetic Lgt0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgt0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iput p2, p0, Lgt0;->b:I

    iput-boolean p3, p0, Lgt0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgt0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget v1, p0, Lgt0;->b:I

    iget-boolean v2, p0, Lgt0;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->u(IZ)V

    return-void
.end method
