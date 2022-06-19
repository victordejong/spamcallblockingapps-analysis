.class public abstract Lcom/callcontrol/util/job/ScheduledJob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callcontrol/util/job/ScheduledJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lvp0$b;

.field public b:Lmp0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callcontrol/util/job/ScheduledJob$a;

    invoke-direct {v0}, Lcom/callcontrol/util/job/ScheduledJob$a;-><init>()V

    sput-object v0, Lcom/callcontrol/util/job/ScheduledJob;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callcontrol/util/job/ScheduledJob;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmp0;

    new-instance v1, Lop0;

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lop0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lmp0;-><init>(Lkp0;)V

    iput-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->b:Lmp0;

    invoke-virtual {v0}, Lmp0;->c()Lvp0$b;

    move-result-object v0

    const-class v1, Lcom/callcontrol/util/job/CCScheduler;

    invoke-virtual {v0, v1}, Lvp0$b;->t(Ljava/lang/Class;)Lvp0$b;

    invoke-virtual {v0, p1}, Lvp0$b;->u(Ljava/lang/String;)Lvp0$b;

    iput-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->a:Lvp0$b;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/callcontrol/util/job/ScheduledJob;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/callcontrol/util/job/ScheduledJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "._job_instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/callcontrol/util/job/ScheduledJob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lkm1;->c([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callcontrol/util/job/ScheduledJob;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->b:Lmp0;

    invoke-virtual {v0}, Lmp0;->a()I

    return-void
.end method

.method public abstract c(Lzp0;)V
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->a:Lvp0$b;

    invoke-virtual {v0}, Lvp0$b;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/callcontrol/util/job/ScheduledJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "._job_instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lkm1;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/callcontrol/util/job/ScheduledJob;->a:Lvp0$b;

    invoke-virtual {v1, v0}, Lvp0$b;->q(Landroid/os/Bundle;)Lvp0$b;

    iget-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->b:Lmp0;

    iget-object v1, p0, Lcom/callcontrol/util/job/ScheduledJob;->a:Lvp0$b;

    invoke-virtual {v1}, Lvp0$b;->p()Lvp0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmp0;->b(Lvp0;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lcom/callcontrol/util/job/ScheduledJob;->a:Lvp0$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvp0$b;->r(Z)Lvp0$b;

    invoke-static {p1, p1}, Lfq0;->b(II)Lbq0$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvp0$b;->v(Lbq0;)Lvp0$b;

    invoke-virtual {p0}, Lcom/callcontrol/util/job/ScheduledJob;->d()V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
