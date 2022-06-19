.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->finish()V

    return-void
.end method
