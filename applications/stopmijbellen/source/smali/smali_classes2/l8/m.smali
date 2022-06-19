.class public final synthetic Ll8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:Lh8/u;

.field public final synthetic c:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Lh8/u;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/m;->a:Ll8/w;

    iput-object p2, p0, Ll8/m;->b:Lh8/u;

    iput-object p3, p0, Ll8/m;->c:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object v0, p0, Ll8/m;->a:Ll8/w;

    iget-object v1, p0, Ll8/m;->b:Lh8/u;

    iget-object v2, p0, Ll8/m;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, v1, Lh8/u;->e:I

    const/4 v3, 0x1

    .line 3
    iget-object v4, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v4, v0, Ll8/w;->c:I

    .line 5
    iput p1, v0, Ll8/w;->c:I

    .line 6
    invoke-virtual {v0, v3, p2}, Ll8/w;->l(IZ)V

    .line 7
    iput v4, v0, Ll8/w;->c:I

    .line 8
    :cond_2
    :goto_0
    iget-boolean p1, v1, Lh8/u;->d:Z

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_1
    return-void
.end method
