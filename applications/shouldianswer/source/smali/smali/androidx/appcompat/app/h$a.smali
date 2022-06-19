.class Landroidx/appcompat/app/h$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 3065
    iput-object p1, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 3071
    invoke-virtual {p0}, Landroidx/appcompat/app/h$a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroidx/appcompat/a$a;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    .line 3070
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/as;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/as;

    move-result-object v0

    .line 3072
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/as;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3073
    invoke-virtual {v0}, Landroidx/appcompat/widget/as;->a()V

    return-object v1
.end method

.method public a(I)V
    .locals 1

    .line 3099
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3101
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 3090
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3092
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 3093
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/a;->a(I)V

    :cond_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 3079
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->o()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 3084
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3085
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
