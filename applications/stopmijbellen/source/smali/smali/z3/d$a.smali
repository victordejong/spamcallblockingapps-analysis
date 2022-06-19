.class public Lz3/d$a;
.super Le0/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz3/d;->c(Landroid/content/Context;Landroid/support/v4/media/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/a;

.field public final synthetic b:Lz3/d;


# direct methods
.method public constructor <init>(Lz3/d;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz3/d$a;->b:Lz3/d;

    iput-object p2, p0, Lz3/d$a;->a:Landroid/support/v4/media/a;

    invoke-direct {p0}, Le0/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/d$a;->b:Lz3/d;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lz3/d;->m:Z

    .line 3
    iget-object v0, p0, Lz3/d$a;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->A(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/d$a;->b:Lz3/d;

    iget v1, v0, Lz3/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lz3/d;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Lz3/d$a;->b:Lz3/d;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lz3/d;->m:Z

    .line 5
    iget-object v0, p0, Lz3/d$a;->a:Landroid/support/v4/media/a;

    .line 6
    iget-object p1, p1, Lz3/d;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/a;->B(Landroid/graphics/Typeface;Z)V

    return-void
.end method
