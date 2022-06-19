.class public final synthetic Ll8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/l;->a:Ll8/w;

    iput-object p2, p0, Ll8/l;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Ll8/l;->a:Ll8/w;

    iget-object v0, p0, Ll8/l;->b:Landroid/view/View;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/o;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lk8/o;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 3
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    .line 4
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    :cond_1
    :goto_0
    return-void
.end method
