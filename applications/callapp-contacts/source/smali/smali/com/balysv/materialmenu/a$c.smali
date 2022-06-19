.class final Lcom/balysv/materialmenu/a$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/balysv/materialmenu/a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/balysv/materialmenu/a;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/balysv/materialmenu/a;Lcom/balysv/materialmenu/a$1;)V
    .locals 0

    .line 831
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/a$c;-><init>(Lcom/balysv/materialmenu/a;)V

    return-void
.end method

.method static synthetic a(Lcom/balysv/materialmenu/a$c;I)I
    .locals 0

    .line 831
    iput p1, p0, Lcom/balysv/materialmenu/a$c;->b:I

    return p1
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/balysv/materialmenu/a$c;->b:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 838
    new-instance v12, Lcom/balysv/materialmenu/a;

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    .line 839
    invoke-static {v0}, Lcom/balysv/materialmenu/a;->c(Lcom/balysv/materialmenu/a;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->d(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$d;

    move-result-object v2

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->e(Lcom/balysv/materialmenu/a;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    .line 840
    invoke-static {v0}, Lcom/balysv/materialmenu/a;->f(Lcom/balysv/materialmenu/a;)I

    move-result v5

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->g(Lcom/balysv/materialmenu/a;)I

    move-result v6

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->h(Lcom/balysv/materialmenu/a;)F

    move-result v7

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->i(Lcom/balysv/materialmenu/a;)F

    move-result v8

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->j(Lcom/balysv/materialmenu/a;)F

    move-result v9

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->k(Lcom/balysv/materialmenu/a;)F

    move-result v10

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/balysv/materialmenu/a;-><init>(ILcom/balysv/materialmenu/a$d;JIIFFFFLcom/balysv/materialmenu/a$1;)V

    .line 842
    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->b(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->b(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->l(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    :goto_0
    invoke-virtual {v12, v0}, Lcom/balysv/materialmenu/a;->a(Lcom/balysv/materialmenu/a$b;)V

    .line 843
    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->m(Lcom/balysv/materialmenu/a;)Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/balysv/materialmenu/a;->a(Z)V

    .line 844
    iget-object v0, p0, Lcom/balysv/materialmenu/a$c;->a:Lcom/balysv/materialmenu/a;

    invoke-static {v0}, Lcom/balysv/materialmenu/a;->n(Lcom/balysv/materialmenu/a;)Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/balysv/materialmenu/a;->b(Z)V

    return-object v12
.end method
