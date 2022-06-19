.class public Lcom/a/a/a$a;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lcom/a/a/a$b;
.implements Lcom/a/a/a$c;
.implements Lcom/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Landroid/graphics/drawable/shapes/RectShape;

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/a/a/a$a;->c:Ljava/lang/String;

    .line 167
    const v0, -0x777778

    iput v0, p0, Lcom/a/a/a$a;->d:I

    .line 168
    iput v1, p0, Lcom/a/a/a$a;->a:I

    .line 169
    iput v2, p0, Lcom/a/a/a$a;->e:I

    .line 170
    iput v1, p0, Lcom/a/a/a$a;->f:I

    .line 171
    iput v1, p0, Lcom/a/a/a$a;->g:I

    .line 172
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->i:Landroid/graphics/drawable/shapes/RectShape;

    .line 173
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a$a;->h:Landroid/graphics/Typeface;

    .line 174
    iput v1, p0, Lcom/a/a/a$a;->j:I

    .line 175
    iput-boolean v2, p0, Lcom/a/a/a$a;->k:Z

    .line 176
    iput-boolean v2, p0, Lcom/a/a/a$a;->l:Z

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a$1;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/a/a/a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a$a;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/a/a/a$a;->i:Landroid/graphics/drawable/shapes/RectShape;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/a$a;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/a$a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/a/a/a$a;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/a$a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/a/a/a$a;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/a/a/a$a;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/a/a/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/a/a/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/a$a;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/a$a;->d:I

    return v0
.end method

.method static synthetic g(Lcom/a/a/a$a;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/a$a;->j:I

    return v0
.end method

.method static synthetic h(Lcom/a/a/a$a;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/a/a/a$a;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/a/a/a$a;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/a/a/a$a;->h:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic j(Lcom/a/a/a$a;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/a/a/a$a;->e:I

    return v0
.end method


# virtual methods
.method public a()Lcom/a/a/a$c;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a$a;->k:Z

    .line 211
    return-object p0
.end method

.method public a(I)Lcom/a/a/a$c;
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/a/a/a$a;->a:I

    .line 191
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/a/a/a;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/a/a/a$a;->d()Lcom/a/a/a$b;

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a$a;->b(Ljava/lang/String;I)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/a$c;
    .locals 0

    .prologue
    .line 221
    return-object p0
.end method

.method public b(I)Lcom/a/a/a$c;
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/a/a/a$a;->j:I

    .line 206
    return-object p0
.end method

.method public b(Ljava/lang/String;I)Lcom/a/a/a;
    .locals 2

    .prologue
    .line 269
    iput p2, p0, Lcom/a/a/a$a;->d:I

    .line 270
    iput-object p1, p0, Lcom/a/a/a$a;->c:Ljava/lang/String;

    .line 271
    new-instance v0, Lcom/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/a$a;Lcom/a/a/a$1;)V

    return-object v0
.end method

.method public c()Lcom/a/a/a$d;
    .locals 0

    .prologue
    .line 226
    return-object p0
.end method

.method public d()Lcom/a/a/a$b;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->i:Landroid/graphics/drawable/shapes/RectShape;

    .line 238
    return-object p0
.end method
