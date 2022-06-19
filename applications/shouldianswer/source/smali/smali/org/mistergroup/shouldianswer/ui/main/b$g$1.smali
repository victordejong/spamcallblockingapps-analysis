.class final Lorg/mistergroup/shouldianswer/ui/main/b$g$1;
.super Ljava/lang/Object;
.source "MainBanners.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b$g;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b$g;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b$g;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 183
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$g;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/b$g;->c:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e()Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    move-result-object v0

    const v1, 0x80520

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    .line 184
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$g;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$g;->b:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b;->a()V

    return-void
.end method
