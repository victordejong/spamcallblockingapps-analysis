.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    return-void
.end method
