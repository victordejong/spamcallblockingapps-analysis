.class public final synthetic Ll8/j;
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

    iput-object p1, p0, Ll8/j;->a:Ll8/w;

    iput-object p2, p0, Ll8/j;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Ll8/j;->a:Ll8/w;

    iget-object v0, p0, Ll8/j;->b:Landroid/view/View;

    const/4 v1, 0x6

    .line 1
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    .line 2
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void
.end method
