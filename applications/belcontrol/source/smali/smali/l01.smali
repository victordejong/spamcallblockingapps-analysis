.class public final synthetic Ll01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;

    iput-object p2, p0, Ll01;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll01;->c:Ljava/lang/Object;

    iput-object p4, p0, Ll01;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ll01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;

    iget-object v1, p0, Ll01;->b:Ljava/lang/Object;

    iget-object v2, p0, Ll01;->c:Ljava/lang/Object;

    iget-object v3, p0, Ll01;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;->O(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method
