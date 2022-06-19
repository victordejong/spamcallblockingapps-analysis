.class final Landroidx/media2/widget/f$a$c;
.super Landroidx/media2/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/f$a;


# direct methods
.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1209
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/f$a$c;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1213
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/f$a$c;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1216
    iput-object p1, p0, Landroidx/media2/widget/f$a$c;->a:Landroidx/media2/widget/f$a;

    .line 1217
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/widget/b;)V
    .locals 2

    .line 1221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2159
    iget-boolean v0, p1, Landroidx/media2/widget/b;->g:Z

    if-eqz v0, :cond_0

    .line 1223
    iget v0, p1, Landroidx/media2/widget/b;->b:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$c;->a(I)V

    .line 3150
    :cond_0
    iget-boolean v0, p1, Landroidx/media2/widget/b;->h:Z

    if-eqz v0, :cond_1

    .line 1226
    iget v0, p1, Landroidx/media2/widget/b;->c:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$c;->setBackgroundColor(I)V

    .line 3168
    :cond_1
    iget-boolean v0, p1, Landroidx/media2/widget/b;->i:Z

    if-eqz v0, :cond_2

    .line 1229
    iget v0, p1, Landroidx/media2/widget/b;->d:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$c;->b(I)V

    .line 3177
    :cond_2
    iget-boolean v0, p1, Landroidx/media2/widget/b;->j:Z

    if-eqz v0, :cond_3

    .line 1232
    iget v0, p1, Landroidx/media2/widget/b;->e:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$c;->c(I)V

    .line 3195
    :cond_3
    iget-object p1, p1, Landroidx/media2/widget/b;->k:Landroid/graphics/Typeface;

    .line 1235
    invoke-virtual {p0, p1}, Landroidx/media2/widget/f$a$c;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
