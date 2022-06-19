.class final Lorg/mistergroup/shouldianswer/ui/main/b$c;
.super Ljava/lang/Object;
.source "MainBanners.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/b$a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$c;->a:Lorg/mistergroup/shouldianswer/ui/main/b;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$c;->b:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$c;->a:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b;->a()V

    .line 45
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$c;->b:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e()Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$c;->b:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    return-void
.end method
