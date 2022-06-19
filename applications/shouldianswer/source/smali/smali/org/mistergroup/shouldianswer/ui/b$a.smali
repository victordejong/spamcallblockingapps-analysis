.class final Lorg/mistergroup/shouldianswer/ui/b$a;
.super Ljava/lang/Object;
.source "BaseActivityToolbarFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/b;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/b;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/b$a;->a:Lorg/mistergroup/shouldianswer/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b$a;->a:Lorg/mistergroup/shouldianswer/ui/b;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->a(Landroid/view/View;)V

    return-void
.end method
