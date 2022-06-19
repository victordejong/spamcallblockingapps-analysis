.class public final synthetic Lev0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;

.field public final synthetic b:I

.field public final synthetic c:Lkq0;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;ILkq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lev0;->a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;

    iput p2, p0, Lev0;->b:I

    iput-object p3, p0, Lev0;->c:Lkq0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lev0;->a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;

    iget v1, p0, Lev0;->b:I

    iget-object v2, p0, Lev0;->c:Lkq0;

    invoke-virtual {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->L(ILkq0;)V

    return-void
.end method
